pgrep redshift &> /dev/null || redshift -l &> /dev/null &
[[ -f ~/.xmodmap ]] && xmodmap ~/.xmodmap &

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ] && type dbus-launch >/dev/null; then
  eval $(dbus-launch --sh-syntax --exit-with-session)
fi

xinput set-int-prop 11 "libinput Middle Emulation Enabled" 8 1 &
xinput set-int-prop 11 "libinput Scroll Method Enabled" 8 0 0 1 &

exec ck-launch-session i3
