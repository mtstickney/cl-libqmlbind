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
