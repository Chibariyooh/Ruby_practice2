# README
* Ruby version:2.6.6  
# Deviseを用いたログイン機能を実装しました　　

### ・ユーザーのIdとpasswordの一致ができているか確認。

### ・ユーザーメニューではデータの追加のみ。  

### ・今後は編集、削除ができるように実装する予定。

### (作動方法)  
コマンドで作動させるディレクトリに移動した後、　　

```rake import_csv:users```　　

上記のrakeを作動させることでCSVデータをインポート。　　

その後```User.all```とするとインポートされたデータを確認可能。　　

