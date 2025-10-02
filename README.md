# DHOSQL DB

이 프로젝트는 **DHOSQL**에서 사용할 수 있는 데이터베이스 파일을 제공합니다.  
해당 데이터베이스는 기본적으로 **읽기 전용**이며, DHOSQL 환경에서는 수정할 수 없습니다.

## DHOSQL 다운로드

데이터베이스를 열어 보려면 아래 링크에서 DHOSQL을 먼저 설치하세요.  
🔗 [DHOSQL](https://www.ssjoy.org/dho/free/3924552)

## 수정 또는 편집하려면

DHOSQL 환경에서는 수정이 불가능하므로, 데이터베이스를 편집하고 싶다면 **SQLite 전용 도구**를 사용해야 합니다.  
예를 들어:

- **DB Browser for SQLite** (SQLite Browser) — SQLite 데이터베이스 파일을 시각적으로 보고 수정할 수 있는 도구입니다. :contentReference[oaicite:0]{index=0}  
- 또는 다른 SQLite 편집 도구 (예: DBeaver 등)도 사용할 수 있습니다.

## 사용 방법 요약

- **읽기 전용으로 사용할 경우**  
  → DHOSQL을 설치한 뒤, 이 저장소의 데이터베이스 파일을 DHOSQL에서 바로 열기  

- **데이터베이스를 수정하고 싶은 경우**  
  1. `install.bat`을 **2회 실행**합니다.  
  2. [SQLite Browser](https://sqlitebrowser.org/) 등 SQLite 편집 도구를 설치합니다.  
  3. 아래 경로에 위치한 데이터베이스 파일을 엽니다:  
     ```
     %AppData%\Roaming\electron-react-boilerplate\dhoDatabase.sqlite3
     ```
  4. 원하는 테이블/데이터를 수정 후 저장합니다.  

---
