# Mason bricks 🧱

[Mason](https://pub.dev/packages/mason_cli) reusable bricks for efficient project scaffolding.

## Getting started 🚀

### Adding a brick 🧱️

To add a brick, you have a few options:

```sh
# 🎯 Activate Mason CLI (if not done already):

dart pub global activate mason_cli
```
```sh
# Add a brick from a Git URL:

mason add <BRICK_NAME> --git-url https://github.com/shyamexe/bricks-cli --git-path path/to/<BRICK_NAME>
```
```sh
# Add a brick globally from a Git URL:

mason add -g <BRICK_NAME> --git-url https://github.com/shyamexe/bricks-cli --git-path path/to/<BRICK_NAME>
```
```sh
# For instance, to add the flutter-package brick:

mason add -g flutter-template --git-url https://github.com/shyamexe/bricks --git-path flutter-template
```

## Available Bricks ✨

| name                                       | description                                                                 |
| ------------------------------------------ | --------------------------------------------------------------------------- |
| [`flutter-package`](https://github.com/shyamexe/bricks-cli/tree/main/flutter-template) | Create a new Flutter project with basic structure|
| [`bloc`](https://github.com/shyamexe/bricks-cli/tree/main/bloc) | Generate a new Bloc|
| [`cubit`](https://github.com/shyamexe/bricks-cli/tree/main/cubit) | Generate a new Cubit|
| [`feature-block`](https://github.com/shyamexe/bricks-cli/tree/main/feature-block) | Generate a new module block|


### flutter-template  Brick Installation 

```sh
# Add flutter-template from GitHub
mason add -g flutter-template --git-url https://github.com/shyamexe/bricks --git-path flutter-template

# List all globally installed bricks
mason ls -g

# Generate code using the brick
mason make flutter-template

# Remove the brick (global)
mason remove -g flutter-template

```

### bloc/cubit Installation 

```sh
# Globally add cubit brick from GitHub
mason add -g cubit --git-url https://github.com/shyamexe/bricks --git-path cubit

# Generate a new Cubit
mason make cubit --name counter --style equatable

```
#### To load the brick inside your project:

1 Create mason/mason.yaml in your project root:

```yaml
bricks:
  cubit:
    git:
      url: https://github.com/shyamexe/bricks-cli.git
      path: cubit

```

2 Run the following commands:

```sh
mason get

mason make cubit -o ..\Yoru\output\folder\  --name counter --style equatable
```
