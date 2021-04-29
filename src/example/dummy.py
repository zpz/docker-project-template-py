from typing import Iterable
import numpy


def total(x: Iterable[int]) -> int:
    return int(numpy.array(list(x)).sum())
