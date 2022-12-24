# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs


# Added by Toolbox App
export PATH="$PATH:/home/wren/.local/share/JetBrains/Toolbox/scripts"

export CLUTTER_IM_MODULE=ibus
export GLFW_IM_MODULE=ibus
export GTK_IM_MODULE=ibus
export QT4_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
