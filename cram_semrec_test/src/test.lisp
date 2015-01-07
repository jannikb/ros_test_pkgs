(in-package :cram-semrec-test)

(def-top-level-cram-function hello-world ()
  (cram-language-designator-support:with-designators
      ((obj-1 (object `((desig-props:name "Max")))))
    (greet-the-world 'all obj-1)
    (achieve `(all 123))
    obj-1))

(declare-goal achieve (occasion))

(declare-goal greet-the-world (indicator designator))

(def-goal (achieve (all ?location))
  (roslisp:ros-info (test) "Achieve output"))

(def-goal (greet-the-world all ?obj)
  (cram-language-designator-support:with-designators
      ((obj-2 (object `((desig-props:name "Max Mustermann")))))
    (equate ?obj obj-2)
    (roslisp:ros-info (cram-semrec-test)
                      "Hello world from all '~a' aka '~a'" (desig-prop-value ?obj 'desig-props:name) (desig-prop-value obj-2 'desig-props:name))))