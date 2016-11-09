;;;; cl-libqmlbind.asd

(asdf:defsystem #:cl-libqmlbind
  :description "Thin binding for libqmlbind"
  :author "Matthew Stickney"
  :license "Specify license here"
  :depends-on (#:cffi)
  :serial t
  :components ((:file "cl-libqmlbind")
               (:file "ffi")
               (:file "exports")))
