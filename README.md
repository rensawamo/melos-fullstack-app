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
│      ├── analytics
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


### bootstrap
melos の環境構築と dart frogのサーバのセットアップ
```sh
$ make bs
```

### frontend start 
```sh
$ make front-start 
```

