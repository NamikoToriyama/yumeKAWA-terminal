# ゆめカワ🦄ターミナルを作ろう！

## zsh対応
![img](https://github.com/NamikoToriyama/yumeKAWA-terminal/blob/master/mymero2.png)

zshの場合はバージョンシステムを表示させる機能がついているため、その機能を使って表示させます。

見た目の関係で今回はRPROMPT（コマンドを打つ場所の後ろ)にブランチを表示させていますが、PROMPTに設定することで前に表示することもできます。
```
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%F{red}'\$vcs_info_msg_0_' '
PROMPT='💜💙💚🦄🌈💛🧡❤️  %F{cyan}%~ %F{default}\$ '
zstyle ':vcs_info:git:*' formats '%b'
```

### 参考
https://git-scm.com/book/ja/v2/Appendix-A%3A-%E3%81%9D%E3%81%AE%E4%BB%96%E3%81%AE%E7%92%B0%E5%A2%83%E3%81%A7%E3%81%AEGit-Zsh%E3%81%A7Git%E3%82%92%E4%BD%BF%E3%81%86<br>
https://qiita.com/ktr_type23/items/3eb782f98c7a5f4c60b0




## 以下bash
![img](https://github.com/NamikoToriyama/yumeKAWA-terminal/blob/master/mymero.png)
## 環境設定
まず，mymeroテキストをPCの好きな場所に配置します．

```
$ vi ~/.bash_profile
```
で.bash_profileを開き，

```
cat ~/mymero #メイメロが置いてあるディレクトリを書く
PS1='\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\] 💜💙💚🦄🌈💛🧡❤︎ $ '
```
とかいて`esp`を押した後に`:wq`で保存します．

※ 赤のハートの絵文字は環境によっては表示されないため，自分で変換して対応してください😢 

※ うまくいかない場合は変なスペースとかが入っている可能性があるので，`.bash_profile`のrawからコピペするか，絵文字は手打ちしてみてください

`\[\033[31m\]`は文字色とかの設定をしているので，色を変更したい人は調べてみるといいかもしれません．

```
$ source ~/.bash_profile
```
として，設定を保存します．

## ターミナルの設定
- ターミナルを開き，上部にあるメニューから`ターミナル > 環境設定`を選択します．
- profileから背景色を選択する部分があると思うので，そこでゆめカワ🦄 な色(おすすめは薄ピンク)を選択します．
    - 人によってゆめカワ🦄 な色は違うと思うのでここではあえて指定しません．
    - ~~指定のするのが難しい~~
- 文字色については真ん中あたりにtextという色設定があると思うので，そちらで指定します．
    - 背景色が濃い場合は黒または白を，背景色が薄い場合は濃い目の色を選択するといいと思います．
    - 文字色や背景を色付きにすると，Wordでコピペするときに色がついてしまって面倒なことがあるので注意してください．

以上でゆめカワ🦄 ターミナルの完成です

## Gitのブランチも表示させたい
gitをよく使う方はブランチも表示させられると便利です．

私はこの[リンク](https://qiita.com/lemtosh469/items/334ff76366e054a3a3aa)を参考に設定を行いました．

私のターミナル設定を`.bash_profile`に載せておきましたので，こちらも参考にしてみてください．
