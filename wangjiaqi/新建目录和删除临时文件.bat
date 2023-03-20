set PrjPath=%~dp0

echo 当前路径信息： %PrjPath%
pause

cd %PrjPath%

if exist Prj (
	echo "Prj 已经存在"
	pause
	) else (
	md Prj
)
pause
if exist Src (
	echo "Src 已经存在"
	pause
	) else (
	md Src
)

if exist Core (
	echo "Core 已经存在"
	pause
	) else (
	md Core
)

if exist Constrain (
	echo "Constrain 已经存在"
	pause
	) else (
	md Constrain
)

if exist Debug (
	echo "Debug 已经存在"
	pause
	) else (
	md Debug
)

if exist Doc (
	echo "Doc 已经存在"
	pause
	) else (
	md Doc
)

if exist Sim (
	echo "Sim 已经存在"
	pause
	) else (
	md Sim
)

if exist Testbench (
	echo "Testbench 已经存在"
	pause
	) else (
	md Testbench
)





cd %PrjPath%\prj
del *.log
del *.rpt
del *.area
del *.db
del *.bid

rd /s/q al_ip
rd /s/q simulation

cd %PrjPath%\sim
del *.
del *.wlf

rd /s/q work
pause>nul