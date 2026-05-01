# nvidia-settings --load-config-only

[ -f "$HOME/.fehbg" ] && $HOME/.fehbg

picom --config $HOME/.config/picom.conf &
redshift -l 40.84:-73.87 &
slstatus &
exec dwm
