#!/bin/sh
swig -cffi -noswig-lisp -o ../ffi.lisp -module ffi -DQMLBIND_API -I../../libqmlbind/qmlbind/include libqmlbind.i
