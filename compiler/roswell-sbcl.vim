" Compiler file for roswell-sbcl
" By Daniel Jay Haskin <me@djha.skin>

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=ros\ build\ *.ros

CompilerSet errorformat=
            \%-G%[\ ]%#,
            \%-G%[%^\;]%.%#,
            \%-G\;\ compiling\ file\ %.%#,
            \%-G\;\ compilation\ aborted%.%#,
            \%-G\;%*\\scaught\ %*\\d%.%#,
            \%-P\;\ file:\ %f,
            \%-G\;%*[\;\ ]in:\ %s
            \%-C\;%[\ ]%#,
            \%+C%>%*[\;\ ]caught\ STYLE-%tARNING:,
            \%+C%>\;%[\ ]%[\ ]%*[\ ]%m,
            \%-Z\;%[\ ]%#,
            \%-Q\;\ compilation\ unit\ aborted%.%#
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