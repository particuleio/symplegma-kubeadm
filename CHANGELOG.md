# Changelog

## v1.37.0-rel.0

### Changes

- Update Kubernetes defaults to 1.37.0 and migrate kubeadm configuration to v1beta4.
- Use native configuration values and name/value extra-argument lists; preserve duplicate arguments.
- Verify join CA hashes and protect tokens and certificates; validate generated kubeadm configuration.
- Update worker API proxy NGINX to 1.31.5-alpine and support node-specific kubelet configuration.
- Remove the Windows node role. Require Ansible core 2.21, Linux and systemd cgroups.
- Replace legacy CI tooling with pinned actions, uv-managed Python 3.14.7 and locked dependencies.
- Add pre-commit YAML/file checks, ansible-lint, actionlint, zizmor.

### Upgrade notes

This is a breaking modernization of the previous release. Review custom variables
and templates before upgrading. Existing Kubernetes clusters must upgrade one
minor version at a time; this role is not a shortcut from the old 1.24 baseline.
Configuration and role tests do not certify a full Ubuntu/Flatcar HA cluster rollout.
