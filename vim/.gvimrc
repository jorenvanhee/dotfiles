"Remove macvim default shortcut (command + t). Now we can use this for something else.
"This doesn't work if we put it in .vimrc because that file is read too early.
if has("gui_macvim")
	macmenu File.New\ Tab key=<nop>
endif
