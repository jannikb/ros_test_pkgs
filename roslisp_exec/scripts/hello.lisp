(ros-load:load-system "roslisp" "roslisp")
(ros-load:load-system "roslisp_utilities" "roslisp-utilities")

(defun main ()
  (roslisp-utilities:startup-ros)
  (format t "Hello, world!~%")
  (roslisp:ros-info () "ASDASDASD"))

(defun main2 ())

(main)

;;(sb-ext:save-lisp-and-die "hello-world"
;;  :executable nil
;;  :toplevel 'main)

