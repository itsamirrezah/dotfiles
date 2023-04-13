
selected=$(eval "find $(xargs < ~/.config/tmux/WORK_DIR) -mindepth 1 -maxdepth 1" | fzf) 
#selected=$(find $(xargs < ~/.config/tmux/WORK_DIR) | fzf);
selected_name=$(basename "$selected" | tr . -) ;

if [[ -z $(pgrep tmux) ]]; then
	tmux new-session -s $selected_name -c $selected;
	exit 0;
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
	tmux new-session -ds $selected_name -c $selected
fi

tmux switch-client -t $selected_name
