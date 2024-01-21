# `Julia` の開発環境作成手順のメモ
## 格納場所(Juliaのルートディレクトリ)
デフォルト: `~/.julia`  
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
利用するようにしておく。共有環境は@foobarで表現できる。この場合  
--project=@main と  
--project=$JULIA_DEPOT_PATH/environments/main は同じ意味。  
REPLではPkgモードに入った後`activate --shared main`をするのと同じ。  
例えば`alias julia-main="julia -q --project=@main"`を`~/.zshrc`に登録すればいいのでは。

## ローカルプロジェクトの場合

```shell
cd /path/to/project
julia --project=. # カレントディレクトリの設定を利用することを宣言
# ここからREPL
] add Example # ] でPkgモード, add Example で Example パッケージを追加
status # 現在使用中の Project.toml の場所を表示
Ctrl-D # 抜ける
```
