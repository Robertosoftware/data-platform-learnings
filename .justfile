venv:
  python -m venv .venv
  source .venv/bin/activate

precommit:
  pre-commit run --all-files
