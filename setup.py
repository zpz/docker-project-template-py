import importlib.util
import pathlib
from setuptools import setup

name = 'example'
HERE = pathlib.Path(__file__).parent

spec = importlib.util.spec_from_file_location(
    'version', HERE / 'src' / name / '_version.py')
mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(mod)
__version__ = mod.__version__

README = (HERE / 'README.md').read_text()

setup(
    name=name,
    version=__version__,
    description='Python package example',
    long_description=README,
    long_description_content_type='text/markdown',
    python_requires='>=3.7',
    package_dir={'': 'src'},
    packages=[name],
    install_requires=[],
    include_package_data=True,
    package_data={'': ['py.typed']},
)
