from example.dummy import add


def test_add():
    z = add(3, 4)
    assert z == 7
