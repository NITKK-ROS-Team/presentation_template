#!/usr/bin/env sh

# Linux
sudo apt install opam

opam repository add --all-switches satysfi-external https://github.com/gfngfn/satysfi-external-repo.git
opam repository add --all-switches satyrographos-repo https://github.com/na4zagin3/satyrographos-repo.git

opam install -y satysfi-class-slydifi
opam install -y satysfi-fonts-noto-sans
opam install -y satysfi-fonts-noto-sans-cjk-jp

satyrographos install
