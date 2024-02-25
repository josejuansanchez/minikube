# Scripts necesarios para utilizar Minikube con el driver `docker`

**Paso 1.** Ejecuta el script `install_all.sh` como `root`:

```bash
sudo ./install_all.sh
```

Este script instalará [Minikube][1], [Docker][2] y las dependencias necesarias.

**Paso 2.** Ejecuta el script `start_minikube_driver_docker.sh` con tu usuario:

```bash
start_minikube_driver_docker.sh
```

Este script iniciará [Minikube][1] con el driver [`docker`][3] y habilitará el addon de `ingress`.

## Referencias

- [Minikube Docker driver][3]

[1]: https://minikube.sigs.k8s.io/docs/
[2]: https://www.docker.com/
[3]: https://minikube.sigs.k8s.io/docs/drivers/docker/