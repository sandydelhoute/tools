FOR /d /r . %d in (node_modules) DO @IF EXIST "%d" rm -rf "%d"