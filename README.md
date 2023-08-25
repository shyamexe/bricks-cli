# Mason bricks 🧱

[Mason](https://pub.dev/packages/mason_cli) reusable bricks.

## Getting started 🚀

### Adding a brick 🧱️

To add a brick, use any of the following commands:

```sh
# 🎯 Activate from https://pub.dev
dart pub global activate mason_cli

# add from git url
mason add <BRICK_NAME> --git-url https://github.com/shyamexe/bricks-cli --git-path path/to/<BRICK_NAME>

# add from git url (global)
mason add -g <BRICK_NAME> --git-url https://github.com/shyamexe/bricks-cli --git-path path/to/<BRICK_NAME>

# example to add flutter_package brick
mason add -g flutter-package --git-url https://github.com/shyamexe/bricks-cli --git-path flutter-template/
```

## Bricks ✨

| name                                       | description                                                                 |
| ------------------------------------------ | --------------------------------------------------------------------------- |
| [`dart-package`](https://github.com/shyamexe/bricks-cli/tree/main/flutter-template) | Create a new Flutter project with basic structure|


### flutter-template installation 

```sh
# add flutter-template from github
mason add -g flutter-template --git-url https://github.com/shyamexe/bricks --git-path flutter-template

# list all globally installed bricks
mason ls -g

# ⚡We can generate code via
mason make flutter-template

# remove brick (global)
mason remove -g flutter-template


```



