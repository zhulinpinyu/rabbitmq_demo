# rabbitmq_demo
Producer is blog and Customer is dashboard, blog exchange dashboard is bing exchange to queue.

```shell
cd rabbitmq_demo
foreman start
```

if you init use this
```shell
cd ./blog_exchange_dashboard
rake rabbitmq:setup
```


Ref: [https://ruby-china.org/topics/22332](https://ruby-china.org/topics/22332)
