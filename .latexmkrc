# Utiliser XeLaTeX
$dvi_mode = 0;
$postscript_mode = 0;
$pdf_mode = 5;

# Chercher les fichiers au bon endroit
ensure_path('TEXINPUTS', './/');

# Exécuter main.tex par défaut
@default_files = ('main.tex');

