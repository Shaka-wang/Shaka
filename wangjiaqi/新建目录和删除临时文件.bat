set PrjPath=%~dp0

echo ��ǰ·����Ϣ�� %PrjPath%
pause

cd %PrjPath%

if exist Prj (
	echo "Prj �Ѿ�����"
	pause
	) else (
	md Prj
)
pause
if exist Src (
	echo "Src �Ѿ�����"
	pause
	) else (
	md Src
)

if exist Core (
	echo "Core �Ѿ�����"
	pause
	) else (
	md Core
)

if exist Constrain (
	echo "Constrain �Ѿ�����"
	pause
	) else (
	md Constrain
)

if exist Debug (
	echo "Debug �Ѿ�����"
	pause
	) else (
	md Debug
)

if exist Doc (
	echo "Doc �Ѿ�����"
	pause
	) else (
	md Doc
)

if exist Sim (
	echo "Sim �Ѿ�����"
	pause
	) else (
	md Sim
)

if exist Testbench (
	echo "Testbench �Ѿ�����"
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