from distutils.core import setup
from setuptools import find_packages
setup(
    name='project_template',
    author='Leonard Strnad',
    version='0.1',
    packages=find_packages(),
    license='',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    zip_ok=False

)
