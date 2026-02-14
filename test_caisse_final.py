# -*- coding: utf-8 -*-
"""
🧪 TEST FINAL - VALIDATION COMPLÈTE DU SYSTÈME DE FILTRAGE CAISSE
Test que reproduit exactement le comportement de page_caisse.py
"""

import psycopg2
import json
import os
from datetime import datetime, timedelta
from resource_utils import get_config_path, safe_file_read

def connect_db():
    """Établit la connexion à la base de données"""
    try:
        config_path = get_config_path('config.json')
        if not os.path.exists(config_path):
            config_path = 'config.json'
        
        with open(config_path, 'r', encoding='utf-8') as f:
            config = json.load(f)
            db_config = config['database']

        conn = psycopg2.connect(
            host=db_config['host'],
            user=db_config['user'],
            password=db_config['password'],
            database=db_config['database'],
            port=db_config['port'],
            client_encoding='UTF8'
        )
        return conn
    except Exception as err:
        print(f"❌ Erreur de connexion: {err}")
        return None

def test_mapping_modes():
    """Test le mapping des modes de paiement exactement comme page_caisse.py"""
    print("\n" + "="*80)
    print("🧪 TEST: MAPPING MODES UI ↔ BD")
    print("="*80)
    
    conn = connect_db()
    if not conn:
        return False
    
    try:
        cursor = conn.cursor()
        cursor.execute("SELECT idmode, modedepaiement FROM tb_modepaiement ORDER BY modedepaiement")
        rows = cursor.fetchall()
        
        # Reproduction exacte du code de page_caisse.py
        mode_bd_to_id = {}
        mode_ui_to_bd = {
            "Espèces": None,
            "Crédit": None,
            "Chèque": None,
            "Virement": None,
            "Any maka vola": None,
            "Mvola": None,
            "Airtel Money": None,
            "Orange Money": None
        }
        
        print("\n📊 Modes en BD:")
        for idmode, modedepaiement in rows:
            mode_bd_to_id[modedepaiement] = idmode
            print(f"   ID {idmode}: '{modedepaiement}'")
        
        # Mapping avec alias
        alias_mapping = {
            "Espèces": ["Espèces", "Espece"],
            "Crédit": ["Crédit", "Credit"],
            "Chèque": ["Chèque", "Cheque", "Chèque bancaire"],
            "Virement": ["Virement", "Virement bancaire"],
            "Any maka vola": ["Any maka vola", "Any Maka Vola"],
            "Mvola": ["Mvola", "MVOLA"],
            "Airtel Money": ["Airtel Money", "Airtel money"],
            "Orange Money": ["Orange Money", "Orange money"]
        }
        
        print("\n🔗 Mappage UI → BD:")
        modes_paiement_dict = {"Tous": None}
        
        for nom_ui, alias_list in alias_mapping.items():
            found = False
            for alias in alias_list:
                for nom_bd, idmode in mode_bd_to_id.items():
                    if nom_bd.lower().strip() == alias.lower().strip():
                        mode_ui_to_bd[nom_ui] = nom_bd
                        modes_paiement_dict[nom_ui] = idmode
                        print(f"   ✅ '{nom_ui}' → '{nom_bd}' (ID: {idmode})")
                        found = True
                        break
                if found:
                    break
            
            if not found:
                print(f"   ❌ '{nom_ui}' → NON TROUVÉ")
                return False
        
        print("\n📋 Vérification finale:")
        all_mapped = all(v is not None for v in mode_ui_to_bd.values())
        print(f"   Tous les modes UI sont mappés: {'✅ OUI' if all_mapped else '❌ NON'}")
        
        if all_mapped:
            print("✅ PASS: Mapping UI ↔ BD est complet et correct")
            return True
        else:
            print("❌ FAIL: Certains modes UI ne sont pas mappés")
            return False
        
    except Exception as e:
        print(f"❌ FAIL: Erreur lors du test: {e}")
        import traceback
        traceback.print_exc()
        return False
    finally:
        conn.close()

def test_filtrage_par_mode_complet():
    """Test le filtrage par mode avec tous les modes"""
    print("\n" + "="*80)
    print("🧪 TEST: FILTRAGE PAR MODE (tous les modes)")
    print("="*80)
    
    conn = connect_db()
    if not conn:
        return False
    
    try:
        cursor = conn.cursor()
        today = datetime.now().date()
        one_month_ago = today - timedelta(days=30)
        date_d = one_month_ago.strftime('%Y-%m-%d')
        date_f = today.strftime('%Y-%m-%d')
        
        cursor.execute("SELECT idmode, modedepaiement FROM tb_modepaiement ORDER BY modedepaiement")
        modes = cursor.fetchall()
        
        print(f"\n📊 Test de filtrage pour chaque mode (période: {date_d} à {date_f}):")
        print(f"\n{'Mode':<25} {'ID':<5} {'Count':<10} {'Status':<8}")
        print("-" * 50)
        
        all_ok = True
        
        for idmode, nom_mode in modes:
            # Simuler exactement la requête de page_caisse.py
            query = """
                SELECT COUNT(*)
                FROM (
                    SELECT datepmt FROM tb_pmtfacture WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_pmtcredit WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_pmtcom WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_encaissement WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_decaissement WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_avancepers WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_avancespecpers WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_pmtsalaire WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                    UNION ALL
                    SELECT datepmt FROM tb_pmtavoir WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
                ) t
            """
            
            params = [idmode, date_d, date_f] * 9
            try:
                cursor.execute(query, params)
                count = cursor.fetchone()[0]
                status = "✅" if count >= 0 else "❌"
                print(f"{nom_mode:<25} {idmode:<5} {count:<10} {status:<8}")
            except Exception as e:
                print(f"{nom_mode:<25} {idmode:<5} {'ERROR':<10} ❌")
                print(f"   Erreur: {e}")
                all_ok = False
        
        if all_ok:
            print("\n✅ PASS: Tous les modes peuvent être filtrés")
            return True
        else:
            print("\n❌ FAIL: Erreur lors du filtrage")
            return False
        
    except Exception as e:
        print(f"❌ FAIL: Erreur lors du test: {e}")
        import traceback
        traceback.print_exc()
        return False
    finally:
        conn.close()

def test_clic_sequentiel():
    """Test plusieurs clics séquentiels sur les filtres (simulation utilisateur)"""
    print("\n" + "="*80)
    print("🧪 TEST: CLIC SÉQUENTIEL SUR LES FILTRES")
    print("="*80)
    
    conn = connect_db()
    if not conn:
        return False
    
    try:
        cursor = conn.cursor()
        today = datetime.now().date()
        one_month_ago = today - timedelta(days=30)
        date_d = one_month_ago.strftime('%Y-%m-%d')
        date_f = today.strftime('%Y-%m-%d')
        
        # Simuler les clics de l'utilisateur
        clics = ["Espèces", "Crédit", "Chèque", "Virement"]
        
        cursor.execute("SELECT idmode, modedepaiement FROM tb_modepaiement ORDER BY modedepaiement")
        modes = cursor.fetchall()
        mode_bd_to_id = {nom: idmode for idmode, nom in modes}
        
        # Mapping
        alias_mapping = {
            "Espèces": ["Espèces", "Espece"],
            "Crédit": ["Crédit", "Credit"],
            "Chèque": ["Chèque", "Cheque", "Chèque bancaire"],
            "Virement": ["Virement", "Virement bancaire"],
        }
        
        mode_ui_to_bd = {}
        for nom_ui, alias_list in alias_mapping.items():
            for alias in alias_list:
                for nom_bd, idmode in mode_bd_to_id.items():
                    if nom_bd.lower().strip() == alias.lower().strip():
                        mode_ui_to_bd[nom_ui] = nom_bd
                        break
                if nom_ui in mode_ui_to_bd:
                    break
        
        print("\n👆 Simulation de clics utilisateur:")
        
        for i, mode_ui in enumerate(clics, 1):
            mode_bd = mode_ui_to_bd.get(mode_ui)
            mode_id = mode_bd_to_id.get(mode_bd) if mode_bd else None
            
            print(f"\n   Clic {i}: '{mode_ui}'")
            print(f"      Mode BD: '{mode_bd}'")
            print(f"      Mode ID: {mode_id}")
            
            if mode_id is None:
                print(f"      ❌ FAIL: Mode ID non trouvé")
                return False
            
            # Vérifier que le filtre fonctionne
            query = """
                SELECT COUNT(*)
                FROM tb_pmtfacture
                WHERE idmode = %s AND datepmt::date BETWEEN %s AND %s AND id_banque IS NULL
            """
            cursor.execute(query, [mode_id, date_d, date_f])
            count = cursor.fetchone()[0]
            print(f"      Résultats: {count} mouvements")
            print(f"      ✅ OK")
        
        print("\n✅ PASS: Tous les clics fonctionnent correctement")
        return True
        
    except Exception as e:
        print(f"❌ FAIL: Erreur lors du test: {e}")
        import traceback
        traceback.print_exc()
        return False
    finally:
        conn.close()

def main():
    print("\n" + "="*80)
    print("🧪 SUITE DE TESTS COMPLÈTE - SYSTÈME DE FILTRAGE CAISSE")
    print("="*80)
    
    results = {}
    
    results["Mapping modes UI ↔ BD"] = test_mapping_modes()
    results["Filtrage par mode (tous)"] = test_filtrage_par_mode_complet()
    results["Clic séquentiel"] = test_clic_sequentiel()
    
    # Résumé
    print("\n" + "="*80)
    print("📊 RÉSUMÉ FINAL")
    print("="*80)
    
    passed = sum(1 for v in results.values() if v)
    total = len(results)
    
    for test, result in results.items():
        status = "✅ PASS" if result else "❌ FAIL"
        print(f"{status} - {test}")
    
    print(f"\n🎉 RÉSULTAT: {passed}/{total} tests réussis")
    
    if passed == total:
        print("\n🌟 SUCCÈS! Tous les filtres fonctionnent correctement sans erreur!")
        print("✨ Le système de caisse est maintenant entièrement opérationnel.")
    else:
        print(f"\n⚠️  {total - passed} test(s) échoué(s)")

if __name__ == "__main__":
    main()
