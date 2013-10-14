TDDBC Sendai the 3rd
====================================

    これは,2013年10月12日に行われたTDDBC仙台3.0の課題への取り組みです.
    [課題1-3]区間の接続に関して,誤りがあったので,これに対するテストを追加してテストがREDになった状態から開始します.

  + [課題](http://devtesting.jp/tddbc/?TDDBC%E4%BB%99%E5%8F%B003%2F%E8%AA%B2%E9%A1%8C)
  + [用語集](http://devtesting.jp/tddbc/?TDDBC%E4%BB%99%E5%8F%B003%2F%E8%AA%B2%E9%A1%8C%E7%94%A8%E8%AA%9E%E9%9B%86)
  : クラス名の付け方で迷ったときは,ここにあるものを使ったらよいでしょう
  + [補足サイト](http://w3e.kanazawa-it.ac.jp/math/category/other/syuugou/henkan-tex.cgi?target=/math/category/other/syuugou/kukann.html)
  : 数学的な仕様に関して不明な部分があったとき,ここを参照すると少しだけ詳しいです.

## 動作確認環境
* ruby 2.0.0

## セットアップ
```bash
gem install bundler
bundle install --path vendor/bundle
```

## ライブラリ
### [guard](https://github.com/guard/guard)
`guard` コマンドを実行すると入力待ちの状態になるので、あとはファイルが変更される度にテストが実行されます

#### Mac
growl: http://growl.info/
