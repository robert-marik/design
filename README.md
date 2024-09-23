# Aplikovaná matematika

Materiály pro aplikovanou matematitku v předmětu Geometrie a aplikovaná matematika pro designéry.

Instalace vlastniho prostredi a zavislosti
```
mamba create -n design
mamba activate design
mamba install --file requirements.txt
pip install sphinx_multitoc_numbering
```

Preklad a upload na server
```
make
make upload
```

Spousti se v podstate nasledujici prikazy
```
sphinx-build -Ea ./ _build/html -b html
ghp-import -n -o -p -f _build/html
```
