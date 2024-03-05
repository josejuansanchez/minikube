# Scripts necesarios para utilizar Minikube con el driver `docker`

## Paso 1. Instalación

Ejecuta el script `install_all.sh` **como `root`**:

```bash
sudo ./install_all.sh
```

Este script instalará [Minikube][1], [Docker][2], las dependencias necesarias, `kubectl`, `helm` y `bash_completion`.

## Paso 2.

> [!NOTE]
> Durante la instalación se añadirá su usuario al grupo `docker` para que pueda ejecutar comandos `docker` sin utilizar `sudo`. Para que se apliquen los cambios puede cerrar la shell actual y volver a abrir una nueva, o ejecutar el comando `newgrp docker`.

## Paso 3. Iniciamos Minikube

Ejecuta el script `start_minikube_driver_docker.sh` con tu usuario **sin utilizar `sudo`**:

```bash
./start_minikube_driver_docker.sh
```

Este script iniciará [Minikube][1] con el driver [`docker`][3] y habilitará el addon de `ingress`.

## Referencias

- [Minikube Docker driver][3]

[1]: https://minikube.sigs.k8s.io/docs/
[2]: https://www.docker.com/
[3]: https://minikube.sigs.k8s.io/docs/drivers/docker/
