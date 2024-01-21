# pdm を使った開発環境作成ワークフロー
```shell
mkdir project1
cd project1 # プロジェクトディレクトリに移動
git init # git 初期化
touch README.md
nano README.md # README.md ファイルを作成&編集
git add README.md
git commit -m "create README.md"
pdm init # pdm 初期化
git add -A
git commit -m "pdm init"
nano pyproject.toml # pyproject.toml 内の Description を適宜編集
git add pyproject.toml
git commit -m "edit pyproject.toml"
nano pdm.toml # 必要に応じて pdm.toml 作成&編集
git add pdm.toml
git commit -m "create and edit pdm.toml"
pdm add foobar # Python ライブラリを追加
git add -A
git commit -m "add library foobar"
```
