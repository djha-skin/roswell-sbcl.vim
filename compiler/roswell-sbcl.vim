" Compiler file for roswell-sbc
" By Daniel Jay Haskin <me@djha.skin>

if exists(":CompilerSet") != 2
    command -nargs=* CompilerSet setlocal <args>
endif

let s:path = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let ros_path = glob("*.ros")
let asdf_path = glob("*.asd")
"fnamemodify('.', ':p:h:t')
if ros_path != ""
    let &l:makeprg = "ros build " . ros_path
elseif glob("*.asd") != ""
    let &l:makeprg = "sbcl --non-interactive --eval \"(asdf:load-system \\\"" . asdf_path . "\\\")\""
endif

            "\%+C%*[\ ]The\ ANSI\ Standard%.%#,
            "\%C\;\ caught\ %tRROR:,
            "\%C\;\ caught\ %tARNING:,
            "\%C\;\ caught\ STYLE-%tARNING:,
CompilerSet efm=
            \%-GThis\ is\ SBCL\ %*[^\ \\,]\\,\ an\ implementation\ of\ ANSI\ Common\ Lisp.,
            \%-GMore\ information\ about\ SBCL\ is\ available\ at\ <http://www.sbcl.org/>.,
            \%-GSBCL\ is\ free\ software\\,\ provided\ as\ is\\,\ with\ absolutely\ no\ warranty.,
            \%-GIt\ is\ mostly\ in\ the\ public\ domain;\ some\ portions\ are\ provided\ under,
            \%-GBSD-style\ licenses.%*[\ ]See\ the\ CREDITS\ and\ COPYING\ files\ in\ the,
            \%-Gdistribution\ for\ more\ information.,
            \%-G%tARNING:%.%#\ :SB-EVAL\ is\ no\ longer\ present\ in\ *FEATURES*,
            \%-G%tARNING:%.%#\ redefining%.%#,
            \%-Gunhandled\ condition\ in\ --disable-debugger\ mode\\,\ quitting,
            \%-C\ %#,
            \%-C,
            \%C%*[\ ]of\ #P\"%f\":%[\ ]%#,
            \%+C%[\ ]%#Unhandled%.%#,
            \%+CSee\ also:,
            \%C%*[\ ]%[^\ ]\\\\@=%m,
            \%C%[\ ]%#%*[0-9]:%.%#,
            \%+C%[\ ]%#...,
            \%-P\;\ file:\ %f,
            \%-C\;\ wrote%.%#,
            \%C\;\ ==>\ %#,
            \%C\;\ -->\ %m,
            \%C\;\ %#,
            \%C\;\ compiling\ file\ \"%f\"%.%#,
            \%-C\;\ compilation%.%#,
            \%-C\;\\\\{0\\,1}%*[\ ]Line:\ %l\\,\ Column:\ -\\\\{0\\,1}%c%.%#,
            \%-C\;\\\\{0\\,1}%*[\ ]Stream:\ %*[^\"]\"file\ %f\"%.%#,
            \%C\;%*[\ ](in\ form\ starting\ at\ line:\ %l\\,\ column:\ %c\\,%.%#,
            \%C\;%*[\ ]%[^\ ]\\\\@=%m,
            \%A\;\ in:\ %m,
            \%E\;\ caught\ %tRROR:,
            \%W\;\ caught\ %tARNING:,
            \%W\;\ caught\ STYLE-%tARNING:,
            \%-A\;\ compilation%.%#,
            \%W%tARNING:,
            \%E%[\ ]%#While\ evaluating\ the\ form\ starting\ at\ line\ %l\\,\ column\ %c,
            \%+E%[\ ]%#Unhandled%.%#,
            \%-G\;\ %#,
            \%-G\;\ \\\\{3\\,}caught%.%#,
            \%-NBacktrace%.%#,
            \%-G%[\ ]%#%*[0-9]:%.%#,
            \%-G\;\ compiling\ file\ \"%f\"%.%#,
            \%-G\;\ wrote%.%#,
            \%-G%[\ ]%#compressed%.%#,
            \%-G\ %#,
            \%-G,