from example.dummy import total


def test_total():
    x = list(range(10))
    y = sum(x)
    z = total(x)
    assert y == z
