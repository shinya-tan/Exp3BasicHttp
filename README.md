# Exp3BasicHttp
For Labo of Basic HTTP for Exp3 of Univ

## Mission

1. show Server Directory README.md
2. show Client Directory README.md
2. show Curl.md

## Setup

1. access 'https://github.com/Hardw01f/Exp3BasicHttp'
2. fork this repository to your Github

```
$ git clone git@github.com:[YOUR_GITHUB_ACCOUNT_NAME]/Exp3BasicHttp.git
```

```
$ cd Exp3BasicHttp
```

```
$ git checkout -b Create/[YOUR_NAME] 
```

```
$ git remote add basichttp/[YOUR_NAME] https://github.com/[YOUR_GITHUB_ACCOUNT_NAME]/Exp3BasicHttp.git
```

3. Create and Edit code

4. Commit

5. Push 

```
$ git push Create/[YOUR_NAME] basichttp/[YOUR_NAME]
```

git push [BRANCH_NAME] [REMOTE_REPOSITORY_NAME]

*Please Don't push origin and Don't '$ git push'*

## 課題
### Httpheaderの種類
Cache-Controlとは
- リクエストとレスポンスの両方でキャッシュに対する指示が格納されている.また,キャッシュを使用する場合は次の通り.
- ステータスコードが 301, 302, 307, 308, 410 の何れかで、かつCache-Control に no-store がないか、 プロキシ経由で private がなく、 かつAuthorization が設定されていない
- ステータスコードが 301, 302, 307, 308, 410 の何れか
- public, max-age s-maxage の何れかが Cache-Control に指定されている
- Expires ヘッダー(リソースの有効期限の指標)が設定されている.

### Cookieとは
- webサイトからユーザのブラウザに送られるデータを保存するためのテキストファイルのこと.その中には,sessionIDやサイトを訪れた日時等が格納されている.
### CookieとSessionIDの違いはなんですか？
- 接続中のユーザーの活動に関連する情報のidでcookieはユーザのブラウザに送られるデータを保存するためのテキストファイルでsessionid以外の情報も持てる,ブラウザが持てるデータ領域のこと.なので,sessionidはただの識別子でcookieはデータの領域である.
### Cookieの管理方法は？
- ブラウザに保存されている.
(例)chromeのcookieの保存場所
Users/ユーザー名/Library/Application Support/Google/Chrome/Defaultの中に保存されている.表示としてdeveloperツールを使用すると良い.

### SessionIDの管理方法は？
- SessionIDの管理方法として,cookieの中に保存される.名称はJSESSIONIDで決められている.

### Cookieを利用したSessionの管理方法以外のSessionの管理方法を調べて見てください
- もし,cookieでセッションを管理できない場合は,URIに埋め込んで管理・使用することになる.
