" Compiler file for roswell-sbcl
" By Daniel Jay Haskin <me@djha.skin>

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ros\ build\ *.ros

"            \%-Gunhandled\ condition\ in\ --disable-debugger\ mode\\,\ quitting
CompilerSet errorformat=
            \%-Z\ %#,
            \%-Z,
            \%-P\;\ file:\ %f,
            \%C\;\ in:\ %m,
            \%C\;\ %[-=]\\\\{2\\,}%[>]%.%$#,
            \%C\;\ %#,
            \%C\;\ caught\ %tRROR:,
            \%C\;\ caught\ %tARNING:,
            \%C\;\ caught\ STYLE-%tARNING:,
            \%C\;\ \\\\{3\\,}caught%.%#,
            \%C\;%*[\ ]Line:\ %l\\,\ Column:\ -\\\\{0\\,1}%c%.%#,
            \%C\;%*[\ ]Stream:%.%#,
            \%C\;\ \\\\{3\\,}%m,
            \%C\;\ compiling\ file\ \"%f\"%.%#,
            \%C\;\ compilation%.%#,
            \%+C\;\ wrote%.%#,
            \%C\ \\\\{4}%m,
            \%A\ \\\\{2}READ\ %trror\ during\ LOAD:,
            \%A\;\ %#,
            \%A\;\ in:\ %m,
            \%A\;\ %[-=]\\\\{2\\,}%[>]%.%$#,
            \%E\;\ caught\ %tRROR:,
            \%W\;\ caught\ %tARNING:,
            \%W\;\ caught\ STYLE-%tARNING:,
            \%A\;\ compiling\ file\ \"%f\"%.%#,
            \%+A\;\ compilation%.%#,
            \%+A\;\ wrote%.%#,
            \%-G%tARNING:\ %m,
            \%-G%[%^\;\ ]%.%#,
            \%-G%[%^\;]%[\ ]%#%[%^\ ]%.%#,
            \%-G\ %#,
            \%-G,
            "\%-C\;\ %#,
            \%-G[%^\;]%.%#,

";   READ error during COMPILE-FILE:
";
";     The symbol "ACCOUNT-CLIENT" is not external in the SKIN.DJHA.PIXIE/CLIENT package.
";
";       Line: 67, Column: -1, File-Position: 2095
";
";       Stream: #<SB-INT:FORM-TRACKING-STREAM for "file /home/skin/Code/lisp/pixie/src/main.lisp" {100442C823}>
"
            
"\%-G%[%^\;]%.%#,
            "\%-G%*[\;\ ]compil%.%#,
            "\%-G\;,
            "\%-G\;%*[\ ],
            "\%E%>\;\ caught\ %tRROR:,
            "\%C%>\;%[\ ]%#,
            "\%C%>\;%*[\ ]caught\ %tARNING:,
            "\%A\;\ file:\ %f,
            "\%C\;\ in:\ %.%#,
            "\%C%>\;%[\ ]%*[\ ]%s,
            "\%C%>\;%[\ ]%#,
            "\%C%>\;%[\ ]%*[\ ]%m,
            "\%Z
            "\%-P%*[\;\ ]file:\ %f,
            "\%-G%>%*[\;\ ]in:\ %s
            "\%+C%>%*[\;\ ]caught\ STYLE-%tARNING:,
            "\%-Z\;%[\ ]%#,
            "\%-G%[\;\ ]%#,
            "\%-G\;%*[\ ]caught\ %*\\d%.%#,
            "\%-G\;%*[\ ]
            "\%C%>\;%*\\s,
            "\%C%>\;\\scaught\ STYLE-WARNING:,
            "\%C%>\;\\s\\s\\s%m,
            "\%Z\;%*\\s
"            \%E%>\;\ caught\ ERROR:,
"            \%C\;\ \ \ %m,
"            \%C\;\ \ \ \ \ %m,
"            \%C\;\ \ \ \ \ \ \ Line:\ %l\,\ Column:\ %c\,\ File-Position\:\ %*\\d,
"            \%Z\;\ \ \ \ \ \ \ Stream:\ %*\\S\ for\ \"%f\"\ %[^\ ]%#
"
"
"WARNING: :SB-EVAL is no longer present in *FEATURES*
"; compiling file "/home/skin/Code/lisp/pixie/src/main.lisp" (written 26 DEC 2023 12:26:40 PM):
"
"; file: /home/skin/Code/lisp/pixie/src/main.lisp
"; in: DEFUN ACCOUNT-LIST
";     (SKIN.DJHA.PIXIE/CLIENT:ACCOUNT-NAMES
";      (SKIN.DJHA.PIXIE/CLIENT:MAKE-CLIENT-CATALOG SKIN.DJHA.PIXIE::OPTIONS))
";
"; caught STYLE-WARNING:
";   The function SKIN.DJHA.PIXIE/CLIENT:ACCOUNT-NAMES is called with one argument, but wants exactly zero.
"
";
"; caught ERROR:
";   READ error during COMPILE-FILE:
";
";     The symbol "ACCOUNT-CLIENT" is not external in the SKIN.DJHA.PIXIE/CLIENT package.
";
";       Line: 67, Column: -1, File-Position: 2095
";
";       Stream: #<SB-INT:FORM-TRACKING-STREAM for "file /home/skin/Code/lisp/pixie/src/main.lisp" {100442C823}>
"
"; compilation aborted after 0:00:00.011
"Unhandled UIOP/LISP-BUILD:COMPILE-FILE-ERROR in thread #<SB-THREAD:THREAD tid=36846 "main thread" RUNNING
"                                                          {10010A02F3}>:
"  COMPILE-FILE-ERROR while compiling #<CL-SOURCE-FILE "pixie" "src" "main">
"
"Backtrace for: #<SB-THREAD:THREAD tid=36846 "main thread" RUNNING {10010A02F3}>
"0: (SB-DEBUG::DEBUGGER-DISABLED-HOOK #<UIOP/LISP-BUILD:COMPILE-FILE-ERROR {10046BBCA3}> #<unused argument> :QUIT T)
"1: (SB-DEBUG::RUN-HOOK SB-EXT:*INVOKE-DEBUGGER-HOOK* #<UIOP/LISP-BUILD:COMPILE-FILE-ERROR {10046BBCA3}>)
"2: (INVOKE-DEBUGGER #<UIOP/LISP-BUILD:COMPILE-FILE-ERROR {10046BBCA3}>)
"3: (ERROR UIOP/LISP-BUILD:COMPILE-FILE-ERROR :CONTEXT-FORMAT "~/asdf-action::format-action/" :CONTEXT-ARGUMENTS ((#<ASDF/LISP-ACTION:COMPILE-OP > . #<ASDF/LISP-ACTION:CL-SOURCE-FILE "pixie" "src" "main">)))
"4: (UIOP/LISP-BUILD:CHECK-LISP-COMPILE-RESULTS NIL T T "~/asdf-action::format-action/" ((#<ASDF/LISP-ACTION:COMPILE-OP > . #<ASDF/LISP-ACTION:CL-SOURCE-FILE "pixie" "src" "main">)))
"5: ((SB-PCL::EMF ASDF/ACTION:PERFORM) #<unused argument> #<unused argument> #<ASDF/LISP-ACTION:COMPILE-OP > #<ASDF/LISP-ACTION:CL-SOURCE-FILE "pixie" "src" "main">)
"6: ((LAMBDA NIL :IN ASDF/ACTION:CALL-WHILE-VISITING-ACTION))
"7: ((:METHOD ASDF/ACTION:PERFORM-WITH-RESTARTS :AROUND (T T)) #<ASDF/LISP-ACTION:COMPILE-OP > #<ASDF/LISP-ACTION:CL-SOURCE-FILE "pixie" "src" "main">) [fast-method]
"8: ((:METHOD ASDF/PLAN:PERFORM-PLAN (T)) #<ASDF/PLAN:SEQUENTIAL-PLAN {1003DD0983}>) [fast-method]
"9: ((FLET SB-C::WITH-IT :IN SB-C::%WITH-COMPILATION-UNIT))
"10: ((:METHOD ASDF/PLAN:PERFORM-PLAN :AROUND (T)) #<ASDF/PLAN:SEQUENTIAL-PLAN {1003DD0983}>) [fast-method]
"11: ((:METHOD ASDF/OPERATE:OPERATE (ASDF/OPERATION:OPERATION ASDF/COMPONENT:COMPONENT)) #<ASDF/LISP-ACTION:LOAD-OP > #<ASDF/SYSTEM:SYSTEM "pixie"> :PLAN-CLASS NIL :PLAN-OPTIONS NIL) [fast-method]
"12: ((SB-PCL::EMF ASDF/OPERATE:OPERATE) #<unused argument> #<unused argument> #<ASDF/LISP-ACTION:LOAD-OP > #<ASDF/SYSTEM:SYSTEM "pixie">)
"13: ((LAMBDA NIL :IN ASDF/OPERATE:OPERATE))
"14: ((:METHOD ASDF/OPERATE:OPERATE :AROUND (T T)) #<ASDF/LISP-ACTION:LOAD-OP > #<ASDF/SYSTEM:SYSTEM "pixie">) [fast-method]
"15: ((SB-PCL::EMF ASDF/OPERATE:OPERATE) #<unused argument> #<unused argument> ASDF/LISP-ACTION:LOAD-OP "pixie")
"16: ((LAMBDA NIL :IN ASDF/OPERATE:OPERATE))
"17: ((:METHOD ASDF/OPERATE:OPERATE :AROUND (T T)) ASDF/LISP-ACTION:LOAD-OP "pixie") [fast-method]
"18: (ASDF/SESSION:CALL-WITH-ASDF-SESSION #<FUNCTION (LAMBDA NIL :IN ASDF/OPERATE:OPERATE) {1003CA0CAB}> :OVERRIDE T :KEY NIL :OVERRIDE-CACHE T :OVERRIDE-FORCING NIL)
"19: ((LAMBDA NIL :IN ASDF/OPERATE:OPERATE))
"20: (ASDF/SESSION:CALL-WITH-ASDF-SESSION #<FUNCTION (LAMBDA NIL :IN ASDF/OPERATE:OPERATE) {1003C97E9B}> :OVERRIDE NIL :KEY NIL :OVERRIDE-CACHE NIL :OVERRIDE-FORCING NIL)
"21: ((:METHOD ASDF/OPERATE:OPERATE :AROUND (T T)) ASDF/LISP-ACTION:LOAD-OP "pixie") [fast-method]
"22: (ASDF/OPERATE:LOAD-SYSTEM "pixie")
"23: (SB-INT:SIMPLE-EVAL-IN-LEXENV (ASDF/OPERATE:LOAD-SYSTEM "pixie") #<NULL-LEXENV>)
"24: (SB-EXT:EVAL-TLF (ASDF/OPERATE:LOAD-SYSTEM "pixie") NIL NIL)
"25: ((LABELS SB-FASL::EVAL-FORM :IN SB-INT:LOAD-AS-SOURCE) (ASDF/OPERATE:LOAD-SYSTEM "pixie") NIL)
"26: (SB-INT:LOAD-AS-SOURCE #<CONCATENATED-STREAM :STREAMS (#<SB-SYS:FD-STREAM for "file /home/skin/Code/lisp/pixie/pixie.ros" {1003C31CA3}> #<SB-IMPL::STRING-INPUT-STREAM {1001261A53}>) {1003C32BE3}> :VERBOSE NIL :PRINT NIL :CONTEXT "loading")
"27: ((LABELS SB-FASL::LOAD-STREAM-1 :IN LOAD) #<CONCATENATED-STREAM :STREAMS (#<SB-SYS:FD-STREAM for "file /home/skin/Code/lisp/pixie/pixie.ros" {1003C31CA3}> #<SB-IMPL::STRING-INPUT-STREAM {1001261A53}>) {1003C32BE3}> NIL)
"28: (SB-FASL::CALL-WITH-LOAD-BINDINGS #<FUNCTION (LABELS SB-FASL::LOAD-STREAM-1 :IN LOAD) {7FD79C606AAB}> #<CONCATENATED-STREAM :STREAMS (#<SB-SYS:FD-STREAM for "file /home/skin/Code/lisp/pixie/pixie.ros" {1003C31CA3}> #<SB-IMPL::STRING-INPUT-STREAM {1001261A53}>) {1003C32BE3}> NIL #<CONCATENATED-STREAM :STREAMS (#<SB-SYS:FD-STREAM for "file /home/skin/Code/lisp/pixie/pixie.ros" {1003C31CA3}> #<SB-IMPL::STRING-INPUT-STREAM {1001261A53}>) {1003C32BE3}>)
"29: (LOAD #<CONCATENATED-STREAM :STREAMS (#<SB-SYS:FD-STREAM for "file /home/skin/Code/lisp/pixie/pixie.ros" {1003C31CA3}> #<SB-IMPL::STRING-INPUT-STREAM {1001261A53}>) {1003C32BE3}> :VERBOSE NIL :PRINT NIL :IF-DOES-NOT-EXIST :ERROR :EXTERNAL-FORMAT :DEFAULT)
"30: ((FLET ROSWELL::BODY :IN ROSWELL:SCRIPT) #<SB-SYS:FD-STREAM for "file /home/skin/Code/lisp/pixie/pixie.ros" {1003C31CA3}>)
"31: (ROSWELL:SCRIPT #P"pixie.ros")
"32: (ROS.SCRIPT.DUMP::EXECUTABLE ROSWELL.DUMP.SBCL::SBCL ("pixie.ros" "-o" "dist/pixie"))
"33: (ROS.SCRIPT.DUMP::MAIN "executable" "pixie.ros" "-o" "dist/pixie")
"34: (SB-INT:SIMPLE-EVAL-IN-LEXENV (APPLY (QUOTE ROS.SCRIPT.DUMP::MAIN) ROSWELL:*ARGV*) #<NULL-LEXENV>)
"35: (SB-INT:SIMPLE-EVAL-IN-LEXENV (ROSWELL:QUIT (APPLY (QUOTE ROS.SCRIPT.DUMP::MAIN) ROSWELL:*ARGV*)) #<NULL-LEXENV>)
"36: (SB-EXT:EVAL-TLF (ROSWELL:QUIT (APPLY (QUOTE ROS.SCRIPT.DUMP::MAIN) ROSWELL:*ARGV*)) NIL NIL)
"37: ((LABELS SB-FASL::EVAL-FORM :IN SB-INT:LOAD-AS-SOURCE) (ROSWELL:QUIT (APPLY (QUOTE ROS.SCRIPT.DUMP::MAIN) ROSWELL:*ARGV*)) NIL)
"38: (SB-INT:LOAD-AS-SOURCE #<CONCATENATED-STREAM :STREAMS NIL {10022FB353}> :VERBOSE NIL :PRINT NIL :CONTEXT "loading")
"39: ((LABELS SB-FASL::LOAD-STREAM-1 :IN LOAD) #<CONCATENATED-STREAM :STREAMS NIL {10022FB353}> NIL)
"40: (SB-FASL::CALL-WITH-LOAD-BINDINGS #<FUNCTION (LABELS SB-FASL::LOAD-STREAM-1 :IN LOAD) {7FD79C6075BB}> #<CONCATENATED-STREAM :STREAMS NIL {10022FB353}> NIL #<CONCATENATED-STREAM :STREAMS NIL {10022FB353}>)
"41: (LOAD #<CONCATENATED-STREAM :STREAMS NIL {10022FB353}> :VERBOSE NIL :PRINT NIL :IF-DOES-NOT-EXIST :ERROR :EXTERNAL-FORMAT :DEFAULT)
"42: ((FLET ROSWELL::BODY :IN ROSWELL:SCRIPT) #<SB-SYS:FD-STREAM for "file /home/skin/.local/etc/roswell/dump.ros" {10022F8733}>)
"43: (ROSWELL:SCRIPT "/home/skin/.local/etc/roswell/dump.ros" "executable" "pixie.ros" "-o" "dist/pixie")
"44: (ROSWELL:RUN ((:EVAL "(ros:quicklisp)") (:LOAD "/home/skin/.roswell/init.lisp") (:SCRIPT "/home/skin/.local/etc/roswell/dump.ros" "executable" "pixie.ros" "-o" "dist/pixie") (:QUIT NIL)))
"45: (SB-INT:SIMPLE-EVAL-IN-LEXENV (ROSWELL:RUN (QUOTE ((:EVAL "(ros:quicklisp)") (:LOAD "/home/skin/.roswell/init.lisp") (:SCRIPT "/home/skin/.local/etc/roswell/dump.ros" "executable" "pixie.ros" "-o" "dist/pixie") (:QUIT NIL)))) #<NULL-LEXENV>)
"46: (EVAL (ROSWELL:RUN (QUOTE ((:EVAL "(ros:quicklisp)") (:LOAD "/home/skin/.roswell/init.lisp") (:SCRIPT "/home/skin/.local/etc/roswell/dump.ros" "executable" "pixie.ros" "-o" "dist/pixie") (:QUIT NIL)))))
"47: (SB-IMPL::PROCESS-EVAL/LOAD-OPTIONS ((:EVAL . "(progn #-ros.init(cl:load \"/home/skin/.local/etc/roswell/init.lisp\"))") (:EVAL . "(ros:run '((:eval\"(ros:quicklisp)\")(:load\"/home/skin/.roswell/init.lisp\")(:script \"/home/skin/.local/etc/roswell/dump.ros\"\"executable\"\"pixie.ros\"\"-o\"\"dist/pixie\")(:quit ())))")))
"48: (SB-IMPL::TOPLEVEL-INIT)
"49: ((FLET SB-UNIX::BODY :IN SB-IMPL::START-LISP))
"50: ((FLET "WITHOUT-INTERRUPTS-BODY-3" :IN SB-IMPL::START-LISP))
"51: (SB-IMPL::%START-LISP)
"
"unhandled condition in --disable-debugger mode, quitting
";
"; compilation unit aborted
";   caught 2 fatal ERROR conditions
";   caught 1 ERROR condition
";   caught 1 STYLE-WARNING condition
"