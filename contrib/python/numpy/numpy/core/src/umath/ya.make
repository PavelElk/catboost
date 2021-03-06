PY23_LIBRARY()

LICENSE(
    BSD3
)



NO_COMPILER_WARNINGS()

CFLAGS(
    -DHAVE_CBLAS
    -DHAVE_NPY_CONFIG_H=1
    -DNO_ATLAS_INFO=1
    -D_FILE_OFFSET_BITS=64
    -D_LARGEFILE64_SOURCE=1
    -D_LARGEFILE_SOURCE=1
)

ADDINCL(
    contrib/python/numpy/numpy/core/include
    contrib/python/numpy/numpy/core/include/numpy
    contrib/python/numpy/numpy/core/src/multiarray
    contrib/python/numpy/numpy/core/src/private
)

SRCS(
    loops.c
    operand_flag_tests.c
    reduction.c
    scalarmath.c
    struct_ufunc_test.c
    test_rational.c
    ufunc_object.c
    ufunc_type_resolution.c
    umath_tests.c
    umathmodule.c
)

PY_REGISTER(numpy.core.umath=umath)
PY_REGISTER(numpy.core.umath_tests=umath_tests)

END()
