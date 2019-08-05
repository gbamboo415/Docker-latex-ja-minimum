FROM ubuntu:latest
LABEL maintainer "gbamboo415<kawa.jnra415@gmail.com>"

# ja-locale setup
RUN apt-get update && \
    apt-get install -y language-pack-ja-base language-pack-ja wget perl-modules && \
	locale-gen ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV TZ Asia/Tokyo
ENV TERM=xterm-256color

# install texlive
RUN wget http://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar xvf install-tl-unx.tar.gz && \
	rm install-tl-unx.tar.gz
COPY texlive.profile .
RUN install-tl-*/install-tl -no-gui -profile texlive.profile && \
	/usr/local/texlive/????/bin/*/tlmgr path add

# normal user setup
ENV USER latexer
ENV HOME /home/${USER}
ENV SHELL /bin/bash

RUN useradd -m ${USER}

USER ${USER}
WORKDIR ${HOME}
