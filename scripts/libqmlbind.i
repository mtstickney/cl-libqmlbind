/* NOTE: this is not the file you want. This is a fallback file for older
 * versions of qmlbind that may not have shipped the common qmlbind.h header.
 * For versions of this header, a new interface file is generated from it; see
 * generate.sh and the generated bindings.gen.i file. */
%feature("intern_function", "lispify");

%insert("lisphead") %{
(in-package #:cl-libqmlbind)
%}

%include "qmlbind/application.h"
%include "qmlbind/component.h"
%include "qmlbind/engine.h"
%include "qmlbind/metaclass.h"
%include "qmlbind/iterator.h"
%include "qmlbind/plugin.h"
%include "qmlbind/signal_emitter.h"
%include "qmlbind/string.h"
%include "qmlbind/value.h"
