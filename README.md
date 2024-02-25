# minikube

Este repositorio incluye los scripts necesarios para realizar la instalación de [minikube][1] con diferentes drivers sobre los sistemas [Debian][2] y [Ubuntu][3].

Dependiendo del driver utilizado, [minikube][1] puede ser desplegado en:

- Máquina virtual
- Contenedor
- Bare-metal.

En este repositorio puede encontrar los scripts para deplegar [minikube][1] utilizando los siguientes drivers:

- [KVM2](./scripts/driver_kvm2/) - VM
- [VirtualBox](./scripts/driver_virtualbox/) - VM
- [Docker](./scripts/driver_docker/) - contenedor.
- [None](./scripts/driver_none/) - bare-metal

## Referencias

- [Minikube drivers](https://minikube.sigs.k8s.io/docs/drivers/)

[1]: https://minikube.sigs.k8s.io
[2]: https://www.debian.org/index.es.html
[3]: https://ubuntu.com/