# Scripts necesarios para utilizar Minikube con el driver `none`

## Paso 1. Instalación

Ejecuta el script `install_all.sh` **como `root`**:

```bash
sudo ./install_all.sh
```

Este script instalará [Minikube][1], las dependencias necesarias, `kubectl`, `helm` y `bash_completion`.

> [!NOTE]
> Durante la instalación se añadirá su usuario al grupo `docker` para que pueda ejecutar comandos `docker` sin utilizar `sudo`. Para que se apliquen los cambios puede cerrar la shell actual y volver a abrir una nueva, o ejecutar el comando `newgrp docker`.

## Paso 2. Iniciamos Minikube

Ejecuta el script `start_minikube_driver_none.sh` con tu usuario **sin utilizar `sudo`**:

```bash
./start_minikube_driver_none.sh
```

Este script iniciará [Minikube][1] con el driver [`none`][3] y habilitará el addon de `ingress`.

## Paso 3. Configuración del autocompletado

Ejecuta el script `config_bashrc.sh` con tu usuario **sin utilizar `sudo`**:

```bash
./config_bashrc.sh
```

Este script configura el autocompletado de los comandos de `kubectl` y `minikube` en su archivo `~/.bashrc`.

## Referencias

- [Minikube Docker driver][3]

[1]: https://minikube.sigs.k8s.io/docs/
[3]: https://minikube.sigs.k8s.io/docs/drivers/none/