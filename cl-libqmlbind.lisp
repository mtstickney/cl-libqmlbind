;;;; cl-libqmlbind.lisp

(defpackage #:cl-libqmlbind
  (:use #:cl)
  (:nicknames #:qmlbind))
(in-package #:cl-libqmlbind)

(defun lispify (name flag &optional (package *package*))
  (let ((muffs (case flag
                 ((constant enum) "+")
                 (variable "*")
                 (t ""))))
    (intern (string-upcase (map 'string (lambda (c)
                                          (case c
                                            (#\_ #\-)
                                            (t c)))
                                name))
            package)))

(cffi:define-foreign-library libqmlbind
  (:windows "qmlbind0")
  (t "libqmlbind"))
