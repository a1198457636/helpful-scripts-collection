@echo off
cls

::��˾��git�˺�������Ϣ
set COMPANY_USERNAME="XXXX"
set COMPANY_EMAIL="XXXX@XXXXX.com"

::Github���˺�������Ϣ
set GITHUB_USERNAME="XXXXX"
set GITHUB_EMAIL="XXXXX@XXXXX.com"



echo.
echo.
echo *****************************************************************
echo ��������ѡ��Ҫ�л�����git�˺ţ�
echo.
echo 1  ��˾git�˺�
echo 2  github�˺�
echo.

set /p id=��ѡ��

echo.
echo.

if "%id%" == "1" (
    echo ��ʼ�л�����˾git�˺�...
    git config --global user.name %COMPANY_USERNAME%
    git config --global user.email %COMPANY_EMAIL%
    goto PrintAccount    
) else if "%id%" == "2" (
    echo ��ʼ�л���github�˺�...
    git config --global user.name %GITHUB_USERNAME%
    git config --global user.email %GITHUB_EMAIL%
    goto PrintAccount
) else (
    goto Error    
)


:PrintAccount
echo.
echo.
echo �л����!!!
echo.
echo.
echo ��ǰʹ�õ�git�˺���Ϣ���£�
git config user.name
git config user.email

goto End


:Error
echo ������󣡣�����ȷ�Ϻ�����ִ���������
goto End

:End
echo.
echo *****************************************************************
echo.

