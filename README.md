# wordgame

## Hamackathon#5 連想ワードゲーム
---



## README

環境変数SEACRET_KEYを設定しないと、起動時にdeviseのSEACRET_KEYが設定されていない旨のエラーが出ます。
SEACRET_KEYに何か適当な値を設定してから起動してください。

例（ubuntu環境）

./bach_profileに以下を追記

export SEACRET_KEY="9c63df9207b56947ab15c7b2c3362a64c8016abd81e2136901fa55b0edf9c309a2aaec31c42c23b6ea061b03a180cb84d314f373c383f48cb025ab90"

sourceコマンドで反映

$source ~/.bash_profile

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## To start app

```
rails new wordgame -m http://railswizard.org/4258808faddde99f9ebc.rb -J -T
``` 

