# PHP Project Template for Substance

This is a template for the [Substance](https://github.com/turbulent/substance)
development tool. It generates a full local development environment with
containerized nginx, PHP-FPM, MySQL, and Redis servers.

## Prerequisites

You need to have a valid Substance installation on your workstation.

## Usage

To generate a new project based on this template using Substance:

```
$ mkdir my-new-project
$ cd my-new-project
$ substance hatch php-project
```

Then follow the wizard, which will ask for a series of values like project
name, author name, PHP namespace, etc.

After hatching is complete, take a look at the `README.md` generated in the
project directory for further instructions.

## License

All work found under this repository is licensed under the [Apache
License 2.0](LICENSE).

