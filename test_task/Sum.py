import pytest


class Sum:
    def sum(self, a, b):
        return a + b


def test_sum_positive():
    sum = Sum()
    result = sum.sum(2, 3)
    assert result == 5, "Passed"


@pytest.mark.xfail
def test_sum_negative():
    sum = Sum()
    result = sum.sum(2, 3)
    assert result == 6, "Failed"
