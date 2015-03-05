複数の新規IAM userを一度に追加します。

## 使い方

追加したいIAMユーザのユーザ名、パスワード、ユーザを追加するIAMグループを記述したCSVファイルを用意します。

```user_password_group.csv
test_user_01,kG3MnDlx,testGroup
test_user_02,pGw4B40Z,testGroup
test_user_03,QQa57hFd,testGroup
```

CSVファイルのファイル名をコマンドライン引数として、addusers.rb を実行します。

```
$ ruby addusers.rb user_pasword_group.csv
```
