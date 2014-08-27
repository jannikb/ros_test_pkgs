(in-package :test-lisp-package)

(defun hello-world ()
  "Hello world"
  (roslisp:ros-info (test) "Hello")
  (sleep 4)
  (roslisp:ros-info (test) "World"))