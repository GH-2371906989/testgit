@echo off&Setlocal enabledelayedexpansion
if exist .git (
echo �鿴״̬
	git status
echo �鿴���ĵ�ֵ
	git diff
	set /p input=e �˳���(�س�  ִ�� git add . ����)
	if !input! == e (
	goto ex
	)
	git add .
	echo �鿴״̬
	git status
	set /p cinput=������洢������(�س�����)
	if "!cinput!" == "" (
	goto ex
	)
	git commit -m "!cinput!"
	echo �鿴״̬
	git status
)
:ex
pause