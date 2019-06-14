from setuptools import find_packages
from setuptools import setup


with open("README.md") as f:
    long_description = f.read()


setup(
    classifiers=[
        "Operating System :: OS Independent",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
    ],
    description="Thrift Types",
    include_package_data=True,
    install_requires=[
        "thrift",
    ],
    long_description=long_description,
    long_description_content_type="text/markdown",
    maintainer="Brilliant",
    maintainer_email="sweng@brilliant.tech",
    name="thrift_types",
    packages=find_packages(where="src"),
    package_dir={"": "src"},
    version="1.0.0",
    url="https://github.com/ramjet-labs/thrift_types",
)
