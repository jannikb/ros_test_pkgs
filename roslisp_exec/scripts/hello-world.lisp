#!/usr/bin/env sh
"true"; exec /usr/bin/env sbcl --noinform --load `rospack find roslisp`/scripts/roslisp-sbcl-init --script "$0" "$@"

(ros-load:load-system "roslisp" "roslisp")

(in-package :roslisp)

(with-ros-node ("talker")
    (let ((i 0)
            (pub (advertise "chatter" "std_msgs/String")))
        (ros-info (talker) "Publishing on topic /chatter")
        (loop-at-most-every .1
            (publish-msg pub :data (format nil "foo ~a" (incf i))))))

