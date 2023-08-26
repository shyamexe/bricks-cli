### bloc Installation 

```sh
# Globally add bloc brick from GitHub
mason add -g bloc --git-url https://github.com/shyamexe/bricks --git-path bloc

# Generate a new bloc
mason make bloc --name counter --style equatable

```
#### To load the brick inside your project:

1 Create mason/mason.yaml in your project root:

```yaml
bricks:
  bloc:
    git:
      url: https://github.com/shyamexe/bricks-cli.git
      path: bloc

```

2 Run the following commands:

```sh
mason get

mason make bloc -o ..\Yoru\output\folder\  --name counter --style equatable
```
