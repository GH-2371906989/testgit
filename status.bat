@echo off&Setlocal enabledelayedexpansion
if exist .git (
	:loop
	set input=""
	set /p input=e 退出，s 查看状态，d 查看内容变化，add 添加到缓存，comm 添加到仓库，push 添加到远程, pull 拉取远程

cls 

	if !input! == e (
	goto ex
	)

	if !input! == s (
	echo ">>git status" 
	git status
	)
	
	if !input! == d (
	echo ">>git diff" 
	git diff
	)

	if !input! == add (
	echo ">>git add ." 
	git add .
	)

	if !input! == comm (
	set /p describe=请输入描述
	if "!describe!" == "" (
	goto loop
	)
	git commit -m "!describe!"
	)
	
	if !input! == push (
	echo ">>git push origin master" 
	git push origin master
	)
	
	if !input! == pull (
	echo ">>git pull origin master" 
	git pull origin master
	)

	goto loop

	
)
:ex
pause