### Cubit Installation 

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


## Output 📦

```sh
├── counter_cubit.dart
└── counter_state.dart
```

[1]: https://dart.dev
[2]: https://github.com/felangel/bloc
