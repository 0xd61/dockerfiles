# sciter-rs

Lightweight rust environment with the sciter library.

## Usage

```sh
$ docker run --name sciter-rs -it -e DISPLAY -v $(pwd):/source:Z kaitsh/sciter-rs
```

Mount your local source folder to the container and compile & run code inside.

#### Compiling code

```sh
$ rustc hello-world.rs
$ ./hello-world
> Hello World!
```

#### Environment variables

The `$USER` environment variable can be specified, which is used by `cargo`. The default is `root`.

```sh
$ docker run --rm -it -e USER="John Doe" -v $(pwd):/source:Z kaitsh/sciter-rs
```

