#!/usr/bin/env sh

# Linux
# if opam command not found
if ! command -v opam &> /dev/null
then
    sudo apt install opam
    opam init
    eval $(opam env)
else
    echo "opam already installed"
    eval $(opam env)
fi


opam repository add --all-switches satysfi-external https://github.com/gfngfn/satysfi-external-repo.git
opam repository add --all-switches satyrographos-repo https://github.com/na4zagin3/satyrographos-repo.git

opam install -y satysfi-class-slydifi
opam install -y satysfi-fonts-noto-sans
opam install -y satysfi-fonts-noto-sans-cjk-jp

satyrographos install
eval $(opam env)
