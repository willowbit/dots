#! /bin/bash

## Run script to define colors

source $HOME/.config/polybar/colors

## Define polybar labels

export XWINDOW_LABEL="     %title:0:60:...% %{T2}%{F$COLOR_ACCENT_1}%{B$COLOR_BG}"
export XWINDOW_LABEL_EMPTY="     %{T2}%{F$COLOR_ACCENT_1}%{B$COLOR_BG}"
export LOGO_CONTENT=" %{T2}%{F$COLOR_ACCENT_1}%{B$COLOR_ACCENT_2}"
export ROFI_LABEL="%{T2} %{B-}%{F$COLOR_ACCENT_1}%{T2}%{B$COLOR_ACCENT_2}"
export BATTERY_LABEL_CHARGING="%{B$COLOR_ACCENT_2}%percentage%%%{B$COLOR_ACCENT_1}%{F$COLOR_ACCENT_2}%{T2}"
export BATTERY_LABEL_DISCHARGING="%{B$COLOR_ACCENT_2}%percentage%%%{B$COLOR_ACCENT_1}%{F$COLOR_ACCENT_2}%{T2}"
export BATTERY_LABEL_FULL="%{B$COLOR_ACCENT_2}%percentage%%%{B$COLOR_ACCENT_1}%{F$COLOR_ACCENT_2}%{T2}"
export BACKLIGHT_LABEL="<ramp> %{F$COLOR_ACCENT_1}%{T2}%{B$COLOR_ACCENT_2}"
export PULSEAUDIO_LABEL="%{T3}墳%{T-} <ramp-volume>%{F${COLOR_ACCENT_2}}%{T2}%{B$COLOR_BG}"
export PULSEAUDIO_LABEL_MUTED="%{B$COLOR_ACCENT_2}%{T3} %{T-}%{F$COLOR_ACCENT_2}%{T2}%{B$COLOR_BG}"
export MEMORY_LABEL="%{B$COLOR_ACCENT_1}%{T2}%{F$COLOR_BG} %{F-}%{T-}%{B$COLOR_ACCENT_1}%{F$COLOR_FG} %percentage_used:2%%"
export THEMESWAP="%{B$COLOR_ACCENT_2}%{T2}%{F$COLOR_BG} %{F-}%{T-}%{B$COLOR_ACCENT_2}%{F#a7c080}"

## Kill all bars and start new ones

killall polybar
polybar top --reload -q &
polybar bottomright --reload -q &
polybar bottomleft --reload -q &
