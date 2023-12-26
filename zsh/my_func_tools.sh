my_func_tools_list() {
	perl -0777 -ne 'print "$1\t$2\n" while /(\w+)\s*\(\)\s*{ # (.+?)\n/gs' ~/my_func_tools.sh | column -t
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