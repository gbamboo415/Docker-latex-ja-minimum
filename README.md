# Docker-latex-ja-minimum

日本語LaTeX環境を最小構成で構築する。

## システム構成

- OS: Ubuntu 最新版 (latest Tag)
	- 日本語化を実施
- TeX System: TeX live 最新版
	- 基本環境
	- LaTeX環境
	- 日本語処理環境

## Usage
### Docker Hubから
    $ docker pull aotake91/latex-ja-minimum:latest
	$ docker run -it --rm -v $(pwd):/home/latexer latex-ja-minimum /bin/bash
### Dockerfileからのビルド
    $ git clone git@github.com:wheat311/Docker-latex-ja-minimum.git
	$ cd Docker-latex-ja-minimum
	$ docker build -t latex-ja-minimum:latest . 
	$ docker run -it --rm -v $(pwd):/home/latexer latex-ja-minimum /bin/bash

