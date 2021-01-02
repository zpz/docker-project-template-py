
from datetime import datetime
from setuptools import setup, find_packages

__version__ = datetime.today().strftime('%y.%m.%d')

name = 'huge'

setup(
    name=name,
    version=__version__,
    description='Package ' + name,
    package_dir={'': 'src'},
    packages=find_packages(where='src'),
    package_data={name: ['py.typed']},
    include_package_data=True,
)
