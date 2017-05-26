:: http://technet.microsoft.com/en-us/library/bb490894.aspx
:: F7     = history
:: Alt+F7 = history -c
:: F8     = Ctrl+R
:: Use & to run multiple commands e.g.: command1 & command2
:: Add this file as a REG_SZ/REG_EXPAND_SZ registry variables in HKEY_LOCAL_MACHINE\Software\Microsoft\Command or Processor\AutoRun HKEY_CURRENT_USER\Software\Microsoft\Command Processor\AutoRun
@echo off

:: Linux commands
doskey alias   = doskey $*
doskey cat     = type $*
doskey clear   = cls
doskey cp      = copy $*
doskey cpr     = xcopy $*
doskey grep    = find $*
doskey history = doskey /history
doskey kill    = taskkill /PID $*
::doskey ls      = dir $*
doskey man     = help $*
doskey mv      = move $*
doskey ps      = tasklist $*
doskey pwd     = cd
doskey rm      = del $*
doskey rmr     = deltree $*
doskey sudo    = runas /user:administrator $*

:: directory listing
doskey ls = dir
doskey lt = dir /b/a-d/od
doskey lta = dir /a-d/od
doskey la = dir /b/od
doskey ln = dir /on
doskey ld = /ad/od

:: GIT commands
doskey g = git $*
doskey gd = git diff
doskey gco = git checkout $*
doskey gcb = git checkout -b $*
doskey gre = git reset --hard $*
doskey gres = git reset HEAD~1 $*
doskey gr = git remote -v
doskey gb = git branch -v $*
doskey gs = git status $*
doskey gp = git push -u origin $*
doskey gbm = git branch -m $*
doskey gbd = git branch -D $*
doskey gc = git commit -am " $* "
doskey gst = git stash $*
doskey gsta = git stash apply $*
doskey gf = git fetch $*
doskey gh = git --help
doskey pull = git pull $*
doskey push = git push $*
doskey gist=git commit -am "" --allow-empty-message $T git push origin master
doskey grupdate = "git fetch upstream develop && git checkout develop && git merge upstream/develop && git push origin develop"

:: npm commands
doskey nu=npm update -g $*
doskey nig=npm install -g $*
doskey nis=npm install --save $*
doskey nisd=npm install --save-dev $*
doskey bis=bower install --save $*
doskey bisd=bower install --save-dev $*
doskey bb=youtube-dl -f bestvideo+bestaudio $*
doskey mp3=youtube-dl -f bestaudio -x --audio-format mp3 --embed-thumbnail $*
doskey yu=youtube-dl --update
doskey ph=python -m SimpleHTTPServer 80
doskey js=jekyll s -w -P 80 $*
doskey gor=go run $* main.go
doskey jsw=jekyll serve --watch $*
doskey ned=set NODE_ENV=development
doskey nes=set NODE_ENV=staging
doskey nep=set NODE_ENV=production
doskey psv=powershell -Command "& {$PSVersionTable.PSVersion}"

:: Launchers commands
doskey st = "C:\Program Files\Sublime Text 2\sublime_text.exe" $*
doskey fx = "C:\Program Files\Mozilla Firefox\firefox.exe" $*
doskey ie = "C:\Program Files\Internet Explorer\iexplore.exe" $*
doskey np = "C:\Users\SelectTV-02072017 wo\AppData\Local\slack\slack.exe" $*
doskey npp = "C:\Program Files (x86)\Notepad++\notepad++.exe" $*
doskey wm = "C:\Program Files (x86)\WinMerge\WinMergeU.exe" $*
doskey slack = "C:\Users\SelectTV-02072017 wo\AppData\Local\slack\slack.exe"" $*

:: System commands
doskey e = exit
doskey c = cd /

:: shot navigation
:: doskey ss = %USERPROFILE%\cmdtls\ss.cmd $*
doskey config = npp %USERPROFILE%\doskey.bat
DOSKEY cd~=cd %USERPROFILE%
DOSKEY cd!=cd %USERPROFILE%\AppData
DOSKEY cd#=cd %USERPROFILE%\Desktop
DOSKEY cd@=cd %USERPROFILE%\Documents

:: Misc commands
doskey lenv = ".\.venv\Scripts\activate.bat"
REM Set home path
if not defined HOME set HOME=%USERPROFILE%

:: Python commands
DOSKEY python2=C:\Python27\python.exe $*
DOSKEY pip2=C:\Python27\Scripts\pip2.exe $*
