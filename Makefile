VENV    = .venv
PYTHON  = $(VENV)/bin/python
NB      = VaR_Portefeuille_Suisse.ipynb

all: run

# Crée l'environnement virtuel et installe les dépendances (une seule fois)
$(VENV): requirements.txt
	python3 -m venv $(VENV)
	$(PYTHON) -m pip install -q --upgrade pip
	$(PYTHON) -m pip install -q -r requirements.txt
	touch $(VENV)

install: $(VENV)

# Ouvre le notebook dans Jupyter (navigateur)
run: $(VENV)
	$(PYTHON) -m jupyter notebook $(NB)

# Exécute tout le notebook et régénère la page HTML
html: $(VENV)
	$(PYTHON) -m jupyter nbconvert --to notebook --execute --inplace $(NB)
	$(PYTHON) -m jupyter nbconvert --to html $(NB)

clean:
	rm -rf $(VENV) .ipynb_checkpoints

.PHONY: all install run html clean
