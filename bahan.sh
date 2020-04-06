# Author : Rusmana-ID
# Kontak WhatsApp : 083879017166
# Team : Black Coder Crush
# Apa Lu Liat2 Njing Mau Recode Ya Kontoll
# Belajar Goblok Jangan Recode Script Orang Lain
# Piks Lu Script Kiddie
# Apalu Liat2 Script Gue Febry Kontolll 
# Noob Lu Anjiink 
# Apalu Juga Sazxt Tai Liat2 Script Gue Bangsatt

b="\033[34;1m";m="\033[31;1m";h="\033[32;1m"
p="\033[39;1m";c="\033[35;1m";u="\033[36;1m"
k="\033[33;1m";n="\033[00m"

function load(){
printf "${p}[${m}•${p}]${n}Sedang Memasang${h}"
sleep 1
printf "."
sleep 1
printf "."
sleep 1
printf "."
sleep 1
printf "."
}

clear

function CHECK_UPDATE(){
printf "${p}[${h}•${p}] Memeriksa Update${h}"
sleep 1
printf "."
sleep 1
printf "."
sleep 1
printf ".\n"
apt-get update #> /dev/null 2>&1
apt-get upgrade -y #> /dev/null 2>&1
if [ "$?" = "0" ]; then
	echo -e " ${h}OK${c} √${n}"
else
	echo -e " ${m}Gagal!!${n}"
	exit 1
fi
}

function CHECK_MODUL(){
	MODUL=(
			python ruby bash php neofetch
			python2 nmap git unzip
			figlet nodejs wget
			toilet grep fish sed gawk
			nano curl bc busybox coreutils
			findutils gnupg jq mpv ncurses 
			ncurses-ui-libs ncurses-utils util-linux
		  )
	for i in ${MODUL[*]}; do
		status="$(dpkg-query -W --showformat='${Status}\n' $i 2> /dev/null)"
		echo -e "${p}[${h}•${p}]${n}${u}Memeriksa ${k}$i${n}${c} sudah terinstall${n}...\c"
		if [ "$status"  == "install ok installed" ]; then
			sleep 0.2
			echo -e " ${p}[${h}√${p}]${n}"
		else
			echo -e " ${p}[${m}x${p}]${n}"
			load
			apt-get --yes install $i > /dev/null 2>&1
			if [ "$?" = "0" ];then
				echo -e " ${h}Selesai${n}"
			else
				echo -e " ${m}gagal${n}"			
			fi
		fi
	done
} 

function MODUL_PIP(){
printf "${p}[${h}•${p}] Memeriksa pip${h}"
sleep 1
printf "."
sleep 1
printf "."
sleep 1
printf ".\n"
gem install lolcat #> /dev/null 2>&1
pip install --upgrade pip #> /dev/null 2>&1
pip2 install --upgrade pip
pip2 install termcolor #> /dev/null 2>&1
pip install termcolor #> /dev/null 2>&1
pip2 install colorama #> /dev/null 2>&1
pip install colorama #> /dev/null 2>&1
pip2 install bs4 #> /dev/null 2>&1
pip2 install mechanize #> /dev/null 2>&1
pip2 install requests #> /dev/null 2>&1
pip install requests #> /dev/null 2>&1
npm install -g bash-obfuscate #> /dev/null 2>&1
pip2 install asyncio #> /dev/null 2>&1
pip install asyncio #> /dev/null 2>&1
pip2 install aiohttp #> /dev/null 2>&1
pip install aiohttp #> /dev/null 2>&1
pip2 install socket #> /dev/null 2>&1
pip install socket #> /dev/null 2>&1
printf "${p}[${h}•${p}] Mulai Penginstallan${h}"
sleep 1
printf "."
sleep 1
printf "."
sleep 1
printf ".\n"
sleep 1
printf "${p}[${h}•${p}] Mohon Bersabar :)\n"
sleep 1
printf "${p}[${h}•${p}] Orang Sabar Di Sayang Tuhan\n\n"
}

function __main__(){
	sabar
#	CHECK_UPDATE
	CHECK_MODUL
	MODUL_PIP
	DEB
}
__main__

printf "\n${p}[${h}√${p}]${h} Penginstallan Sucess...\n"
echo
sleep 2
