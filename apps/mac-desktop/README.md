# Xtream Player — Mac/Desktop

Questa è la prima applicazione del nuovo piano multipiattaforma.

## Stato attuale

L'implementazione React desktop si trova ancora nella radice del repository (`src/`, `public/`, `index.html` e configurazioni Vite). Rimarrà lì durante la prima fase per non interrompere build e distribuzione.

## Obiettivo della fase

- congelare l'interfaccia desktop approvata;
- separare servizi, player e archiviazione dalla presentazione;
- rimuovere le dipendenze operative dai prototipi TV/mobile;
- aggiungere test automatici;
- documentare il comportamento condiviso;
- preservare compatibilità con la distribuzione corrente.

Il codice verrà trasferito in questa cartella solo insieme a una configurazione di workspace verificata, evitando spostamenti che possano rompere l'app.
