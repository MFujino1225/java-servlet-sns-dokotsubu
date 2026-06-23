# どこつぶ

Java Servlet/JSPを使用して作成したSNS風Webアプリケーションです。


## アプリケーション概要

ユーザーがログインし、つぶやきを投稿・閲覧できるアプリです。
Webアプリケーション開発の基礎を学習する目的で作成しました。
Servlet/JSPの知識を活用し、MVCモデルに沿って実装しています。


## ログインID

全ユーザー共通で「1234」に設定しています。


## 主な機能

* ログイン
* ログアウト
* つぶやき投稿
* つぶやき一覧表示
* 入力値チェック


## 画面イメージ

### ログイン画面
![ログイン画面](docs/images/login.png)

### つぶやき一覧画面
![一覧画面](docs/images/tweet-list.png)

### 投稿画面
![投稿画面](docs/images/post.png)


## システム構成

ブラウザ
↓
Servlet（Controller）
↓
アプリケーションスコープ
（つぶやきデータ保持）
↓
JSP（View）
↓
ブラウザ


### データ管理について

本アプリは学習目的で作成しているため、データベースは使用せず、
ServletContext（アプリケーションスコープ）に投稿データを保持しています。
サーバー再起動時にはデータは消去されます。


## 使用技術

* Java
* Servlet
* JSP
* HTML
* CSS
* Apache Tomcat
* Git / GitHub


## 実行環境

* Java 17
* Servlet / JSP
* Tomcat 9
* Eclipse IDE


## セットアップ手順

1. リポジトリをclone
2. EclipseにImport
3. Tomcat9を設定
4. サーバー起動
5. http://localhost:8080/dokotsubu/ にブラウザでリクエスト、またはEclipseで動的Webプロジェクト「dokotsubu」を選択・実行

## 工夫した点

* MVCモデルを意識して処理を分離
* 入力チェックを実装
* セッションを利用したログイン管理
* CSSでスマートフォン表示を考慮
