set TTY1 (tty)
if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  exec env MOZ_DBUS_REMOTE=1 MOZ_ENABLE_WAYLAND=1 dbus-run-session sway
end
