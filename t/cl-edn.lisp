;; file: t/cl-edn.lisp

(in-package :cl-user)

(defpackage cl-edn-test
  (:use :cl :cl-user :cl-edn :prove))

(in-package :cl-edn-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-edn)' in your Lisp.

(plan 1)

(deftest sanity-check
  (pass "PROVE is loaded and ready to go.")
  (ok (= 1 1)
      "Numeric equality: (= 1 1) => T.")
  (is (+ 1 1)
      2
      "Addition: (+ 1 1) => 2.")
  (is (* 2 2)
      4
      "Multiplication: (* 2 2) => 4.")
  (is (mod (+ 10 2) 10)
      2
      "Modulus: (mod (+ 10 2) 10) => 2."))

(run-test-all)

;; EOF
