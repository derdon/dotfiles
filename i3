# i3 config file (v4)
#
# Please see http://i3wm.org/docs/userguide.html for a complete reference!
#
# This config file uses keycodes (bindsym) and was written for the QWERTY
# layout.
#
# To get a config file with the same key positions, but for your current
# layout, use the i3-config-wizard
#

# font for window titles. ISO 10646 = Unicode
#font -misc-fixed-medium-r-normal--13-120-75-75-C-70-iso10646-1

font -schumacher-clean-bold-r-normal--16-160-75-75-c-80-iso646.1991-irv

# use Mouse+Mod4 to drag floating windows to their wanted position
floating_modifier Mod4

# start a terminal
bindsym Mod4+Return exec i3-sensible-terminal

# kill focused window
bindsym Mod4+Shift+q kill

# start dmenu (a program launcher)
bindsym Mod4+d exec dmenu_run

# change focus
bindsym Mod4+j focus left
bindsym Mod4+k focus down
bindsym Mod4+l focus up
bindsym Mod4+semicolon focus right

# alternatively, you can use the cursor keys:
bindsym Mod4+Left focus left
bindsym Mod4+Down focus down
bindsym Mod4+Up focus up
bindsym Mod4+Right focus right

# move focused window
bindsym Mod4+Shift+j move left
bindsym Mod4+Shift+k move down
bindsym Mod4+Shift+l move up
bindsym Mod4+Shift+semicolon move right

# alternatively, you can use the cursor keys:
bindsym Mod4+Shift+Left move left
bindsym Mod4+Shift+Down move down
bindsym Mod4+Shift+Up move up
bindsym Mod4+Shift+Right move right

# split in horizontal orientation
bindsym Mod4+h split h

# split in vertical orientation
bindsym Mod4+v split v

# enter fullscreen mode for the focused container
bindsym Mod4+f fullscreen

# change container layout (stacked, tabbed, default)
bindsym Mod4+s layout stacking
bindsym Mod4+w layout tabbed
bindsym Mod4+e layout default

# toggle tiling / floating
bindsym Mod4+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym Mod4+space focus mode_toggle

# focus the parent container
bindsym Mod4+a focus parent

# focus the child container
bindsym Mod4+q focus child

# switch to workspace
bindsym Mod4+1 workspace 1
bindsym Mod4+2 workspace 2
bindsym Mod4+3 workspace 3
bindsym Mod4+4 workspace 4
bindsym Mod4+5 workspace 5
bindsym Mod4+6 workspace 6
bindsym Mod4+7 workspace 7
bindsym Mod4+8 workspace 8
bindsym Mod4+9 workspace 9
bindsym Mod4+0 workspace 10

# move focused container to workspace
bindsym Mod4+Shift+1 move container to workspace 1
bindsym Mod4+Shift+2 move container to workspace 2
bindsym Mod4+Shift+3 move container to workspace 3
bindsym Mod4+Shift+4 move container to workspace 4
bindsym Mod4+Shift+5 move container to workspace 5
bindsym Mod4+Shift+6 move container to workspace 6
bindsym Mod4+Shift+7 move container to workspace 7
bindsym Mod4+Shift+8 move container to workspace 8
bindsym Mod4+Shift+9 move container to workspace 9
bindsym Mod4+Shift+0 move container to workspace 10

# reload the configuration file
bindsym Mod4+Shift+c reload
# restart i3 inplace (preserves your layout/session, can be used to upgrade i3)
bindsym Mod4+Shift+r restart
# exit i3 (logs you out of your X session)
bindsym Mod4+Shift+e exit

# resize window (you can also use the mouse for that)
mode "resize" {
        # These bindings trigger as soon as you enter the resize mode

        # Pressing left will shrink the window's width.
        # Pressing right will grow the window's width.
        # Pressing up will shrink the window's height.
        # Pressing down will grow the window's height.
        bindsym h           resize shrink width 1 px or 1 ppt
        bindsym j           resize grow height 1 px or 1 ppt
        bindsym k           resize shrink height 1 px or 1 ppt
        bindsym l           resize grow width 1 px or 1 ppt

        # same bindings, but for the arrow keys
        bindsym Left        resize shrink width 5 px or 5 ppt
        bindsym Down        resize grow height 5 px or 5 ppt
        bindsym Up          resize shrink height 5 px or 5 ppt
        bindsym Right       resize grow width 5 px or 5 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

bindsym Mod4+r mode "resize"

bar {
    #status_command i3status
    status_command myi3status
    mode dock
}

# make xfce4 pop-ups always appear in floating mode
for_window [class="Xfce4-notifyd"] floating enable; border none

# disable window borders
new_window none
