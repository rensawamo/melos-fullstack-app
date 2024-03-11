#  Dart FullStack App 


[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

![example workflow](https://github.com/baleen-studio/c6o-lite-app/actions/workflows/android.yml/badge.svg)

[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

```sh

my_project
├── apps
│   ├── TaskApp
│   └── TodoApp
│ 
├── backend
│      ├── dartfrog(server)
│      └── compose
│      └── deploy
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





