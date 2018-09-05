# Creating new Firefox profile with my settings

```
cat pyllyukko.user.js user.js > profile_dir/user.js
```

# Notes
## Search Engines

`mozlz4a.py` taken from https://gist.github.com/Tblue/62ff47bef7f894e92ed5

Decompress:

```
cd $PROFILE_DIR
python3 mozlz4a.py -d search.json.mozlz4 search.json
```

Compress:

```
python3 mozlz4a.py search.json search.json.mozlz4
```
