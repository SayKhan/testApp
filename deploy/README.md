## Как задеплоить

`cd ./deploy`

### Для разных стейджей разные папки
#### Для прода

```
cd prod
docker compose -f docker-compose.yml up -d
```

#### Проверяем в БД появились ли записи

`sudo docker exec -it deploy_db_1 psql -U produser -d produser -c "SELECT * FROM prodschema.fluentbit LIMIT 2;"`

#### Для дев-стенда

```
cd dev
docker compose -f docker-compose.yml up -d
```

#### Проверяем в БД появились ли записи

`sudo docker exec -it deploy_db_1 psql -U devuser -d devuser -c "SELECT * FROM devschema.fluentbit LIMIT 2;"`
