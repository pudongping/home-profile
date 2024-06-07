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

function websites() { # '打开常用网站'
    # 构造数组包含网站和网址信息
    sites=(
        "JSON-to-Go https://mholt.github.io/json-to-go/"
        "PHP-to-GoLang https://www.php2golang.com/method/function.in-array.html"
        "Go-pkg-Documents https://pkg.go.dev/"
        "Go-by-Example https://books.studygolang.com/gobyexample/"
        "Go在线工具 http://www.gotool.top/"
        "在线crontab https://tooltt.com/crontab/c/38.html"
        "在线正则表达式全集 https://tool.oschina.net/uploads/apidocs/jquery/regexp.html"
        "LOGO在线设计制作工具 https://www.uugai.com/"
        "TinyPNG图片压缩 https://tinify.cn/"
        "分流抢票工具 https://www.bypass.cn/"
        "站长工具 https://tool.chinaz.com/"
        "Json.cn https://www.json.cn/"
        "阿里云开发者社区 https://developer.aliyun.com/my"
        "腾讯云开发者社区 https://cloud.tencent.com/developer/creator/article"
        "Pexels图片素材 https://www.pexels.com/zh-cn/"
        "就是加速 https://www.94speed.com/"
        "解析Youtube视频地址 https://tomp3.cc/en96j3f"
        "腾讯交互翻译 https://yi.qq.com/zh-CN/download"
        "Excalidraw漫画风格画图工具 https://excalidraw.com/"
        "PlantUML创建各种图表 https://plantuml.com/zh/"
        "draw.io流程图绘画工具 https://app.diagrams.net/"
        "ProcessOn在线流程图思维导图 https://www.processon.com/"
        "httpbin.org https://httpbin.org/"
        "webfx表情包 https://www.webfx.com/tools/emoji-cheat-sheet/"
        "EmojiAll表情包 https://www.emojiall.com/zh-hans/all-emojis"
        "比特虫在线制作ico图标 https://www.bitbug.net/"
    )

    # 定义新的计算字符串长度函数，考虑中文字符
    get_string_length() {
        local str="$1"
        local len=$(echo -n "$str" | wc -c)  # UTF-8字符长度计算
        echo $len
    }

    # 计算每列的最大长度
    max_length_site=0
    max_length_url=0
    for entry in "${sites[@]}"; do
        site=$(echo $entry | cut -d' ' -f1)
        url=$(echo $entry | cut -d' ' -f2)
        len_site=$(get_string_length "$site")
        len_url=$(get_string_length "$url")

        if (( len_site > max_length_site )); then
            max_length_site=$len_site
        fi

        if (( len_url > max_length_url )); then
            max_length_url=$len_url
        fi
    done

    # 打印表头
    printf "| %-5s | %-*s | %-*s |\n" "序号" $max_length_site "网站" $max_length_url "网址"
    printf "|-------|-%-*s-|-%-*s-|\n" $max_length_site "" $max_length_url ""

    # 打印内容
    idx=1
    for entry in "${sites[@]}"; do
        site=$(echo $entry | cut -d' ' -f1)
        url=$(echo $entry | cut -d' ' -f2)
        printf "| %-5s | %-*s | %-*s |\n" "$idx" $max_length_site "$site" $max_length_url "$url"
        ((idx++))
    done
}