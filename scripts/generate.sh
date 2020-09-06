#!/bin/sh

if [ -z "$QMLBIND_HEADERS" ]; then
	QMLBIND_HEADERS=/usr/include
fi

if [ -f "$QMLBIND_HEADERS/qmlbind.h" ]; then
	BINDING_FILE=bindings.gen.i
	cat > "$BINDING_FILE" <<EOF
%feature("intern_function", "lispify");

%insert("lisphead") %{
(in-package #:cl-libqmlbind)
%}

EOF
	cat "$QMLBIND_HEADERS/qmlbind.h" >> "$BINDING_FILE"
	sed -i -e 's/#include/%include/' "$BINDING_FILE"
else
	BINDING_FILE=libqmlbind.i
fi

swig -cffi -noswig-lisp -o ../ffi.lisp -module ffi -DQMLBIND_API -I"$QMLBIND_HEADERS" "$BINDING_FILE"
