import pytest

from project_template.tools import some_test


@pytest.fixture(scope="module")
def sample_data(pytestconfig):
    return some_test()

