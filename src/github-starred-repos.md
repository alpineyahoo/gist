# 自分がスターした全てのリポジトリ情報を取得
```bash
#!/usr/bin/env bash

# 実行に必要なコマンド
# jq (brew install jq)
# sponge (brew install sponge または brew install moreutils)
# tqdm (pipx install tqdm)
# sd (brew install sd)
# curl

_user="alpineyahoo" # 自分のGitHubアカウント名に変更
_header="Accept: application/vnd.github.star+json"
_root="https://api.github.com/users/$_user/starred"
_datadir="$HOME/var/backups/github-starred-repos" # JSONファイルを置きたいディレクトリ
_json="$_datadir/$(date +%Y%m%d-%H%M%S).json"
request(){
	curl -H "$_header" -sL "${_root}?page=${index}&per_page=100" |
	jq '. += [input.[]]' "$_json" - |
	sponge "$_json" &&
	echo "${index}";
}

# リクエスト数(ページ数)カウント
requests=$(curl -i -H "$_header" -sL "${_root}?per_page=1" |
grep link |
sd "=" "\n" |
sd ">" "\n" |
tail -n 3 |
head -n 1 |
awk '{printf("%d\n", $0/100 + 1)}')

echo '[]' > "$_json"
(for index in $(seq 1 $requests); do eval "request"; done) |
tqdm --total $requests --null
echo "Data was exported to $_json"
```
