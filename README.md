AWS IAM で複数の新規ユーザを同時に作成しグループに追加します。

## 使い方

追加したいIAMユーザのユーザ名、パスワード、ユーザを追加するIAMグループを記述したCSVファイルを用意します。

``` user_password_group.csv
test_user_01,kG3MnDlx,testGroup
test_user_02,pGw4B40Z,testGroup
test_user_03,QQa57hFd,testGroup
```

AWS SDK for Rubyなどの必要なGemをインストールします。

```
$ bundle install
```

CSVファイルのファイル名をコマンドライン引数として、addusers.rb を実行します。

```
$ ruby addusers.rb user_password_group.csv
```

See also:

* [AWS IAM で複数の新規ユーザを同時に作成しグループに追加する(AWS SDK for Ruby)](http://qiita.com/rikitoro@github/items/45f9c85c218343e69014)
