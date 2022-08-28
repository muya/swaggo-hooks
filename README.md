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
      - id: swag-init
```

Arguments to `swag` can be passed as `args`.

The example below shows:

- How to pass the `--exclude` flag to `swag fmt`
- How to run the equivalent of `swag init` with these flags:

```
swag init --parseInternal --requiredByDefault --parseDependency --dir "./cmd/api/" --generalInfo routes.go --output ./cmd/api/docs/
```

```yaml
repos:
  # ... other repos ...
  - repo: https://github.com/muya/pre-commit-swaggo
    rev: "main"
    hooks:
      - id: swag-fmt
        args:
          - --exclude=./a/special/file.go
      - id: swag-init
        args:
          - --parseInternal
          - --requiredByDefault
          - --parseDependency
          - --dir=./cmd/api/
          - --generalInfo=routes.go
          - --output=./cmd/api/docs/
```

## Available Hooks

All of these hooks require [swaggo/swag](https://github.com/swaggo/swag#getting-started) to be installed, and available
in your `$PATH`.

- `swag-fmt` - Runs `swag fmt` on all files in the project.
- `swag-init` - Runs `swag init` on the project. Please
  reference [available CLI flags in the documentation](https://github.com/swaggo/swag#swag-cli).
