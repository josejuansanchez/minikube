# Scripts necesarios para utilizar Minikube con el driver `kvm2`

**Paso 1.** Ejecuta el script `install_all.sh` como `root`:

```bash
sudo ./install_all.sh
```

Este script instalará [Minikube][1] y [KVM][2].

**Paso 2.** Ejecuta el script `start_minikube_driver_kvm2.sh` con tu usuario:

```bash
start_minikube_driver_kvm2.sh
```

Este script iniciará [Minikube][1] con el driver [`kvm2`][3] y habilitará el addon de `ingress`.

## Referencias

- [Minikube Docker driver][3]

[1]: https://minikube.sigs.k8s.io/docs/
[2]: https://linux-kvm.org
[3]: https://minikube.sigs.k8s.io/docs/drivers/kvm2/