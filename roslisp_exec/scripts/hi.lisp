#!/usr/bin/env bash
"true"; exec sbcl --noinform --end-runtime-options --no-userinit --disable-debugger --load `rospack find roslisp`/scripts/roslisp-sbcl-init --script "$0" "$2"

(ros-load:load-system "roslisp" "roslisp")

(format t "Hi~%")
(roslisp:ros-info () "World")

