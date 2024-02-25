# Scripts necesarios para utilizar Minikube con el driver `docker`

**Paso 1.** Ejecuta el script `install_all.sh` como `root`:

```bash
sudo ./install_all.sh
```

Este script instalará Minikube, Docker y las dependencias necesarias.

**Paso 2.** Ejecuta el script `start_minikube_driver_docker.sh` con tu usuario:

```bash
start_minikube_driver_docker.sh
```

Este script iniciará Minikube con el driver `docker` y habilitará el addon de `ingress`.