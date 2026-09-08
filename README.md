# symplegma-kubeadm

[![CI](https://github.com/particuleio/symplegma-kubeadm/actions/workflows/ansible.yml/badge.svg)](https://github.com/particuleio/symplegma-kubeadm/actions/workflows/ansible.yml)

Linux role for [Symplegma](https://github.com/particuleio/symplegma).
Requires Ansible core 2.21 or newer. See [CHANGELOG.md](CHANGELOG.md) for versions,
breaking changes and upgrade constraints.

## Development

Install [mise](https://mise.jdx.dev/), then run:

```sh
mise install
just setup
just lint
```

uv installs Python 3.14.7 and the locked dependencies. Without mise/just, use
`uv sync --locked` and `uv run --locked pre-commit run --all-files`.

## Releases

Prepare a reviewed, signed pull request with a changelog entry. Publish its
release tag only after required checks and review pass and the change is merged.
Symplegma's requirements must point to an existing published tag.
