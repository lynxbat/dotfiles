# Personalized!

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DAN_CURRENT_LOCA_="%{$fg[blue]%}%~\$(git_prompt_info)%{$reset_color%}"
# Grab the current username: dallas
DAN_CURRENT_USER_="%{$FG[203]%}%n:%{$reset_color%}"
# prompt char
DAN_PROMPT_CHAR_="%{$fg[white]%}%(!.#.$)%{$reset_color%}"
# For the git prompt, use a white () and red text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}(%{$fg[red]%}"
# Close it all off by resetting the color and styles, close parens.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%})"
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
# Add a cyan ✗ if this branch is dirty.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[051]%}✗"

# Put it all together!
PROMPT="[$(hostname | awk -F. '{print $1}')]-$DAN_CURRENT_USER_$DAN_CURRENT_LOCA_$DAN_PROMPT_CHAR_ "
