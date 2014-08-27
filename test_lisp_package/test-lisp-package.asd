(defsystem test-lisp-package
  :name "test-lisp-package"
  :author "Jannik Buckelo <jannikbu@cs.uni-bremen.de>"
  :version "0.1"
  :maintainer "Jannik Buckelo <jannikbu@cs.uni-bremen.de>"
  :licence "BSD"
  :description "Test"
  :depends-on (:roslisp)
  :components
  ((:module "src"
            :components
            ((:file "package")
             (:file "test" :depends-on ("package"))))))