# pre-commit-swaggo

[pre-commit](https://pre-commit.com/) hooks for Go projects using https://github.com/swaggo/swag

## Usage

Add this to your `.pre-commit-config.yaml` file:

```yaml
repos:
  # ... other repos ...
  - repo: https://github.com/muya/pre-commit-swaggo
    rev: "main"
    hooks:
      - id: swag-fmt
```

Arguments to `swag` can be passed as `args`.

For example, to pass the `--exclude` flag to `swag fmt`:

```yaml
repos:
  # ... other repos ...
  - repo: https://github.com/muya/pre-commit-swaggo
    rev: "main"
    hooks:
      - id: swag-fmt
        args:
          - --exclude ./a/special/file.go
```

## Available Hooks

All of these hooks require [swaggo/swag](https://github.com/swaggo/swag#getting-started) to be installed, and available
in your `$PATH`.

- `swag-fmt` - Runs `swag fmt` on all files in the project.
