# dev-zig-lang-with-vim-at-docker

Dev [Zig](https://ziglang.org) with vim at docker.


## Getting started

Build image and Run docker

```bash
docker build -t dev-zig-vim .
docker run -it --rm --name dev-zig-vim-01 dev-zig-vim /bin/bash
# or if want to share local file to docker
docker run -it --rm -v $(pwd)/work:/tmp/share --name dev-zig-vim-01 dev-zig-vim /bin/bash
```



## PlugInstall must be done

After connecting to Docker, launch vim and hit this command.

```vim
:PlugInstall
```

