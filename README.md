# アプリ名
### Task app

### コンテナーの作成とアプリの立ち上げ
```console
// build docker image
$ docker pull kengo333/task_web
//または
$ docker-compose build

// create and migrate db
$ docker-compose run web bundle exec rails db:create
$ docker-compose run web bundle exec rails db:migrate
$ docker-compose run web bundle exec rails db:seed
```
