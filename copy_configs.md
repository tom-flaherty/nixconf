## Ghostty



## Helix

Copy system config to this repo
```bash
gio trash --force ./helix && \
cp -R ~/.config/helix ./helix && \
git add ./helix/* && \
git commit -m "update helix config" && \
git push
```

Copy this repo's config to system config
```bash
gio trash --force ~/.config/helix && \
cp -R ./helix ~/.config/helix
```
