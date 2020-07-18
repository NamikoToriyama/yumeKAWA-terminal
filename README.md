# ゆめカワ🦄ターミナルを作ろう！

![img](https://github.com/NamikoToriyama/yumeKAWA-terminal/blob/master/mymero.png)
## 環境設定
まず，mymeroテキストをPCの好きな場所に配置します．

```
$ vi ~/.bash_profile
```
で.bash_profileを開き，

```
cat ~/mymero #メイメロが置いてあるディレクトリを書く
PS1='\[\033[31m\]\u@\h\[\033[00m\]:\[\033[01m\]\w\[\033[31m\] 💜💙💚🦄🌈💛🧡❤️  $ '
```
とかいて`esp`を押した後に`:wq`で保存します．
(赤のハートの絵文字はなぜか❤️になるため，自分で変換して対応してください😢)
`\[\033[31m\]｀は文字色とかの設定をしているので，色を変更したい人は調べてみるといいかもしれません．

```
$ source ~/.bash_profile
```
として，設定を保存します．

## ターミナルの設定
- ターミナルを開き，上部にあるメニューから`ターミナル > 環境設定`を選択します．
- profileから背景色を選択する部分があると思うので，そこでゆめカワ🦄な色(おすすめは薄ピンク)を選択します．
    - 人によってゆめカワ🦄な色は違うと思うのでここではあえて指定しません．
    - ~~指定のするのが難しい~~
- 文字色については真ん中あたりにtextという色設定があると思うので，そちらで指定します．
    - 背景色が濃い場合は黒または白を，背景色が薄い場合は濃い目の色を選択するといいと思います．
    - 文字色や背景を色付きにすると，Wordでコピペするときに色がついてしまって面倒なことがあるので注意してください．

以上でゆめカワ🦄ターミナルの完成です

## Gitのブランチも表示させたい
gitをよく使う方はブランチも表示させられると便利だと思います．
私はこの[リンク](https://qiita.com/lemtosh469/items/334ff76366e054a3a3aa)を参考に表示させています．
私のターミナル設定も`.bash_profile`に載せておきましたので，こちらも参考にしてみてください．
