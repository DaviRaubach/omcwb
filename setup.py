from setuptools import setup, find_packages

VERSION = '0.0.1'
DESCRIPTION = 'Peça para 40ª Oficina de Música de Curitiba'
LONG_DESCRIPTION = 'Partitura para 40ª Oficina de Música de Curitiba'

# Setting up
setup(
    # the name must match the folder name 'verysimplemodule'
    name="omcwb",
    version=VERSION,
    author="Davi Raubach Tuchtenhagen",
    author_email="<raubachdavi@gmail.com>",
    description=DESCRIPTION,
    long_description=LONG_DESCRIPTION,
    packages=find_packages(),
    install_requires=[],  # add any additional packages that
    # needs to be installed along with your package. Eg: 'caer'

    keywords=['music notation'],
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Intended Audience :: Education",
        "Programming Language :: Python :: 3",
        "Operating System :: MacOS :: MacOS X",
        "Operating System :: Microsoft :: Windows",
    ]
)
