#!/bin/bash -e
export PATH=/usr/local/opt/gnu-sed/libexec/gnubin:$PATH
find . -name 'Makefile' -not -path './packages/golang/*' -exec sed  -i '/golang-package.mk/ c\include ../golang/golang-package.mk' {} \;

if [[ $1 =~ 'SNAPSHOT'* ]]; then
    find . -name 'Makefile' -exec sed -i '/PKG_USE_MIPS16:=0/ c\PKG_BUILD_FLAGS:=no-mips16' {} \;
else
    find . -name 'Makefile' -exec sed -i '/PKG_BUILD_FLAGS:=no-mips16/ c\PKG_USE_MIPS16:=0' {} \;
fi