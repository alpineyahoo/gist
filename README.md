# gist
my gists collection
## Dir
`src`: src gist files  
`mod`: modules linked to gists  

## Workflow
```bash
nano src/foobar/baz.md
gh gist create -p src/foobar/baz.md
git submodule add https://gist.github.com/alpineyahoo/******* mod/foobar/bar.md

# gist update
nano src/foobar/baz.md
bat .gitmodules # check <long_id_string>
gh gist edit <long_id_string> src/foobar/baz.md # <long_id_string>: mirror gist of src/foobar/baz.md
git submodule update --remote
```
