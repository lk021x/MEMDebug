# ------------------------------------------------------------------------------
# 
# Copyright (c) 2009, Jean-David Gadina <macmade@eosgarden.com>
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
#  -   Redistributions of source code must retain the above copyright notice,
#      this list of conditions and the following disclaimer.
#  -   Redistributions in binary form must reproduce the above copyright
#      notice, this list of conditions and the following disclaimer in the
#      documentation and/or other materials provided with the distribution.
#  -   Neither the name of 'Jean-David Gadina' nor the names of its
#      contributors may be used to endorse or promote products derived from
#      this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
# 
# ------------------------------------------------------------------------------
# 
# IMPORTANT NOTE:
# 
# This makefile is used for the configuration of language specific options.
# It's not supposed to be called directly by the make command.
# 
# Please note that you need at least version 3.81 of GNU Make to use this file.
# Older versions are not supported and will never be.
# 
# You also need a copy of the GNU Libtool in order to handle the shared objects.
# GNU Libtool is sometimes called glibtool, or simply libtool.
# Others implementations of Libtool are not supported at the time.
# 
#-------------------------------------------------------------------------------

# $Id$

# Flag to let the makefile knows that the code specific options were included
CODE_HASOPTIONS         := 1

#-------------------------------------------------------------------------------
# Extensions for files
#-------------------------------------------------------------------------------

EXT_CODE             = .c
EXT_HEADERS          = .h
EXT_LIB_OBJECT       = .lo
EXT_LIB_ARCHIVE      = .la
EXT_OBJECT           = .o

#-------------------------------------------------------------------------------
# Compiler tools
#-------------------------------------------------------------------------------

CC                   = gcc
LIBTOOL              = glibtool

#-------------------------------------------------------------------------------
# Arguments for the compiler tools
#-------------------------------------------------------------------------------

ARGS_CC              = -pedantic -std=c99 -Wall -Wextra -Wbad-function-cast -Wmissing-declarations -Wmissing-prototypes -Wnested-externs -Wold-style-definition -Wstrict-prototypes -Wdeclaration-after-statement -Wno-discard-qual -Wno-pointer-sign
ARGS_LIBTOOL_COMPILE = --mode=compile
ARGS_LIBTOOL_LINK    = --mode=link
