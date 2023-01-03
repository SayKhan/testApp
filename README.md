## Как запустить сборку(Вообще все эти шаги я обычно запускаю в дженкинзе)

`sudo docker-compose up -d`

> Поднимается постгре, восстанавливается проект сонаркуба testapp, потом сам сонаркуб, и идёт проверка кода

### Посмотреть результат проверки можно здесь

[SonarQube testapp](http://localhost:9000/dashboard?id=testapp)

### Скачиваем и отправляем в docker hub нашу проверенную сборку

`sudo docker login`

`sudo docker-compose build testapp && sudo docker-compose push testapp`

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
