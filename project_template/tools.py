import numpy as np

def some_test():
    """A simple function."""
    w = np.random.normal(size=1000).reshape((100,10))
    x = np.eye(10)

    y = np.matmul(w, x)

    return y
