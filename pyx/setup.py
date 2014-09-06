from distutils.core import setup
from Cython.Build import cythonize

setup(ext_modules = cythonize(
           "io.pyx",                 # our Cython source
      ))
