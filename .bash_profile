### 表示
cat ~/mymero #メイメロが置いてあるディレクトリを書く
PS1='\[\033[36m\]\w\[\033[31m\] 💜💙💚🦄🌈💛🧡❤️  $ '

## gitのブランチ表示させたい人向け(私のターミナルの設定)
cat ~/mymero #メイメロが置いてあるディレクトリを書く
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
if [ $UID -eq 0 ]; then
    PS1='\[\033[36m\]\w\[\033[31m\] 💜💙💚🦄🌈💛🧡❤️  $(__git_ps1)\[\033[00m\]\\$ '
else
    PS1='\[\033[36m\]\w\[\033[31m\] 💜💙💚🦄🌈💛🧡❤️  $(__git_ps1)\[\033[00m\]\\$ '
fi
