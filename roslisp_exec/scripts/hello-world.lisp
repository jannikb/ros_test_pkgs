#!/usr/bin/env sh
"true"; exec sbcl --noinform --end-runtime-options --no-userinit --disable-debugger --load `rospack find roslisp`/scripts/roslisp-sbcl-init --script "$0" "$@"

(ros-load:load-system "roslisp" "roslisp")

(roslisp:ros-info (example-script) "Hello world")
(roslisp:ros-info (example-script) "Args: ~a" sb-ext:*posix-argv*)

