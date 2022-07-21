# ImageMagick

## 準備

```sh
docker-compose build
```
*.jpg ファイルを shared/ に配置

## JPGs to PDF

```sh
docker-compose run --rm share sh -c "convert *.jpg output.pdf && chown 1000:1000 -R /root/shared"
```

もしくは

```sh
./scripts/exec.sh
```
