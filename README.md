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
    $ git clone git@github.com:gbamboo415/Docker-latex-ja-minimum.git
	$ cd Docker-latex-ja-minimum
	$ docker build -t latex-ja-minimum:1.0 . 
	$ docker run -it --name latextest -v ${Your local directory}:/home/latexer latex-ja-minimum:1.0 /bin/bash

## Future work
- LaTeX標準添付のIPA exフォント以外のフォントを利用可能にする方法の調査と実装