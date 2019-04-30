# *** manually set environments (for gnu compiler) of nemsio ***

# !!! module environment (*THEIA*) !!!
 module load gcc/4.9.1
 module use -a /apps/modules/modulefamilies/intel
 module load impi/5.1.2.150

 ANCHORDIR=..
 export COMP=gnu/impi
 export NEMSIO_VER=v2.2.4
 export NEMSIO_SRC=
 export NEMSIO_INC=$ANCHORDIR/${COMP#*/}/include/nemsio_${NEMSIO_VER}
 export NEMSIO_LIB=$ANCHORDIR/${COMP#*/}/libnemsio_${NEMSIO_VER}.a

 export CC=gcc
 export FC=gfortran
 export CPP=cpp
 export OMPCC="$CC -fopenmp"
 export OMPFC="$FC -fopenmp"
 export MPICC=mpicc
 export MPIFC=mpif90

 export DEBUG="-g -O0"
 export CFLAGS="-O3 -DUNDERSCORE -DLINUX -fPIC"
 export FFLAGS="-O3 -fPIC"
 export CPPFLAGS="-P -traditional-cpp"
 export MPICFLAGS="-O3 -DUNDERSCORE -DLINUX -fPIC"
 export MPIFFLAGS="-O3 -fPIC"
 export MODPATH="-J"
 export I4R4=""
 export I4R8="-fdefault-real-8"
 export I8R8="-fdefault-integer-8 -fdefault-real-8"

 export CPPDEFS=""
 export CFLAGSDEFS=""
 export FFLAGSDEFS="-fno-range-check"

 export USECC=""
 export USEFC="YES"
 export DEPS=""