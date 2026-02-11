#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Template Ficti de Facture PDF - TESTING ONLY
Fichier temporaire pour développer et tester le modèle de facture
avant intégration dans page_venteParMsin.py
"""

from reportlab.lib.pagesizes import A5
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.units import mm
from reportlab.pdfgen import canvas
from reportlab.platypus import Table, TableStyle, Paragraph
from reportlab.lib.enums import TA_CENTER
from num2words import num2words
import tempfile
import os
from datetime import datetime


def formater_nombre_pdf(nombre):
    """Formate un nombre avec séparateurs de milliers."""
    if isinstance(nombre, str):
        return nombre
    if nombre is None:
        return "0"
    try:
        # Arrondir à 2 décimales
        nombre_arrondi = round(float(nombre), 2)
        if nombre_arrondi == int(nombre_arrondi):
            return f"{int(nombre_arrondi):,d}".replace(",", " ")
        else:
            return f"{nombre_arrondi:,.2f}".replace(",", " ")
    except (ValueError, TypeError):
        return "0"


def nombre_en_lettres_fr(nombre):
    """Convertit un nombre en lettres en français."""
    try:
        nombre_int = int(nombre)
        return num2words(nombre_int, lang='fr')
    except:
        return "zéro"


def generer_facture_test(output_filename='facture_test.pdf'):
    """
    Génère une facture PDF A5 SARAH-GROS avec canvas.Canvas pour un contrôle précis du layout.
    """
    
    # ✅ DONNÉES FICTIVES
    data = {
        'societe': {
            'nomsociete': 'SARAH-GROS',
            'adresse': 'Rue de Tana, Antanambao',
            'tel': '032 51 036 26 / 034 78 977 46',
            'nif': '4000323979',
            'stat': '51367322006000061'
        },
        'client': {
            'nomcli': 'SG LA BALEINE'
        },
        'vente': {
            'refvente': '006906',
            'date': '21 janvier 2026 16:39'
        },
        'utilisateur': 'SYLVANETTE',
        'verset': 'Ankino amin\'ny Jehovah ny asanao dia ho lavorary izay kasainao. Ohabolana 16:3'
    }
    
    # ✅ DÉTAILS DES ARTICLES
    details = [
        {
            'qte': 2,
            'unite': 'Piece',
            'designation': 'Boisson en piece gm (150cl)',
            'prixunit': 4800,
            'montant': 9600
        },
        {
            'qte': 2,
            'unite': 'Piece',
            'designation': 'Boisson en piece moyen (50cl)',
            'prixunit': 2300,
            'montant': 4600
        }
    ]
    
    # ✅ CRÉATION DU PDF AVEC CANVAS
    c = canvas.Canvas(output_filename, pagesize=A5)
    width, height = A5  # Dimensions A5 en points
    
    # ✅ 1. CADRE DU VERSET (Haut de page avec bordure)
    c.setLineWidth(1)
    c.rect(10*mm, height - 15*mm, width - 20*mm, 8*mm)
    c.setFont("Helvetica-Bold", 9)
    verset = data['verset']
    c.drawCentredString(width/2, height - 12.5*mm, verset)
    
    # ✅ 2. EN-TÊTE DEUX COLONNES
    styles = getSampleStyleSheet()
    style_p = ParagraphStyle('style_p', fontSize=9, leading=11, parent=styles['Normal'])
    
    societe = data['societe']
    gauche_text = f"<b>{societe['nomsociete']}</b><br/>{societe['adresse']}<br/>TEL: {societe['tel']}<br/>NIF: {societe['nif']} | STAT: {societe['stat']}"
    droite_text = f"<b>Facture N°: {data['vente']['refvente']}</b><br/>{data['vente']['date']}<br/><b>CLIENT: {data['client']['nomcli']}</b><br/><font size='8'>Op: {data['utilisateur']}</font>"
    
    gauche = Paragraph(gauche_text, style_p)
    droite = Paragraph(droite_text, style_p)
    
    header_table = Table([[gauche, droite]], colWidths=[64*mm, 64*mm])
    header_table.setStyle(TableStyle([
        ('GRID', (0, 0), (-1, -1), 1, colors.black),
        ('VALIGN', (0, 0), (-1, -1), 'TOP'),
        ('LEFTPADDING', (0, 0), (-1, -1), 8),
        ('TOPPADDING', (0, 0), (-1, -1), 5),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 5),
    ]))
    
    # Dessiner le tableau d'en-tête
    header_table.wrapOn(c, width, height)
    header_table.drawOn(c, 10*mm, height - 42*mm)
    
    # ✅ 3. TABLEAU DES ARTICLES
    table_top = height - 52*mm
    table_bottom = 65*mm
    frame_height = table_top - table_bottom
    
    # Calcul nombre de lignes pour remplir le cadre
    row_height = 5.5*mm  # Réduit de 6.5 à 5.5 pour plus de hauteur
    max_rows = int(frame_height / row_height)
    
    # Préparer les données du tableau avec en-tête et articles
    table_data = [['QTE', 'UNITE', 'DESIGNATION', 'PU TTC', 'MONTANT']]
    
    total_montant = 0
    num_articles = 0
    for detail in details:
        montant = detail['montant']
        total_montant += montant
        num_articles += 1
        table_data.append([
            str(detail['qte']),
            detail['unite'],
            detail['designation'],
            formater_nombre_pdf(detail['prixunit']),
            formater_nombre_pdf(montant)
        ])
    
    # Ajouter des lignes vides pour remplir jusqu'aux totaux
    # (max_rows - 1 for header - num_articles - 2 for totaux Ar et Fmg)
    montant_fmg = int(total_montant * 5)
    empty_rows_needed = max_rows - 1 - num_articles - 2
    for i in range(empty_rows_needed):
        table_data.append(['', '', '', '', ''])
    
    # Ajouter les deux lignes des totaux en bas du cadre
    table_data.append(['', '', 'TOTAL Ar:', formater_nombre_pdf(total_montant), ''])
    table_data.append(['', '', 'Fmg:', formater_nombre_pdf(montant_fmg), ''])
    
    col_widths = [12*mm, 15*mm, 62*mm, 19.5*mm, 19.5*mm]
    
    # Dessiner le rectangle extérieur du tableau
    c.setLineWidth(1)
    c.rect(10*mm, table_bottom, width - 20*mm, frame_height)
    
    # Dessiner les lignes verticales de séparation jusqu'en bas
    x_pos = 10*mm
    for w in col_widths[:-1]:
        x_pos += w
        c.line(x_pos, table_top, x_pos, table_bottom)
    
    # Hauteur pour chaque ligne (en-tête + articles + totaux)
    row_height = 6.5*mm
    total_height = len(table_data) * row_height
    
    # Calculer la hauteur réelle de chaque ligne pour remplir exactement le cadre
    actual_row_height = frame_height / len(table_data)
    row_heights = [actual_row_height] * len(table_data)
    
    # Créer et afficher le tableau - positionné au top du cadre
    articles_table = Table(table_data, colWidths=col_widths, rowHeights=row_heights)
    articles_table.setStyle(TableStyle([
        ('BACKGROUND', (0, 0), (-1, 0), colors.lightgrey),
        ('BACKGROUND', (0, -2), (-1, -1), colors.lightgrey),  # Fond gris pour les 2 lignes de totaux
        ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
        ('FONTNAME', (0, -2), (-1, -1), 'Helvetica-Bold'),
        ('FONTSIZE', (0, 0), (-1, 0), 10),
        ('FONTSIZE', (0, 1), (-1, -3), 8),  # Articles en taille 8
        ('FONTSIZE', (0, -2), (-1, -1), 9),  # Totaux en taille 9
        ('LINEBELOW', (0, 0), (-1, 0), 1, colors.black),  # Ligne sous en-tête
        ('LINEABOVE', (0, -2), (-1, -2), 1, colors.black),  # Ligne avant totaux
        ('ALIGN', (3, 0), (-1, -1), 'RIGHT'),
        ('ALIGN', (0, 0), (2, 0), 'LEFT'),
        ('ALIGN', (2, -2), (2, -1), 'RIGHT'),
        ('VALIGN', (0, 0), (-1, -1), 'MIDDLE'),
        ('LEFTPADDING', (0, 0), (-1, -1), 1),
        ('RIGHTPADDING', (3, 0), (-1, -1), 1),
        ('TOPPADDING', (0, 0), (-1, -1), 0),
        ('BOTTOMPADDING', (0, 0), (-1, -1), 0),
    ]))
    
    # Dessiner le tableau en haut du cadre, justement calculé pour tenir dans la hauteur
    articles_table.wrapOn(c, width, height)
    # Positioner pour que le tableau remplisse exactement le cadre de table_top à table_bottom
    actual_total_height = len(table_data) * actual_row_height
    articles_table.drawOn(c, 10*mm, table_top - actual_total_height)
    
    # ✅ 4. TEXTE EN LETTRES (Après le cadre des articles)
    montant_lettres = nombre_en_lettres_fr(int(total_montant)).upper()
    text_y = table_bottom - 18*mm
    c.setFont("Helvetica-Bold", 10)
    c.drawCentredString(width/2, text_y, f"ARRETE A LA SOMME DE {montant_lettres} ARIARY")
    
    # ✅ 5. MENTION LÉGALE
    c.setFont("Helvetica-Oblique", 8)
    c.drawCentredString(width/2, text_y - 5*mm, "Nous déclinons la responsabilité des marchandises non livrées au-delà de 5 jours")
    
    # ✅ 6. SIGNATURES
    sig_y = 15*mm
    c.setFont("Helvetica-Bold", 10)
    c.drawString(15*mm, sig_y, "Le Client")
    c.drawCentredString(width/2, sig_y, "Le Caissier")
    c.drawString(width - 35*mm, sig_y, "Le Magasinier")
    
    # ✅ SAUVEGARDER LE PDF
    try:
        c.save()
        print(f"✅ PDF généré avec succès: {output_filename}")
        return True
    except Exception as e:
        print(f"❌ Erreur lors de la génération du PDF: {e}")
        import traceback
        traceback.print_exc()
        return False


if __name__ == '__main__':
    # Générer la facture de test
    success = generer_facture_test('facture_test.pdf')
    
    if success:
        print("\n📄 Facture PDF créée: facture_test.pdf")
        print("\n💡 INSTRUCTIONS POUR TESTER:")
        print("   1. Ouvrez facture_test.pdf pour vérifier le layout")
        print("   2. Modifiez les données fictives ci-dessus")
        print("   3. Relancez: python template_facture_test.py")
        print("   4. Une fois satisfait, intégrez le code à page_venteParMsin.py")
