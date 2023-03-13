# simple python docker container
ローカルのファイルを適当にテストしたい時用。

ローカルのディレクトリをマウントして使う。

pythonのバージョン、pipなどは外から設定できる
## usage
```
cp -r settings/sample/ settings/[your project name]
# pythonのバージョン、マウントするディレクトリなどを設定
vim settings/[your project name]/.env
# pipで必要なものがあれば修正
vim settings/[your project name]/requirements.txt
docker compose --env-file ./settings/[your project name]/.env up -d
```
