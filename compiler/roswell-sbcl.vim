" Compiler file for roswell-sbcl
" By Daniel Jay Haskin <me@djha.skin>

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ros\ build\ *.ros

CompilerSet errorformat=
            \%-G%[%^\;]%.%#,
            \%-G%*[\;\ ]compil%.%#,
            \%-G\;,
            \%-G\;%*[\ ],
            \%W\;\ file:\ %f,
            \%C\;\ in:\ %s,
            \%C%>\;%[\ ]%*[\ ]%[%^\ ]%.%#,
            \%C\;%[\ ]%#,
            \%C%>\;%*[\ ]caught\ STYLE-%tARNING:,
            \%C\;%[\ ]%*[\ ]%m,
            \%Z
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