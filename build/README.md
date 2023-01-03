## Как запустить сборку

`sudo docker-compose up -d`

> Поднимается постгре, восстанавливается проект сонаркуба testapp, потом сам сонаркуб, и идёт проверка кода

### Посмотреть результат проверки можно здесь

[SonarQube testapp](http://localhost:9000/dashboard?id=testapp)

### Скачиваем и отправляем в docker hub нашу проверенную сборку

`sudo docker login`

`sudo docker-compose build testapp && sudo docker-compose push testapp`

## Можно дополнительно проверить ещё и на уязвимости Checkmarx SAST/OSS, но на неё не хватило времени