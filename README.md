# ImageMagick

## 準備

```sh
./scripts/init.sh
```

もしくは

```sh
echo -e "USER_ID=$UID\nGROUP_ID=$UID" > .env
docker-compose build
```

## JPGs to PDF

*.jpg ファイルを shared/ に配置

```sh
docker-compose run --rm share sh -c "convert *.jpg output.pdf && chown 1000:1000 -R /root/shared"
```

もしくは

```sh
./scripts/exec.sh
```

## ZIP (including JPGs) to PDF

*.zip ファイルを shared/ に配置

```sh
./scripts/unzip.sh
```
