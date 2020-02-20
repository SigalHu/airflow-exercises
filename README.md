# easy-airflow

一个可以快速上手 airflow 项目框架

## 使用步骤

1. 安装 [conda](https://docs.conda.io/en/latest/miniconda.html)，并创建虚拟环境

```bash
conda create -n airflow python=3.6
```

2. 安装 [airflow](https://airflow.apache.org/start.html)

```bash
pip install apache-airflow
```

3. 启动 easy-airflow，访问 [localhost:8899](localhost:8899)
```bash
./bin/start_webserver.sh
./bin/start_scheduler.sh
```

4. 停止 easy-airflow
```bash
./bin/stop_webserver.sh
./bin/stop_scheduler.sh
```
