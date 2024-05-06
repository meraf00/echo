# Linters

To setup up linter for flutter project add flutter_lints package to dev_dependencies in pubspec.yaml file.

```bash
flutter pub add dev:flutter_lints
```

Add rules to [analysis_options.yaml](analysis_options.yaml) file.

```yaml
rules:
  prefer_single_quotes: true
  prefer_relative_imports: true
  directives_ordering: true
```

For more rules visit [here](https://dart.dev/tools/linter-rules#rules)

Run the linter.

```bash
flutter analyze
```
