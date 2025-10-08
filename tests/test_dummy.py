import pytest

@pytest.fixture
def dummy():
    return [(1,2)]

def test_dummy(dummy):
    assert len(dummy) == 1
    assert len(dummy[0]) == 2

    