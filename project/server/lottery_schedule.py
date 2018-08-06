# project/server/lottery_schedule.py

import time
import atexit
#from . import jobs
from project.server import jobs

from apscheduler.schedulers.background import BackgroundScheduler
from apscheduler.triggers.interval import IntervalTrigger

scheduler = BackgroundScheduler()
scheduler.start()
scheduler.add_job(
    func=jobs.print_date_time,
    trigger=IntervalTrigger(seconds=5),
    id='printing_job',
    name='Print date and time every five seconds',
    replace_existing=True)
scheduler.add_job(
    func=jobs.print_hello,
    trigger=IntervalTrigger(seconds=5),
    id='print_hello',
    name='print_hello',
    replace_existing=True)
# Shut down the scheduler when exiting the app
atexit.register(lambda: scheduler.shutdown())
