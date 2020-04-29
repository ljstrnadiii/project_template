import pytest
import numpy as np

class TestTools():
    """Test a module and its functions."""

    def test_some_test(self, sample_data):
        """Test the function some_test."""
        assert sample_data.shape == (100, 10)
