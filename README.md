# corso_gw

## Prerequisiti

Si richiede l'installazione di conda/anacoda: [guida ufficiale](https://conda.io/projects/conda/en/latest/user-guide/install/index.html)

## Setup

### Installazione di questa repository

Per scaricare la presente repository:
```shell
git clone --branch phd https://github.com/matib12/corso_gw.git 
chmod a+rw corso_gw
cd corso_gw
```
### Creazione dell'ambiente virtuale conda

Per creare l'ambiente virtuale conda  `corsonde_phd`:
```shell
conda env create -f corsonde_env.yml
```

per attivare l'ambiente:
```shell
conda activate corsonde_phd
```

### Accesso al jupyter notebook

Per accedere al jupyter bisogna attivare l'ambiente corsonde_phd e lanciare in terminale jupyter:
```shell
jupyter notebook
```

Quando jupyter si accende apre automaticamente il web browser alla pagina giusta. Se l'apertura non dovesse essere automatica il link di collgamento si trova nel terminale dove jupyter è stato lanciato.

Una volta dentro al jupyterlab è possibile trovare i file di questa repository.

### Terminare il jupyterlab

Per terminare il processo digitare `^C`


