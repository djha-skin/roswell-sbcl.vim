# Compiler Plugin for Common Lisp in Vim

This repo contains compiler configuration for (n)vim's quickfix list when using
Roswell with SBCL or SBCL by itself. The compiler assumes that you either have
a `*.asd` file in the current working directory, or that you have a `*.ros`
file as your entrypoint in the root directory of your repository, as described
in my blog post [Release Common Lisp on Your First
Day](https://blog.djha.skin/blog/release-common-lisp-on-your-first-day/). It
also assumes you use SBCL with roswell.

## But this isn't perfect.

Afraid not. Vim's `errorformat` is a beast to get right, and SBCL doesn't
exactly have the most machine parsable compiler output I've ever seen. That's
actually why I wrote this: the output from compiling was so hard to read. I
wanted vim to go through it for me and pick out the important parts. I've gotten
it to mostly a good spot, good enough for me to use, but it is sort of
alpha-ish.

## What happened to the REPL?

Oh, the REPL's still there in my workflow, but there's nothing like typing
`:make` and having vim guide you through all the problems in your code after a
large rough-draft refactor. I wanted both, because the REPL with SBCL still has
to be manually searched through to get to the error messages, as evidenced by SO
questions like [this
one](https://stackoverflow.com/questions/14012496/sbcl-error-messages-any-way-to-improve).

## Wait, Vim's not picking up line numbers.

That's unfortunately a known issue for most messages. However, some errors do
have line numbers, provided you add  the following to your
`~/.roswell/init.lisp` as per this [SO
answer](https://stackoverflow.com/questions/65328131/how-do-i-show-the-line-number-and-source-file-of-an-error-in-sbcl):

```
#+sbcl
(sb-ext:restrict-compiler-policy 'debug 3)
```

## Vim and Lisp? Really?

[Yes.](https://blog.djha.skin/blog/developing-common-lisp-using-gnu-screen-rlwrap-and-vim/)

## Are you sure?

[Uh huh.](https://blog.djha.skin/blog/emacs-users-im-okay-i-promise/)
