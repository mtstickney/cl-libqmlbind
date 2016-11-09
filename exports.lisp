(in-package #:cl-libqmlbind)

;; Auto-export all qmlbind-* symbols in the package
(eval-when (:compile-toplevel :load-toplevel)
  (do-symbols (sym '#:cl-libqmlbind)
    (when (zerop (or (search "QMLBIND-" (symbol-name sym)) -1))
      (export sym))))
