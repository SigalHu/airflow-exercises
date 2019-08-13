# encoding=utf-8
"""
@author huxujun
@date 2019-08-13
"""
from datetime import timedelta, datetime


def start_date(delta: timedelta, hour=None, minute=None, second=None, microsecond=None):
    date = datetime.now() - delta
    if delta.days:
        return date.replace(
            hour=hour if hour else 0,
            minute=minute if minute else 0,
            second=second if second else 0,
            microsecond=microsecond if microsecond else 0
        )
    elif delta / timedelta(hours=1) >= 1:
        return date.replace(
            minute=minute if minute else 0,
            second=second if second else 0,
            microsecond=microsecond if microsecond else 0
        )
    elif delta / timedelta(minutes=1) >= 1:
        return date.replace(
            second=second if second else 0,
            microsecond=microsecond if microsecond else 0
        )
    elif delta.seconds:
        return date.replace(
            microsecond=microsecond if microsecond else 0
        )
    return date


if __name__ == '__main__':
    pass
