" Compiler file for roswell-sbcl
" By Daniel Jay Haskin <me@djha.skin>

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ros\ build\ *.ros
CompilerSet efm=
            \%-G%tARNING:%.%#\ :SB-EVAL\ is\ no\ longer\ present\ in\ *FEATURES*,
            \%-Gunhandled\ condition\ in\ --disable-debugger\ mode\\,\ quitting,
            \%-P\;\ file:\ %f,
            \%-C\;\ wrote%.%#,
            \%-C\ %#,
            \%-C,
            \%C\;\ in:\ %m,
            \%C\;\ -->\ %m,
            \%C\;\ ==>\ %#,
            \%C\;\ %#,
            \%C\;\ caught\ %tRROR:,
            \%C\;\ caught\ %tARNING:,
            \%C\;\ caught\ STYLE-%tARNING:,
            \%C\;\ compiling\ file\ \"%f\"%.%#,
            \%-C\;\ compilation%.%#,
            \%-C\;\\\\{0\\,1}%*[\ ]Line:\ %l\\,\ Column:\ -\\\\{0\\,1}%c%.%#,
            \%-C\;\\\\{0\\,1}%*[\ ]Stream:\ %*[^\ ]\ for\ \"file\ %f\"\ %*[^\ ],
            \%C\;\\\\{0\\,1}%*[\ ]%[%^\ ]\\\\@=%m,
            \%C%[\ ]%#%*[0-9]:%.%#,
            \%C%[\ ]%#...,
            \%A\;\ in:\ %m,
            \%E\;\ caught\ %tRROR:,
            \%W\;\ caught\ %tARNING:,
            \%W\;\ caught\ STYLE-%tARNING:,
            \%-A\;\ compilation%.%#,
            \%W%tARNING:,
            \%+W%[\ ]%#Unhandled%.%#,
            \%-G\;\ %#,
            \%-G\;\ \\\\{3\\,}caught%.%#,
            \%-G,
            \%-G%*\\s,
            \%-NBacktrace%.%#,
            \%-G%[\ ]%#%*[0-9]:%.%#,
            \%-G\;\ compiling\ file\ \"%f\"%.%#,
            \%-G\;\ wrote%.%#,