@echo off
rem Local test server: http://localhost:8091/
cd /d "%~dp0"
python -m http.server 8091 --bind 127.0.0.1
