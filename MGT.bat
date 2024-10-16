@echo off
echo 来自https://github.com/MaaXYZ/M9A/issues/61
echo 运行前请先记得 Switch controller
start "" "D:\Program Files\Netease\MuMuPlayer-12.0\shell\MuMuPlayer.exe" -v 1
echo Waiting for 10 seconds...
ping 127.0.0.1 -n 10 > nul
"D:\Program Files\Netease\MuMuPlayer-12.0\shell\adb.exe" -s 127.0.0.1:16416 shell settings get secure android_id
ping 127.0.0.1 -n 10 > nul
echo Starting MaaPiCli.exe...
start "-d" "%~dp0MaaPiCli.exe" -d
echo All tasks started.
exit