
AC_DEFUN([AX_SWIG_BINDINGS_PYTHON], [
    PYTHON_VERSION=

    if test -n "$1" ; then
        PYTHON_VERSION="$1"
    fi

    AM_PATH_PYTHON($PYTHON_VERSION)
    SWIG_PYTHON

    PYTHON_BINDING_CFLAGS=$AX_SWIG_PYTHON_CPPFLAGS
    AC_SUBST([PYTHON_BINDING_CFLAGS])

    PYTHON_BINDING_LIBS=
    AC_SUBST([PYTHON_BINDING_LIBS])

    PYTHON_BINDING_PATH_BASE=bindings/python
    AC_SUBST([PYTHON_BINDING_PATH_BASE])

    PYTHON_BINDING_PATH_CPP=${PYTHON_BINDING_PATH_BASE}/cpp
    AC_SUBST([PYTHON_BINDING_PATH_CPP])

    PYTHON_BINDING_PATH_LANG=${PYTHON_BINDING_PATH_BASE}/lang
    AC_SUBST([PYTHON_BINDING_PATH_LANG])

    SWIG_PYTHON_ARGS="-python"
    AC_SUBST([SWIG_PYTHON_ARGS])
])