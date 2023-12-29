" Compiler file for roswell-sbcl
" By Daniel Jay Haskin <me@djha.skin>

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
if glob("*.ros") != ""
    CompilerSet makeprg=ros\ build\ *.ros
elseif glob("*.asd") != ""
    let &l:makeprg = "sbcl --non-interactive --eval \"(asdf:load-system \\\"" . fnamemodify('.', ':p:h:t') . "\\\")\""
endif

CompilerSet efm=
            \%-GThis\ is\ SBCL\ 2.3.10\\,\ an\ implementation\ of\ ANSI\ Common\ Lisp.,
            \%-GMore\ information\ about\ SBCL\ is\ available\ at\ <http://www.sbcl.org/>.,
            \%-GSBCL\ is\ free\ software\\,\ provided\ as\ is\\,\ with\ absolutely\ no\ warranty.,
            \%-GIt\ is\ mostly\ in\ the\ public\ domain;\ some\ portions\ are\ provided\ under,
            \%-GBSD-style\ licenses.\ \ See\ the\ CREDITS\ and\ COPYING\ files\ in\ the,
            \%-Gdistribution\ for\ more\ information.,
            \%-G%tARNING:%.%#\ :SB-EVAL\ is\ no\ longer\ present\ in\ *FEATURES*,
            \%-G%tARNING:%.%#\ redefining%.%#,
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
            \%-C\;\\\\{0\\,1}%*[\ ]Stream:\ %*[^\"]\"file\ %f\"%.%#,
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
            \%-G%[\ ]%#compressed%.%#,