#-*-Mode:m4;coding:utf-8;tab-width:4;c-basic-offset:4;indent-tabs-mode:()-*-
# ex: set ft=m4 fenc=utf-8 sts=4 ts=4 sw=4 et:
#
# SYNOPSIS
#
#   AX_PYTHON_C
#
# DESCRIPTION
#
#   Determine the location of the Python C API.
#
#   This macro sets:
#
#     PYTHON_CFLAGS
#     PYTHON_LDFLAGS
#
# BSD LICENSE
#
# Copyright (c) 2012, Michael Truog
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in
#       the documentation and/or other materials provided with the
#       distribution.
#     * All advertising materials mentioning features or use of this
#       software must display the following acknowledgment:
#         This product includes software developed by Michael Truog
#     * The name of the author may not be used to endorse or promote
#       products derived from this software without specific prior
#       written permission
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
# CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
# OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
# DAMAGE.
#

AC_DEFUN([AX_PYTHON_C],[
    AC_ARG_VAR([PYTHON_CONFIG],[python-config executable])
    AS_IF([test "x$PYTHON_DEBUG" == "xno"],
        [AC_PATH_PROGS([PYTHON_CONFIG],
            [python$PYTHON_VERSION_RELEASE-config python-config],
            [AC_MSG_ERROR([python-config not found])],
            [`AS_DIRNAME("$PYTHON")`])],
        [AC_PATH_PROGS([PYTHON_CONFIG],
            [python$PYTHON_VERSION_RELEASE-dbg-config python-dbg-config],
            [AC_MSG_ERROR([python-dbg-config not found])],
            [`AS_DIRNAME("$PYTHON")`])])
    PYTHON_CFLAGS=`$PYTHON_CONFIG --cflags`
    AC_SUBST(PYTHON_CFLAGS)
    PYTHON_LDFLAGS=`$PYTHON_CONFIG --ldflags`
    AC_SUBST(PYTHON_LDFLAGS)
])

