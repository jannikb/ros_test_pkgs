roslisp_exec
===

Tests for generating executables for lisp files.

Executable script
---

The short way is to add 
```
#!/usr/bin/env sh
"true"; exec sbcl --noinform --end-runtime-options --no-userinit --disable-debugger --load `rospack find roslisp`/scripts/roslisp-sbcl-init --script "$0" "$@"
```
to the top of the lisp file and make it executable. This will first treat the file as a bash script and start sbcl with ros-load-manifest already loaded. The `true` is only there for the `;` because sbcl also reads the second line and this way the part after true is commented out.

For an example see scripts/hello-world.lisp.


Compiled executables
---

Maybe something with asdf3?
