#  Dart FullStack App 


[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)

[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

```sh

my_project
├── apps
│   ├── TaskApp
│   └── TodoApp
│ 
├── backend
│   ├── dartfrog(server)
│   └── compose
│   └── deploy
│  
├── packages
│   ├──  core
│   │      ├── analytics
│   │      └── data
│   │      └── database
│   │      └── domain
│   │      └── model
│   │
│   └── feature
│          └── auth
│ 
├── melos.yaml  
├── pubspec.yaml 
└── README.md

```

### Architecture & Design

![image](https://github.com/rensawamo/melos-fullstack-app/assets/106803080/f8268492-f778-44ed-a193-f5e404bce366)



### bootstrap
melos の環境構築と dart frogのサーバのセットアップ
```sh
$ make bs
```

### frontend start 
```sh
$ make front-start 
```

### 新しい dart  プロジェクトを追加したいとき
```sh
$ dart create -t package FOLDERNAME
```


# Deploy Azure
### サブスクの設定
```sh
$ az account list
$ az account set -s YOURID
```

### リソースグループの追加と aca login
```sh
$ az acr create     --resource-group <RG GroupyName>   --name <ACR resistryName>     --sku basic     --admin-enabled true
$ az acr login --name <ACR Name>
```

### ログインサーバの取得
```sh
$ az acr list --resource-group container-sample <ACR resistryName> --query "[]
.{acrLoginServer:loginServer}" --output table

AcrLoginServer
-------------------------
resistrysample.azurecr.io
```

### Docker file をbuild
```sh
$ docker build -t <CREATE DOCKER IMAGENAME>:latest .
```

### ACRのリポジトリに　Docker Imageをpush
```sh
$ docker push resistrysample.azurecr.io/aa<CREATED DOCKER IMAGENAME>a:latest
```


### ACI にデプロイ
```sh
$ az container create --resource-group myResourceGroup --name aci-tutorial-app --image <acrLoginServer>/aci-tutorial-app:v1 --cpu 1 --memory 1 --registry-login-server <acrLoginServer> --registry-username <service-principal-ID> --registry-password <service-principal-password> --ip-address Public --dns-name-label <aciDnsLabel> --ports 80
```

### デプロイの進行の確認
```sh
$ az container show --resource-group myResourceGroup --name aci-tutorial-app --query instanceView.state
```

### アプリとコンテナのログを確認
```sh
$ az container show --resource-group myResourceGroup --name aci-tutorial-app --query ipAddress.fqdn
```


### ACI の実行中のコンテナに接続
```sh
$ az container attach --name <APPNAME>  --resource-group <RGNAME>
```




