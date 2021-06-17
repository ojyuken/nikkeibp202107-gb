# vscode-remote-gb-dev

Preparing for the OJYUKEN = VSCode + Docker + GBDK-2020


# Get Started

This template is the development environment template for GB.

With the combination of VSCode and Docker, GBDK-2020, you can easily start developing right away. Of course, you can also emulate your compiled GB application.

## Requirements  

Install the following tools.  

1. [git](https://git-scm.com/)
1. [VSCode](https://code.visualstudio.com/download)
1. [Docker](https://www.docker.com/)

If you want to create your repository by `use this template`, [sign up](https://github.com/signup) and sign in github.

# How to use

## Use this template

1. Open the repository on github.  
   https://github.com/ojyuken/vscode-remote-gb-dev

1. Click `Use this template`.  
   [Here - https://github.com/ojyuken/vscode-remote-gb-dev/generate](https://github.com/ojyuken/vscode-remote-gb-dev/generate)


## git clone

1. Open the command prompt and run below commands.

```CommandPrompt.cmd
mkdir c:\workgit
cd c:\workgit
git clone <your GitHub Code URL>
```

## VSCode, Reopen in Container

1. Open the git cloned folder in VSCode.  
1. Install the "Remote - Containers" extension to VSCode.
1. An icon for the extension "Remote - Containers" will be added to the bottom left corner of VSCode, click on that icon.  
1. Select "Remote-Containers: Reopen in Container" from the list.
1. The Docker container will start and you will be able to develop remotely from VSCode.


## GB development tools

GB development tools installed, `/opt`.

1. gbdk-2020 - /opt/gbdk
1. rgbds - /opt/rgbds

Open http://localhost:8080, then select the fluxbox menu (right-click on desktop.)  
You can use the following tools via noVNC:

1. gameboy tile designer (gbtd)
1. gameboy map builder (gbmb)
1. gameboy emulator (bgb)

Also, it included gbtdg which is great for making splash images.  
http://localhost:8080/gbtdg/

## Example

An example by [konsumer](https://github.com/konsumer/docker-gb-dev/tree/master/example) is included, so you can build and run it.

Following commands, and then open http://localhost:8080.

```
cd /home/gbdev/workspace/.devcontainer/docker-gb-dev/example
make
wine /opt/bgb/bgb.exe demo.gb
```

You can also try [the gbdk-2020 examples](https://github.com/gbdk-2020/gbdk-2020/tree/develop/gbdk-lib/examples/gb) as well.

```
cd /opt/gbdk/examples/gb
```


# More Info

Here are the tools installed in this environment:

- [gbdk-2020](https://github.com/gbdk-2020/gbdk-2020) (Zal0 renamed to gbdk-2020)
- [rgbds](https://github.com/rednex/rgbds)
- [gameboy tile designer](http://www.devrs.com/gb/hmgd/gbtd.html) (via wine)
- [gameboy map builder](http://www.devrs.com/gb/hmgd/gbmb.html) (via wine)
- [bgb gameboy emulator](https://bgb.bircd.org/) (via wine)
- [gameboy tile data generator](https://github.com/chrisantonellis/gbtdg) (running [on web](http://localhost:8080/gbtdg/))
- [konsumer/docker-gb-dev](https://github.com/konsumer/docker-gb-dev) (this template forked from it.)

The GB's homepage is [here](https://www.nintendo.co.jp/n02/dmg/index.html) (Japanese).

- [GAME BOY](https://www.nintendo.co.jp/n02/dmg/index.html)
- [Hardware](https://www.nintendo.co.jp/n02/dmg/hardware/index.html)
- [Option](https://www.nintendo.co.jp/n02/dmg/hardware/option/index.html)