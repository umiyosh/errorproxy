# errorproxy

This container is an nginx container that returns 502 responses according to the specified error rate. This container is for recovery test.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Support](#support)
- [Contributing](#contributing)

## Installation

You can test this container with manifests of examples.

```sh
make deploy-init
-> This creates deployments and services on your k8s cluster.
```

or You can use [modd](https://github.com/cortesi/modd) for test and build image with file change events driven.

``` sh
modd
-> This builds a container image and creates deployments and services on your k8s cluster.
```

## Usage

See [exammples](./example_manifests/).

## Support

Please [open an issue](https://github.com/fraction/readme-boilerplate/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/fraction/readme-boilerplate/compare/).
