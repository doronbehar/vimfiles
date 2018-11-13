update_all=(
	bundle/AnsiEsc
	bundle/SimpylFold
	bundle/abolish
	bundle/airline
	bundle/ale
	bundle/bbye
	bundle/bufexplorer
	bundle/csv
	bundle/devicons
	bundle/dirdiff
	bundle/easymotion
	bundle/eunuch
	bundle/highlitedyank
	bundle/info
	bundle/nerdtree
	bundle/orgmode
	bundle/peekaboo
	bundle/push
	bundle/repeat
	bundle/sandwich
	bundle/searchindex
	bundle/sleuth
	bundle/speeddating
	bundle/stay
	bundle/tabular
	bundle/targets
	bundle/textobj-fold
	bundle/textobj-keyvalue
	bundle/textobj-quotes
	bundle/textobj-underscore
	bundle/textobj-uri
	bundle/textobj-user
	bundle/tmux-focus-events
	bundle/tmux-navigator
	bundle/tmux-syntax
	bundle/togglelist
	bundle/tradewinds
	bundle/transpose
	bundle/unicode
	bundle/visualrepeat
	bundle/window-swap
	bundle/fugitive
)

git submodule init -- $update_all
git submodule update --recursive --checkout
