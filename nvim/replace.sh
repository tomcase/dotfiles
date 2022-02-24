#!/bin/bash

NVIM_DIR=~/.config/nvim
LUA_DIR=${NVIM_DIR}/lua

NVIM_INIT=init.lua
NVIM_PLUGINS=plugins.lua

DEST_NVIM_INIT=${NVIM_DIR}/${NVIM_INIT}
if test -f ${DEST_NVIM_INIT}; then
	echo "${DEST_NVIM_INIT} already exists. Skipping..."
else
	ln -s ${NVIM_INIT} ${DEST_NVIM_INIT}
	echo "Copying to ${DEST_NVIM_INIT}"
fi

if test -f ${LUA_DIR}/${NVIM_PLUGINS}; then
	echo "${LUA_DIR}/${NVIM_PLUGINS} already exists. Skipping..."
else
	mkdir -p ${LUA_DIR}
	ln -s lua/${NVIM_PLUGINS} ${LUA_DIR}/${NVIM_PLUGINS}
	echo "Copying to ${DEST_NVIM_INIT}"
fi
