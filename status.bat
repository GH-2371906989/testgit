@echo off&Setlocal enabledelayedexpansion
if exist .git (
	:loop
	set input=""
	set /p input=e �˳���s �鿴״̬��d �鿴���ݱ仯��add ��ӵ����棬comm ��ӵ��ֿ⣬push ��ӵ�Զ��, pull ��ȡԶ��

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
	set /p describe=����������
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