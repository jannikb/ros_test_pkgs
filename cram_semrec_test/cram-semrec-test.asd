(defsystem cram-semrec-test
  :name "cram-semrec-test"
  :author "Jannik Buckelo <jannikbu@cs.uni-bremen.de>"
  :version "0.1"
  :maintainer "Jannik Buckelo <jannikbu@cs.uni-bremen.de>"
  :licence "BSD"
  :description "Test for semrec"
  :depends-on (roslisp
               designators-ros
               cram-roslisp-common
               cram-plan-library
               cram-reasoning
               cram-plan-knowledge
               cram-environment-representation
               alexandria
               cram-plan-failures
               designators
               cram-language
               process-modules
               cram-beliefstate)
  :components
  ((:module "src"
            :components
            ((:file "package")
             (:file "test" :depends-on ("package"))))))