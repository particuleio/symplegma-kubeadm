set shell := ["mise", "exec", "--", "bash", "-euo", "pipefail", "-c"]

default:
    @just --list

setup:
    uv sync --locked
    uv run --locked pre-commit install

lint:
    uv run --locked pre-commit run --all-files --show-diff-on-failure
