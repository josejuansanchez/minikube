# Scripts necesarios para utilizar Minikube con el driver `none`

**Paso 1.** Ejecuta el script `install_all.sh` como `root`:

```bash
sudo ./install_all.sh
```

Este script instalará [Minikube][1] y las dependencias necesarias.

**Paso 2.** Ejecuta el script `start_minikube_driver_none.sh` con tu usuario:

```bash
start_minikube_driver_none.sh
```

Este script iniciará [Minikube][1] con el driver [`none`][3] y habilitará el addon de `ingress`.

## Referencias

- [Minikube Docker driver][3]

[1]: https://minikube.sigs.k8s.io/docs/
[3]: https://minikube.sigs.k8s.io/docs/drivers/none/