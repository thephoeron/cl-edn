;;;; -*- Mode: LISP; Syntax: COMMON-LISP; Package: CL-EDN; Base: 10 -*-
;;;; file: cl-edn.asd

;;;; Copyright (c) 2015, "the Phoeron" Colin J.E. Lupton <//thephoeron.com>
;;;; See LICENSE for additional information.

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
