set fish_greeting

set -gx PATH $HOME/.local/bin $PATH
set -gx PATH .git/safe/../../bin $PATH

set -x CDPATH $CDPATH $HOME
set -x CDPATH $CDPATH $HOME/Code

set -x EDITOR vim
set -x SHELL fish

source $HOME/.config/fish/nord.fish
source $HOME/.asdf/asdf.fish

direnv hook fish | source

abbr b  bundle
abbr be bundle exec
abbr bi bundle install
abbr bu bundle update

abbr g git

abbr ta tmux -S ~/.tmux.socket attach -t
abbr td tmux -S ~/.tmux.socket detach
abbr tk tmux -S ~/.tmux.socket kill-session -t
abbr tl tmux -S ~/.tmux.socket list-sessions
abbr tn tmux -S ~/.tmux.socket new -s

direnv hook fish | source

source $HOME/.asdf/asdf.fish
source $HOME/.config/fish/nord.fish

if test -n "$SSH_CLIENT" ; or test -n "$SSH_TTY"
  set sessions (tmux list-sessions -F "#{session_name}")

  for i in (seq (count $sessions))
    echo [$i] $sessions[$i]
  end

  read -p 'echo -n "Enter the number of the tmux session to join: "' -l selected

  exec tmux attach -t $sessions[$selected]
end
