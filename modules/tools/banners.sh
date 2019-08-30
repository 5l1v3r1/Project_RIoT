#!/bin/bash

# Banners for RIoT
g="\e[0m"
gr0="\e[96m"
gr1="\e[91m"
gr2="\e[92m"
gr3="\e[95m"

ran=$((( RANDOM % 5 ) + 1))

bn()
{
  echo -en $gr3"################################################### \n"
  echo -en $gr3"#                           ||                    "$gr3"# \n"
  echo -en $gr3"# "$gr0"█▄▄▄▄ ▄█ ████▄    ▄▄▄▄▀   "$gr3"|| "$g"IoT Reconnaissance "$gr3"# \n"
  echo -en $gr3"# "$gr0"█  ▄▀ ██ █   █ ▀▀▀ █      "$gr3"||       "$g"Tool         "$gr3"# \n"
  echo -en $gr3"# "$gr0"█▀▀▌  ██ █   █     █      "$gr3"||                    # \n"
  echo -en $gr3"# "$gr0"█  █  ▐█ ▀████    █       "$gr3"||     "$g"By CYB3RMX_    "$gr3"# \n"
  echo -en $gr3"# "$gr0"  █    ▐         ▀        "$gr3"||--------------------# \n"
  echo -en $gr3"# "$gr0" ▀                        "$gr3"||    "$g"version: 1.8    "$gr3"# \n"
  echo -en $gr3"################################################### "$g"\n\n"
}
bn1()
{
  echo -en $gr2"______ _____    _____                          \n"
  echo -en $gr2"| ___ \_   _|  |_   _|   "$g"IoT Reconnaissance Tool \n"
  echo -en $gr2"| |_/ / | |  ___ | |     "$gr1"----------------------- \n"
  echo -en $gr2"|    /  | | / _ \| |     "$g"By CYB3RMX_ "$gr1"| \n"
  echo -en $gr2"| |\ \ _| || (_) | |                 "$gr1"| "$g"V.1.8 \n"
  echo -en $gr2"\_| \_|\___/\___/\_/                 "$gr1"|"$g"       \n\n"
}
bn2()
{
  echo -en "         "$gr0"_            "$gr1"_          "$gr2"_          "$gr3"_  \n"
  echo -en "        "$gr0"/\ \         "$gr1"/\ \       "$gr2"/\ \       "$gr3"/\ \  \n"
  echo -en "       "$gr0"/  \ \        "$gr1"\ \ \     "$gr2"/  \ \      "$gr3"\_\ \  \n"
  echo -en "      "$gr0"/ /\ \ \       "$gr1"/\ \_\   "$gr2"/ /\ \ \     "$gr3"/\__ \ \n"
  echo -en "     "$gr0"/ / /\ \_\     "$gr1"/ /\/_/  "$gr2"/ / /\ \ \   "$gr3"/ /_ \ \ \n"
  echo -en "    "$gr0"/ / /_/ / /    "$gr1"/ / /    "$gr2"/ / /  \ \_\ "$gr3"/ / /\ \ \ \n"
  echo -en "   "$gr0"/ / /__\/ /    "$gr1"/ / /    "$gr2"/ / /   / / /"$gr3"/ / /  \/_/ \n"
  echo -en "  "$gr0"/ / /_____/    "$gr1"/ / /    "$gr2"/ / /   / / /"$gr3"/ / / \n"
  echo -en " "$gr0"/ / /\ \ \  "$gr1"___/ / /__  "$gr2"/ / /___/ / /"$gr3"/ / / \n"
  echo -en ""$gr0"/ / /  \ \ \""$gr1"/\__\/_/___\""$gr2"/ / /____\/ /"$gr3"/_/ / \n"
  echo -en ""$gr0"\/_/    "$gr0"\_\/"$gr1"\/_________/"$gr2"\/_________/ "$gr3"\_\/     "$g"version: 1.8 \n\n"
  echo -en "        |>> IoT Reconnaissance Tool <<| \n"
  echo -en "               || By CYB3RMX_ || \n\n"
}
bn3()
{
  echo -en $gr2" ██▀███   ██▓ ▒█████  ▄▄▄█████▓ \n"
  echo -en "▓██ ▒ ██▒▓██▒▒██▒  ██▒▓  ██▒ ▓▒  "$gr0"============== \n"
  echo -en $gr2"▓██ ░▄█ ▒▒██▒▒██░  ██▒▒ ▓██░ ▒░ "$gr1"| "$g"version: 1.8 "$gr1"| \n"
  echo -en $gr2"▒██▀▀█▄  ░██░▒██   ██░░ ▓██▓ ░   "$gr0"============== \n"
  echo -en $gr2"░██▓ ▒██▒░██░░ ████▓▒░  ▒██▒ ░  \n"
  echo -en "░ ▒▓ ░▒▓░░▓  ░ ▒░▒░▒░   ▒ ░░  \n"
  echo -en "  ░▒ ░ ▒░ ▒ ░  ░ ▒ ▒░     ░  \n"
  echo -en "  ░░   ░  ▒ ░░ ░ ░ ▒    ░  \n"
  echo -en "   ░      ░      ░ ░  "$g"\n\n"
}
bn4()
{
  echo " "
  echo -en $gr1" ▄▀▀▄▀▀▀▄  ▄▀▀█▀▄   ▄▀▀▀▀▄   ▄▀▀▀█▀▀▄  IoT Reconnaissance Tool\n"
  echo -en "█   █   █ █   █  █ █      █ █    █  ▐ \n"
  echo -en "▐  █▀▀█▀  ▐   █  ▐ █      █ ▐   █           By CYB3RMX_\n"
  echo -en " ▄▀    █      █    ▀▄    ▄▀    █  \n"
  echo -en "█     █    ▄▀▀▀▀▀▄   ▀▀▀▀    ▄▀       "$gr0"()()()()>> "$g"Version: "$gr2"1.8 \n"
  echo -en "▐     ▐   █       █         █  \n"
  echo -en "          ▐       ▐         ▐  \n\n"
}
case $ran in
1) bn ;;
2) bn1 ;;
3) bn2 ;;
4) bn3 ;;
5) bn4 ;;
esac

