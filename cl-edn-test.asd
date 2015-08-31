;; file: cl-edn-test.asd

(in-package :cl-user)

(defpackage cl-edn-test-asd
  (:use :cl :asdf))
  
(in-package :cl-edn-test-asd)

(defsystem cl-edn-test
  :serial t
  :version "0.0.1"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "Test suite for CL-EDN"
  :license "MIT"
  :depends-on (:cl-edn
               :prove)
  :components ((:module "t"
                :serial t
                :components ((:file "cl-edn"))))
  :defsystem-depends-on (prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
  
;; EOF
