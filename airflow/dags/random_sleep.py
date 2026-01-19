from airflow.sdk import DAG, task
from pendulum import datetime
import time
from random import randint


with DAG(
    dag_id='sleep_random',
    start_date=datetime(2026, 1, 1),
    schedule="*/2 * * * *",
) as dag:

    @task
    def task1():
        time.sleep(randint(1, 10))

    task1()
