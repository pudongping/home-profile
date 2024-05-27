dddd() {
  echo -e "\033[36m 自定义工具函数如下： \033[0m"
	perl -0777 -ne 'print "$1\t$2\n" while /(\w+)\s*\(\)\s*{ # (.+?)\n/gs' "$HOME_PROFILE_DIR/zsh/shell_tools.sh" | column -t
}

function tcd() { # 时间戳和日期互转
	echo "This is a timestamp convert date command tool."
	local mode=$1
	local ts_or_date=$2
	case "${mode}" in
	"now")
		# 查看当前时间戳
		date +%s
		;;
	"t2d")
		# 将时间戳转化为日期
		if [[ -n "${ts_or_date}" ]]; then
			date -r ${ts_or_date} +"%Y-%m-%d %H:%M:%S"
		else
			echo "Please input a timestamp"
		fi
		;;
	"d2t")
		# 将日期转化为时间戳
		if [[ -n "${ts_or_date}" ]]; then
			date -j -f "%Y-%m-%d %H:%M:%S" "${ts_or_date}" +%s
		else
			echo "Please input a date string in 'YYYY-MM-DD HH:MM:SS' format."
		fi
		;;
	*)
		cat <<-EOF
			Usage: tcd <mode> [<timestamp or date>]

			Modes:
			  now           Output current timestamp
			  t2d           Convert a timestamp to a date string. Date format: 'YYYY-MM-DD HH:MM:SS'
			  d2t           Convert a date string to timestamp. Date format: 'YYYY-MM-DD HH:MM:SS'

			Example usage:
			  tcd now
			  tcd t2d 1703212085
			  tcd d2t '2023-12-22 10:28:05'
		EOF
		;;
	esac
}

function gitam() { # 'git add and commit'
	if [ -z "$1" ]; then
		echo "Please provide a commit message."
		return 1
	fi

	git add -A && git commit -sm "$1"
}

function gitlog() { # '美化git log'
  git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
}

function gitlogg() { # `更加详细的打印出git log`
  git log --graph --all --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(bold white)— %an%C(reset)%C(bold yellow)%d%C(reset)' --abbrev-commit --date=relative
}