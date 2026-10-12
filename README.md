# Value at Risk (VaR) d'un portefeuille d'actions brésiliennes

Un notebook simple qui calcule la VaR à 1 jour et à 95 % d'un portefeuille de 7 actions de la bourse brésilienne (B3), entre août 2019 et août 2021.

## Contenu du notebook

1. Paramètres du portefeuille (actions et poids)
2. Téléchargement des cours avec `yfinance` (copie locale dans `data/prices.csv`)
3. Rendements quotidiens du portefeuille
4. VaR historique et VaR paramétrique (loi normale)
5. Vérification : part des jours où la perte dépasse la VaR
6. Conclusion

## Lancer le notebook

Prérequis : Python 3 et `make`.

```bash
git clone git@github.com:uxornova/notebook.git
cd notebook
make          # installe les dépendances (la 1re fois) puis ouvre le notebook
```

Autres commandes :
- `make html` : exécute tout le notebook et régénère `VaR_Portfolio_B3_Analysis.html`
- `make clean` : supprime l'environnement virtuel

Dans VS Code : lancer `make install`, ouvrir le notebook, puis choisir le noyau `.venv`.

## Outils

Python, pandas, NumPy, SciPy, Matplotlib, yfinance.

*Projet pédagogique - ne constitue pas un conseil en investissement.*
