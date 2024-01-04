#!/usr/kid/env bash.
		    unset soporte slogan
	      unset url sdir sfile soporte slogan
	  soporte=@drowkid01 && slogan="✧ | ᴅʀᴏᴡᴋɪᴅ | ✧"

export url="https://raw.githubusercontent.com/vpsnetdk/updx/main"
declare -A sdir=( [0]="/etc/patoBot" [server]="/etc/patoBot/server" [shell]="/etc/patoBot/server/downShell" [script]="/etc/patoBot/server/downScript" [tmp]="/etc/patoBot/tmp" [data]="/etc/patoBot/database" [main]="/etc/patoBot/main" )
declare -A sfile=( [BotGen]="${dir[0]}/BotGen.sh" [ShellBot]="${dir[main]}/ShellBot.sh" )
declare -A color=( [0]="\e[1;30m" [1]="\e[1;31m" [2]="\e[1;32m" [3]="\e[1;33m" [4]="\e[34m" [5]="\e[35m" [6]="\e[36m" [7]="\e[37m" )

menu_func(){
  local options=${#@} array
  for((num=1; num<=$options; num++)); do  echo -ne " \e[1;30m[\e[1;36m$num\e[1;30m] ⟩\e[1;36m⟩\e[1;30m⟩ "
    array=(${!num})
   case ${array[0]} in
      "-vd")echo -e "\033[1;30m[\e[1;31m!\e[1;30m] \033[1;31m ${array[@]:1} \033[1;30m[\e[1;31m!\e[1;30m]";;
      "-fi")echo -e "\e[1;30m[\e[1;32m✓\e[1;30m] ${array[@]:1} \e[1;30m[\e[1;32m✓\e[1;30m] ";;
      -bar|-bar2|-bar3|-bar4)echo -e "\033[1;37m${array[@]:1}\n$(msg ${array[0]})";;
      *)echo -e "\033[1;36m ${array[@]}";;
    esac
  done
 }

selection_fun(){
local selection="null" range
for((i=0; i<=$1; i++)); do range[$i]="$i "; done
	while [[ ! $(echo ${range[*]}|grep -w "$selection") ]]; do echo -ne "\033[1;30m  ╰► Seleccione su opción: " >&2 && read selection && tput cuu1 >&2 && tput dl1 >&2 ; done
		echo $selection
}

msg(){
local text=$2
	case $1 in
	"-ne") echo -ne " \e[1;30m[\e[1;33m•\e[1;30m] \e[1;33m $2 ";read $3 ;;
	"-bar"|"-bar[*]") echo -e "\e[1;30m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m" ;;
	"-v"|"-r"|"-c"|"-nn"|"-az"|"-am"|"-m")
	    exec=$(echo $1|tr -d "-")
		color=$(jq '{color: {v: "3", r: "1", nn: "0", az: "4", am: "3", m: "5", c: "6"}}' -n | jq -r .color.$exec)
		    echo -e "${color[$color]}$text\e[0m"
	;;
	esac
}

printTitle(){
    echo -e "\n\e[1;31m$(printf '%0.s-' $(seq 1 ${#1}))\n\033[32m$1\033[1;91m\n$(printf '%0.s-' $(seq 1 ${#1}))\n\e[0m"
}

instal(){
    [[ $(dpkg --get-selections | grep -w "$1" | head -1) ]] || apt-get install jq -y &>/dev/null
    [[ $(dpkg --get-selections | grep -w "$1" | head -1) ]] || ESTATUS=$(echo -e "\033[91mFALLO DE INSTALACION") &>/dev/null
    [[ $(dpkg --get-selections | grep -w "$1" | head -1) ]] && ESTATUS=$(echo -e "\033[92mINSTALADO") &>/dev/null
    echo -e "\033[97m  # INSTALANDO $1................... $ESTATUS "
}

	[[ $1 == "--general" ]] && {
			    unset soporte slogan
		      unset url sdir sfile soporte slogan
		  soporte=@drowkid01 && slogan="✧ | ᴅʀᴏᴡᴋɪᴅ | ✧"

	export url="https://raw.githubusercontent.com/vpsnetdk/updx/main"
	declare -A sdir=( [0]="/etc/patoBot" [server]="/etc/patoBot/server" [shell]="/etc/patoBot/server/downShell" [script]="/etc/patoBot/server/downScript" [tmp]="/etc/patoBot/tmp" [data]="/etc/patoBot/database" [main]="/etc/patoBot/main" )
	declare -A sfile=( [BotGen]="${dir[0]}/BotGen.sh" [ShellBot]="${dir[main]}/ShellBot.sh" )
	declare -A color=( [0]="\e[1;30m" [1]="\e[1;31m" [2]="\e[1;32m" [3]="\e[1;33m" [4]="\e[34m" [5]="\e[35m" [6]="\e[36m" [7]="\e[37m" )

	}
	[[ $1 == "--verify-arq" ]] && {
		declare -A sdir=( [0]="/etc/patoBot" [server]="/etc/patoBot/server" [shell]="/etc/patoBot/server/downShell" [script]="/etc/patoBot/server/downScript" [tmp]="/etc/patoBot/tmp" [data]="/etc/patoBot/database" [main]="/etc/patoBot/main" )
		[[ -z $2 ]] && { echo -e "\e[1;31m	[✗] archivo/file ó comando no existente [✗]" && exit 1 ; } || {
			case $2 in
			"BotGen.sh"|"ShellBot.sh") chmod +x $2 && mv $2 ${sdir[0]}/$2 ;;
			*)chmod +x $2 && mv $2 ${sdir[main]}/$2
			esac
		}
	}
	[[ $1 == "--backup" ]] && {
		declare -A sdir=( [0]="/etc/patoBot" [server]="/etc/patoBot/server" [shell]="/etc/patoBot/server/downShell" [script]="/etc/patoBot/server/downScript" [tmp]="/etc/patoBot/tmp" [data]="/etc/patoBot/database" [main]="/etc/patoBot/main" )
		[[ ! -d /root/.backup ]] && mkdir /root/.backup
		tar -c ${dir[0]} -f /root/.backup/backup.log
		echo -e "\e[1;32m	[✓] backup realizado [✓]"
	}
	[[ $1 == "--download-bot" ]] && {

		export url="https://raw.githubusercontent.com/vpsnetdk/updx/main"
#		declare -A sdir=( [0]="/etc/patoBot" [server]="/etc/patoBot/server" [shell]="/etc/patoBot/server/downShell" [script]="/etc/patoBot/server/downScript" [tmp]="/etc/patoBot/tmp" [data]="/etc/patoBot/database" [main]="/etc/patoBot/main" )
#		declare -A sfile=( [BotGen]="${dir[0]}/BotGen.sh" [ShellBot]="${dir[main]}/ShellBot.sh" )
		declare -A color=( [0]="\e[1;30m" [1]="\e[1;31m" [2]="\e[1;32m" [3]="\e[1;33m" [4]="\e[34m" [5]="\e[35m" [6]="\e[36m" [7]="\e[37m" )
		sdir="/xd
