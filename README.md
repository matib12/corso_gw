# corso_gw

## Prerequisiti

Si richiede l'installazione di docker engine: [guida ufficiale](https://docs.docker.com/engine/install/)

## Setup

### Installazione di questa repository

Per scaricare la presente repository:
```shell
git clone --branch docker https://github.com/matib12/corso_gw.git 
chmod a+rw corso_gw
cd corso_gw
```
### Installazione dell'immagine docker

Per scaricare l'immagine docker `nutc22/gw-notebook`:
>  specificare la porta `<PORT>` prima di eseguire il comando. La porta su cui esporre jupyterlab è la `8888`. Tuttavia potrebbe essere impegnata, pertanto si consiglia di cambiarla con un diverso valore, preferibilmente maggiore di 8888.

```shell
docker pull nutc22/gw-notebook:0.4
docker run -it --rm --user $(id -u):$(id -g) --group-add users -v ${PWD}:/home/jovyan/work/ -p <PORT>:8888 -e GEN_CERT=yes nutc22/gw-notebook:0.4
```

> l'immagine è sviluppata per due tipi di architettura: `arm64` e `amd64`. Nel caso in cui non l'architettura richiesta non sia tra queste, si può tentare di ricostruire l'immagine come indicato nella sezione **Modificare o clonare l'immagine**
### Accesso al jupyterlab

Visitare il sito `https://<IP-ADDR>:<PORT>` e fidarsi del certificato auto firmato.
> il valore `<IP-ADDR>` è l'indirizzo ip del server. Se si lancia il progetto dalla propria macchina, il valore da sostituire è `127.0.0.1`.

Inserire il token di sicurezza indicato nella shell per effettuare l'accesso

Una volta dentro al jupyterlab è possibile trovare i file di questa repository all'interno della cartella `work`

### Terminare il jupyterlab

Per terminare il processo digitare `^C`


## Modificare o clonare l'immagine

se si desidera ri-costruire l'immagine docker:

```shell
docker build . -t gw-notebook:<tag>
```

a questo punto si può creare il container a partire dalla nuova immagine:
```shell
docker run -it --user $(id -u):$(id -g) --group-add users -v ${PWD}:/home/jovyan/work/ -p <PORT>:8888 -e GEN_CERT=yes gw-notebook:<tag>
```
