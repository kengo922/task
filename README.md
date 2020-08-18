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
]
### 参考記事
- https://qiita.com/nojinoji/items/e1b174220da8c81a1756
- https://qiita.com/nishina555/items/2c1f8bae980e426519bc
- https://github.com/activerecord-hackery/ransack
- https://docs.docker.com/compose/rails/

