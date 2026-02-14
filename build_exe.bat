@echo off
setlocal enabledelayedexpansion

REM Définir le répertoire de travail
set WORKSPACE=D:\Sidebar\Downloads\wetransfer_ijeery_v5-0-rar_2026-02-06_1238\IJEERY_V5.0\IJEERY_V5.0 (v1.0)

REM Changer vers le répertoire
cd /d "!WORKSPACE!"

REM Vérifier que Python et PyInstaller sont disponibles
echo.
echo ============================================================================
echo   🚀 COMPILATION IJEERY V5.0 - AVEC CORRECTIONS DU STOCK
echo ============================================================================
echo.
echo 📂 Répertoire de travail: !WORKSPACE!
echo.

REM Lancer PyInstaller
echo ⏳ Génération de l'EXE en cours...
echo.

call ".venv\Scripts\python.exe" -m PyInstaller iJeery_V5.0.spec --onedir --noconfirm --distpath dist_final

REM Vérifier le succès
if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================================================
    echo ✅ COMPILATION RÉUSSIE!
    echo ============================================================================
    echo.
    echo 📦 L'EXE a été généré dans: !WORKSPACE!\dist_final\iJeery_V5.0\
    echo.
    echo 🎯 Fichier principal: iJeery_V5.0.exe
    echo.
    echo 🔧 Corrections intégrées :
    echo    - ✅ Stock validation cohérent (page_stock.py ↔ page_pmtFacture.py)
    echo    - ✅ Ventes VALIDEE uniquement dans les calculs
    echo    - ✅ Toutes les formules synchronisées
    echo.
    echo 🚀 Prêt pour le déploiement!
    echo ============================================================================
    echo.
    pause
) else (
    echo.
    echo ============================================================================
    echo ❌ ERREUR LORS DE LA COMPILATION
    echo ============================================================================
    echo.
    echo Erreur: Le code de sortie est !ERRORLEVEL!
    echo.
    pause
    exit /b 1
)
