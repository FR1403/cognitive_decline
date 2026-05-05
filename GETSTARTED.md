## How to run the project

- Attiva il venv `cognitiveDecline`

```sh
source cognitiveDecline/bin/activate
```

- Se vuoi disattivare il venv esegui
```sh
deactivate cognitiveDecline
```

- Se vuoi runnare i singoli test clingo esegui

```sh
clingo nome_file.lp
```

- Se vuoi runnare tutti i test clingo esegui dalla cartella `HealtXAI`

```sh
python run_test_clingo.py nome_cartella
```

- Se vuoi creare il db come immagine docker, esegui il segunte comando dalla root

```sh
docker compose up -d --build
```