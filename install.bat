@echo off

REM 현재 배치 파일이 실행되는 경로에서 상대경로로 dhoDatabase 파일 찾기
set SOURCE_FILE=%~dp0\sql\dhoDatabase.sqlite3

REM %AppData% 경로로 복사할 대상 경로 설정
set DEST_DIR=%APPDATA%\electron-react-boilerplate

REM 대상 디렉터리가 없으면 생성
if not exist "%DEST_DIR%" (
    mkdir "%DEST_DIR%"
)

REM dhoDatabase 파일이 존재하면 update.bat 실행
if exist "%DEST_DIR%\dhoDatabase.sqlite3" (
    echo updateing db
    cd sql
    call "update.bat"
) else (
    echo dhoDatabase.sqlite3 not found, copying the file...
    copy "%SOURCE_FILE%" "%DEST_DIR%\"
)

REM 복사 완료 메시지
echo Process completed. Check the destination directory: %DEST_DIR%.

pause
