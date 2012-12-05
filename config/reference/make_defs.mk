#!/bin/bash
#
#  BLIS    
#  An object-based framework for developing high-performance BLAS-like
#  libraries.
#
#  Copyright (C) 2012, The University of Texas
#
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are
#  met:
#   - Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
#   - Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in the
#     documentation and/or other materials provided with the distribution.
#   - Neither the name of The University of Texas nor the names of its
#     contributors may be used to endorse or promote products derived
#     from this software without specific prior written permission.
#
#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
#  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
#  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
#  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
#  HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
#  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
#  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
#  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
#  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
#  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#

# Only include this block of code once.
ifndef MAKE_DEFS_MK_INCLUDED
MAKE_DEFS_MK_INCLUDED := yes



#
# --- Build definitions --------------------------------------------------------
#

# Variables corresponding to other configure-time options.
BLIS_ENABLE_VERBOSE_MAKE_OUTPUT := no
BLIS_ENABLE_STATIC_BUILD        := yes
BLIS_ENABLE_DYNAMIC_BUILD       := no



#
# --- Utility program definitions ----------------------------------------------
#

SH         := /bin/sh
MV         := mv
MKDIR      := mkdir -p
RM_F       := rm -f
RM_RF      := rm -rf
SYMLINK    := ln -sf
FIND       := find
XARGS      := xargs
RANLIB     := ranlib
INSTALL    := install -c



#
# --- Development tools definitions --------------------------------------------
#

# --- Determine the C compiler and related flags ---
CC           := gcc
CPPROCFLAGS  :=
CMISCFLAGS   := -std=c99 # -fopenmp -pg
CDBGFLAGS    := -g
CWARNFLAGS   := -Wall
COPTFLAGS    := -O2 -malign-double
CVECFLAGS    := -msse3 -march=native # -mfpmath=sse

# Aggregate all of the flags into two groups: one for optimizable code, and
# one for code that should not be optimized.
CFLAGS       := $(CDBGFLAGS) $(COPTFLAGS) $(CVECFLAGS) $(CWARNFLAGS) $(CMISCFLAGS) $(CPPROCFLAGS)
CFLAGS_NOOPT := $(CDBGFLAGS) $(CWARNFLAGS) $(CMISCFLAGS) $(CPPROCFLAGS)

# --- Determine the archiver and related flags ---
AR           := ar
ARFLAGS      := cru

# --- Determine the linker and related flags ---
LINKER       := $(CC)
LDFLAGS      := 



# end of ifndef MAKE_DEFS_MK_INCLUDED conditional block
endif
