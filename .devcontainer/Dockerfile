# Dockerfile for running TLA+ in VSCode devcontainer. 
#
# Author: Kevin Sullivan. University of Virginia CS Dept. 2022. 
# Ack: https://github.com/lemmy/ewd998/blob/main/.devcontainer/install.sh

FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]

ENV DEBIAN_FRONTEND=noninteractive
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get clean && apt-get update -y && apt-get upgrade -y && apt-get update --fix-missing
RUN apt-get install -y locales && locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

## Ubuntu Basics
RUN apt-get -y install lsb-release build-essential git vim wget gnupg curl unzip libssl-dev libffi-dev libconfig-dev

## Waste less screen estate on the prompt.
RUN echo 'export PS1="$ "' >> $HOME/.bashrc

## Install everything in /opt
WORKDIR /opt

## Place to install TLC, TLAPS, Apalache, ...
RUN mkdir -p tlaplus

## PATH below has two locations because of inconsistencies between Gitpod and Codespaces.
## Gitpod:     /workspace/...
## Codespaces: /workspaces/...

## Install TLA+ Tools (download from github instead of nightly.tlapl.us (inria) to only rely on github)
RUN wget -qN https://github.com/tlaplus/tlaplus/releases/download/v1.8.0/tla2tools.jar -P tlaplus/
RUN echo "alias tlcrepl='java -cp /opt/tools/tla2tools.jar:/opt/tools/tla2tools.jar tlc2.REPL'" >> $HOME/.bashrc
RUN echo "alias tlc='java -cp /opt/tools/tla2tools.jar:/opt/tools/tla2tools.jar tlc2.TLC'" >> $HOME/.bashrc

## Install CommunityModules
RUN wget -qN https://github.com/tlaplus/CommunityModules/releases/latest/download/CommunityModules-deps.jar -P tools/

## Install TLAPS (proof system)
RUN wget -N https://github.com/tlaplus/tlapm/releases/download/v1.4.5/tlaps-1.4.5-x86_64-linux-gnu-inst.bin -P /tmp
RUN chmod +x /tmp/tlaps-1.4.5-x86_64-linux-gnu-inst.bin
RUN /tmp/tlaps-1.4.5-x86_64-linux-gnu-inst.bin -d tools/tlaps
RUN echo 'export PATH=$PATH:/opt/tools/tlaps/bin:/opt/tools/tlaps/bin' >> $HOME/.bashrc

# Java (at least for TLA+)
RUN apt -y install default-jre default-jdk
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.profile

## Install Apalache
RUN wget -qN https://github.com/informalsystems/apalache/releases/latest/download/apalache.tgz -P /tmp
RUN mkdir -p tools/
RUN tar xvfz /tmp/apalache.tgz --directory tools/
RUN echo 'export PATH=$PATH:/opt/tools/apalache/bin:/opt/tools/apalache/bin' >> $HOME/.bashrc
RUN tools/apalache/bin/apalache-mc config --enable-stats=true

## Visualization, performance monitoring, and pretty printing support
RUN apt-get install -y graphviz htop
RUN apt-get install -y --no-install-recommends texlive-latex-recommended

## Install TLA+ Toolbox
RUN wget https://github.com/tlaplus/tlaplus/releases/download/v1.8.0/TLAToolbox-1.8.0.deb -P /tmp
RUN dpkg -i /tmp/TLAToolbox-1.8.0.deb

## $(pwd)/ because VSCode apparantly doesn't like relative paths.
#code --force --install-extension $(pwd)/.devcontainer/extensions/better-comments-2.0.5.vsix
#code --force --install-extension $(pwd)/.devcontainer/extensions/EFanZh.graphviz-preview-1.5.0.vsix

## Open the readme.md file in the editor.
# code README.md
