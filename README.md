# 受注管理アプリケーション

このアプリケーションは、ユーザーがログインして受注情報を管理するためのシステムです。ユーザーは自身が作成した受注の一覧を閲覧したり、新規の受注を作成したり、各受注の詳細情報を確認することができます。

## 主な機能

### 1. ユーザーログイン
- ユーザーはメールアドレスとパスワードでログインします。
- ログイン後、ユーザーは自分が作成した受注の一覧を確認できます。

### 2. 受注の新規作成
- ログイン後、ユーザーは新しい受注を作成できます。
- 新規受注作成時に、顧客情報や注文内容（商品、数量、価格など）を入力します。

### 3. 自分が作成した受注一覧の閲覧
- ユーザーは自分が作成した過去の受注を一覧で閲覧できます。
- 各受注には、受注ID、顧客名、受注日、合計金額などの概要が表示されます。

### 4. 受注詳細の確認
- 各受注の詳細ページでは、受注ID、顧客情報、注文内容（商品名、数量、価格、金額など）を確認できます。
- 受注の状態やコメントも表示され、受注の進行状況が一目で分かります。

### 5. 戻るボタンやナビゲーション
- 受注一覧ページや詳細ページには、ユーザーが簡単に前のページに戻れるように「戻る」ボタンを配置しています。

## 使用技術

- **フロントエンド**: JSP (JavaServer Pages), HTML, CSS, JavaScript
- **バックエンド**: Java (Servlets, JSP), JDBC（データベース接続）
- **データベース**: MySQL (受注情報、ユーザー情報の管理)
- **認証**: ログインシステム（ユーザーIDとパスワードによる認証）

## アーキテクチャ

1. **ログイン画面**
   - ユーザーはログイン画面で認証情報（メールアドレス、パスワード）を入力します。
   - 認証に成功すると、ユーザーはダッシュボード画面にリダイレクトされます。

2. **ダッシュボード画面**
   - ユーザーがログイン後、ダッシュボードで自分の受注一覧を閲覧できます。
   - ここから、新規受注の作成や、過去の受注詳細にアクセスすることができます。

3. **受注作成画面**
   - ユーザーが新しい受注を作成するためのフォームです。
   - 顧客名、商品情報（商品ID、商品名、数量、単価）を入力して受注を登録できます。

4. **受注詳細画面**
   - 選択した受注の詳細情報を表示します。
   - 受注ID、注文商品、数量、単価、金額、注文の状態などが表示されます。

## 使用方法

1. **アプリケーションのセットアップ**
   - アプリケーションをセットアップするには、以下の手順に従ってください。

   ```bash
   git clone https://github.com/Kitagawa19/SalesApp.git
   cd order-management-app