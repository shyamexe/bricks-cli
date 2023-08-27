### feature block Installation 

```sh
# Globally add feature block brick from GitHub
mason add -g feature-block --git-url https://github.com/shyamexe/bricks --git-path feature-block

# Generate a new feature block
mason make feature-block --name counter --style equatable

```
#### To load the brick inside your project:

1 Create mason/mason.yaml in your project root:

```yaml
bricks:
  feature-block:
    git:
      url: https://github.com/shyamexe/bricks-cli.git
      path: feature-block

```

2 Run the following commands:

```sh
mason get

mason make feature-block -o ..\Yoru\output\folder\
```
