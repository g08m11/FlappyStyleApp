### FlappyStyleApp
==============

Swiftでのゲーム開発を行うトレーニングです。


## 前提
１・Xcode6 GM seedをインストール済みであること

## ゴール
以下のようなFlappy birdにちなんだ「Flappy Zigexnbu」といったゲームを作成します。

![起動画面](https://github.com/g08m11/FlappyStyleApp/wiki/images/arubaito_ios_z2.gif)


## 目次
* [Flappy Birdとは](https://github.com/g08m11/FlappyStyleApp/wiki/Flappy-Bird%E3%81%A8%E3%81%AF%EF%BC%9F)

  *  [1-1.設定が済んだプロジェクトをクローンしよう！](https://github.com/g08m11/FlappyStyleApp/wiki/Flappy-Bird%E3%81%A8%E3%81%AF%EF%BC%9F#1-1%E8%A8%AD%E5%AE%9A%E3%81%8C%E6%B8%88%E3%82%93%E3%81%A0%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E3%82%92%E3%82%AF%E3%83%AD%E3%83%BC%E3%83%B3%E3%81%97%E3%82%88%E3%81%86)

* [Xcodeの使い方を学ぼう](https://github.com/g08m11/FlappyStyleApp/wiki/Xcode%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9%E3%82%92%E5%AD%A6%E3%81%BC%E3%81%86)

 *  [2-1.Xcodeを起動してみよう](https://github.com/g08m11/FlappyStyleApp/wiki/Xcode%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9%E3%82%92%E5%AD%A6%E3%81%BC%E3%81%86#2-1xcode%E3%82%92%E8%B5%B7%E5%8B%95%E3%81%97%E3%81%A6%E3%81%BF%E3%82%88%E3%81%86)

 *  [2-2.エラーをチェックしてみよう](https://github.com/g08m11/FlappyStyleApp/wiki/Xcode%E3%81%AE%E4%BD%BF%E3%81%84%E6%96%B9%E3%82%92%E5%AD%A6%E3%81%BC%E3%81%86#2-2%E3%82%A8%E3%83%A9%E3%83%BC%E3%82%92%E3%83%81%E3%82%A7%E3%83%83%E3%82%AF%E3%81%97%E3%81%A6%E3%81%BF%E3%82%88%E3%81%86)

* [ゲームに必要な機能を実装しよう](https://github.com/g08m11/FlappyStyleApp/wiki/%E3%82%B2%E3%83%BC%E3%83%A0%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E6%A9%9F%E8%83%BD%E3%82%92%E5%AE%9F%E8%A3%85%E3%81%97%E3%82%88%E3%81%86)

  *  [3-1.画像設定のためのソースコードを書きましょう](https://github.com/g08m11/FlappyStyleApp/wiki/%E3%82%B2%E3%83%BC%E3%83%A0%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E6%A9%9F%E8%83%BD%E3%82%92%E5%AE%9F%E8%A3%85%E3%81%97%E3%82%88%E3%81%86#3-1%E7%94%BB%E5%83%8F%E8%A8%AD%E5%AE%9A%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AE%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%8D%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)

  *  [3-2.キャラクターを動かすためのソースコードを書きましょう](https://github.com/g08m11/FlappyStyleApp/wiki/%E3%82%B2%E3%83%BC%E3%83%A0%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E6%A9%9F%E8%83%BD%E3%82%92%E5%AE%9F%E8%A3%85%E3%81%97%E3%82%88%E3%81%86#3-2%E3%82%AD%E3%83%A3%E3%83%A9%E3%82%AF%E3%82%BF%E3%83%BC%E3%82%92%E5%8B%95%E3%81%8B%E3%81%99%E3%81%9F%E3%82%81%E3%81%AE%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%8D%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)

  *  [3-3.iosシュミレーターを使ってFlappyを動かしましょう](https://github.com/g08m11/FlappyStyleApp/wiki/%E3%82%B2%E3%83%BC%E3%83%A0%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E6%A9%9F%E8%83%BD%E3%82%92%E5%AE%9F%E8%A3%85%E3%81%97%E3%82%88%E3%81%86#3-3ios%E3%82%B7%E3%83%A5%E3%83%9F%E3%83%AC%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6flappy%E3%82%92%E5%8B%95%E3%81%8B%E3%81%97%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)

  *  [3-4.ゲームを改善させよう](https://github.com/g08m11/FlappyStyleApp/wiki/%E3%82%B2%E3%83%BC%E3%83%A0%E3%81%AB%E5%BF%85%E8%A6%81%E3%81%AA%E6%A9%9F%E8%83%BD%E3%82%92%E5%AE%9F%E8%A3%85%E3%81%97%E3%82%88%E3%81%86#3-4%E3%82%B2%E3%83%BC%E3%83%A0%E3%82%92%E6%94%B9%E5%96%84%E3%81%95%E3%81%9B%E3%82%88%E3%81%86)


## おまけ
上記の内容が終了した方はこちらも試してみましょう！

### WebViewApp
==============

Swiftで「webView」を使ってwebアプリを表示するトレーニングです。


## 前提
１・Xcode6 GM seedをインストール済みであること

## ゴール
以下のようなwebViewを使ったアプリを作成します。


## 目次
* [webViewとは](https://github.com/g08m11/FlappyStyleApp/wiki/%EF%BC%91%E3%83%BB%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%92%E8%90%BD%E3%81%A8%E3%81%97%E3%81%A6%E3%81%8D%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)

  *  [1-1.はじめてのプロジェクトを作成しよう]()

* [アプリに必要な機能を実装しよう]()

  *  [2-1.Story Boardを使おう](https://github.com/g08m11/FlappyStyleApp/wiki/%EF%BC%92%E3%83%BB%E7%94%BB%E5%83%8F%E8%A8%AD%E5%AE%9A%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AE%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%8D%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)

  *  [2-2.webViewに表示させる設定をしよう](https://github.com/g08m11/FlappyStyleApp/wiki/%EF%BC%93%E3%83%BBFlappyBird%E3%82%92%E5%8B%95%E3%81%8B%E3%81%99%E3%81%9F%E3%82%81%E3%81%AE%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E3%82%92%E6%9B%B8%E3%81%8D%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)

  *  [2-3.iosシュミレーターを使ってwebViewを動かしましょう](https://github.com/g08m11/FlappyStyleApp/wiki/%EF%BC%94%E3%83%BBios%E3%82%B7%E3%83%A5%E3%83%9F%E3%83%AC%E3%83%BC%E3%82%BF%E3%83%BC%E3%82%92%E4%BD%BF%E3%81%A3%E3%81%A6Flappy%E3%82%92%E5%8B%95%E3%81%8B%E3%81%97%E3%81%BE%E3%81%97%E3%82%87%E3%81%86)
