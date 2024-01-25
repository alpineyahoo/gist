# `Julia` の開発環境作成手順のメモ
## 格納場所(Julia関係各種ファイル・ディレクトリのルートディレクトリ)
デフォルト: `~/.julia`<br>
環境変数`JULIA_DEPOT_PATH`がある場合はその配下

## グローバルな使用

```shell
julia -q --project=@main
```

- `-q`: 出力抑制
- `--project=@main`: `$JULIA_DEPOT_PATH/environments/main` を仮想環境として使用 (イ)

--> なぜこうする必要があるかというと、私の場合`julia`は`brew`でインストールしているため、
バージョンがアップデートされる度にデフォルトで使用される仮想環境(ライブラリ)の場所が変わる
(上記(イ)の箇所の`environments/v**` のこと)。つまり、何も設定しなければデフォルトライブラリー
の内容はアップデートの際引き継げない。最初から`$JULIA_DEPOT_PATH/environments/main`をデフォルトで
利用するようにしておく。共有環境は@foobarで表現できる。この場合下記二つは同じ意味:

- --project=@main
- --project=$JULIA_DEPOT_PATH/environments/main

REPLではPkgモードに入った後`activate --shared main`をするのと同じ。<br>
例えば`alias julia-main="julia -q --project=@main"`を`~/.zshrc`に登録すればいいのでは。<br>
補足: `direnv`ユーザーなら`~/.envrc`に`export JULIA_PROJECT=@main`と追記すれば`--project=@main`のオプションは要らない。

## ローカルプロジェクトの場合

```shell
cd /path/to/project
julia --project=. # カレントディレクトリの設定を利用することを宣言
# これもグローバルと同様で、/path/to/project/.envrc に export JULIA_PROJECT=$PWD
# を追記すれば上記の --project=. は要らない
# ここからREPL
] add Example # ] でPkgモード, add Example で Example パッケージを追加
status # 現在使用中の Project.toml の場所を表示(カレントディレクトリに作成されている)
Ctrl-D # 抜ける
```
