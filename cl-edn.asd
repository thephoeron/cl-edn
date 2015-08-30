;; file: cl-edn.asd

(in-package :cl-user)

(defpackage cl-edn-asd
  (:use :cl :asdf))

(in-package :cl-edn-asd)

(defsystem cl-edn
  :serial t
  :license "MIT"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "EDN serialization library"
  :version "0.0.1"
  :depends-on (:trivial-types)
  :components ((:file "packages")
               (:file "cl-edn")))

;; EOF
