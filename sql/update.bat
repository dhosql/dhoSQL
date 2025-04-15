@echo off

REM SQLite3 실행 파일 경로 설정
set SQLITE_PATH=./sqlite3.exe

REM 데이터베이스 파일 경로 설정
set DB_PATH=%APPDATA%\electron-react-boilerplate\dhoDatabase.sqlite3

REM SQL 쿼리 파일 경로 설정
set SQL_FILE=input.sql

REM 쿼리 파일을 실행하고 결과를 텍스트 파일로 저장
"%SQLITE_PATH%" "%DB_PATH%" < "%SQL_FILE%" > output.txt

echo Query result saved to output.txt
pause