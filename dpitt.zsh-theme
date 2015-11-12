# Personalized!
small_pwd() {
	len=$(pwd | wc -c)
	if [ $len -gt 30 ]; then
		echo ".../$(pwd | awk -F/ '{printf "%s/%s", $(NF-1), $NF}')"
	else
		echo "%~"
	fi
}

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch, if in a git repository: ~aw@master
DAN_CURRENT_LOCA_="%{$fg[blue]%}\$(small_pwd)\$(git_prompt_info)%{$reset_color%}"
# Grab the current username: dallas
DAN_CURRENT_USER_="%{$FG[203]%}%n%{$reset_color%}"
# prompt char
DAN_PROMPT_CHAR_="%{$fg[white]%}%(!.#.$)%{$reset_color%}"
# For the git prompt, use a white () and red text for the branch name
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%} on %{$fg[red]%}"
# Close it all off by resetting the color and styles, close parens.
ZSH_THEME_GIT_PROMPT_SUFFIX=""
# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN=""
# Add a cyan ✗ if this branch is dirty.
ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[051]%}✗"

# Put it all together!
PROMPT="$DAN_CURRENT_USER_ %{$fg[white]%}at%{$reset_color%} %{$FG[203]%}$(hostname | awk -F. '{print $1}')%{$reset_color%} %{$fg[white]%}in%{$reset_color%} $DAN_CURRENT_LOCA_ "
