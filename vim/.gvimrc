"Remove MacVim default shortcuts so that we can use them for something else.
"This doesn't work if we put it in .vimrc because that file is read too early.
if has("gui_macvim")
	macmenu File.New\ Tab key=<nop>
    macmenu File.Save key=<nop>
endif
