#!/bin/sh

if [ -z "$QMLBIND_HEADERS" ]; then
	QMLBIND_HEADERS=/usr/include
fi

swig -cffi -noswig-lisp -o ../ffi.lisp -module ffi -DQMLBIND_API -I"$QMLBIND_HEADERS" libqmlbind.i
