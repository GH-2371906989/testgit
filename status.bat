@echo off&Setlocal enabledelayedexpansion
if exist .git (
echo 查看状态
	git status
echo 查看更改的值
	git diff
	set /p input=e 退出，(回车  执行 git add . 命令)
	if !input! == e (
	goto ex
	)
	git add .
	echo 查看状态
	git status
	set /p cinput=请输入存储描述：(回车结束)
	if "!cinput!" == "" (
	goto ex
	)
	git commit -m "!cinput!"
	echo 查看状态
	git status
)
:ex
pause