# Blank Computer at Work?

Never fear!  With this install script, you'll probably never have to
remember what your environment looks like again!  For some reason, some
of these commands don't sanitize their exit codes properly, so they're
not easily chainable in the script.  So!  Here are the supplemental
commands to run afterwards in a *new* window:

`rbenv install $(rbenv install -l | grep -v - | tail -1)`
`nvm install node`

copy the `.gitconfig` and `.vimrc` dotfiles into your home directory
`vim +PluginInstall`

Follow the instructions to generate your ssh key for github here:
[https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/]

