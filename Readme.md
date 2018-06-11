# Reproduce the error

here the error that is reproduced : 

```
app_1  | INFO[2018-06-11T21:08:47Z] agent: Dkron agent starting                   node=c792d93a72a9
app_1  | INFO[2018-06-11T21:08:47Z] agent: joining: [] replay: true               node=c792d93a72a9
app_1  | INFO[2018-06-11T21:08:47Z] agent: Listen for events                      node=c792d93a72a9
app_1  | INFO[2018-06-11T21:09:22Z] agent: Dkron agent starting                   node=c792d93a72a9
app_1  | INFO[2018-06-11T21:09:22Z] agent: joining: [] replay: true               node=c792d93a72a9
app_1  | INFO[2018-06-11T21:09:22Z] agent: Listen for events                      node=c792d93a72a9
app_1  | INFO[2018-06-11T21:11:03Z] agent: Dkron agent starting                   node=c792d93a72a9
app_1  | INFO[2018-06-11T21:11:03Z] agent: joining: [dkron] replay: true          node=c792d93a72a9
app_1  | INFO[2018-06-11T21:11:03Z] agent: joined: 1 nodes                        node=c792d93a72a9
app_1  | INFO[2018-06-11T21:11:03Z] agent: Listen for events                      node=c792d93a72a9
app_1  | INFO[2018-06-11T21:16:51Z] agent: Starting job                           job=job_that_should_not_work node=c792d93a72a9
app_1  | ERRO[2018-06-11T21:16:51Z] invoke: Specified executor is not present     executor=shell node=c792d93a72a9

```

## Run the sack : 

* git clone blabla
* `make up`
* go to `http://127.0.0.1:8080/dashboard` for dkron admin
* `make send-job JOB=test_on_server` This job is running from dkron server and everything is ok
* `make send-job JOB=test_on_agent` This job is running from dkron agent embeded is application image, and not working

All architecture and conf files are located under docker dir
