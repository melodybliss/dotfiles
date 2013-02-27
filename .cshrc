######################################################################
# Melody's generic .cshrc file
# File:		.cshrc
# Author: 	Melody Bliss <melody@melodybliss.org>
# ID:		$Id$
# Revision:	$Revision$
######################################################################

set HISTORY_SIZE=100
set HOST=`hostname`

if ( -x /usr/bin/uname ) then
  set UNAME=/usr/bin/uname
else if ( -x /bin/uname ) then
  set UNAME=/bin/uname
endif

set OS=`${UNAME}`
setenv TZ PST8PDT
setenv EDITOR vi

set OPATH=/sbin:/usr/sbin:/bin:/usr/bin:
set GCSPATH=/usr/local/gcsis-svn/bin:
set LPATH=
set XPATH=
set DPATH=
set FPATH=/usr/local/bin:
set UPATH=
set SVNPATH=
set GOPATH=
set GITPATH=

# Google Go Compiler
if ( -d ${HOME}/src/go/bin ) then
  set GOPATH=${HOME}/src/go/bin:
endif

if( -d /usr/local/git ) then
  set GITPATH=/usr/local/git/bin:
endif

# SunOS
if ( "${OS}" == "SunOS" ) then
  if ( -d /usr/openwin/bin ) then
    set XPATH=/usr/openwin/bin:
  endif

  if ( -d /usr/ccs/bin ) then
    if ( -f /usr/ccs/bin/make ) then
      set DPATH=/usr/ccs/bin:
    endif
  endif
endif	# SunOS

# FreeBSD
if ( "${OS}" == "FreeBSD" ) then
  set OPATH=${OPATH}/usr/games:
endif	# FreeBSD

# Linux
if ( "${OS}" == "Linux" ) then
  set OPATH=${OPATH}/usr/games:
endif

# Darwin/MacOS X
if ( "${OS}" == "Darwin" ) then

  # Need to add int /opt/local/bin if darwinports is included
  if ( -d /opt/local/bin ) then
    set LPATH=${LPATH}/opt/local/bin:/opt/local/sbin:
  endif

  if ( -d /usr/X11R6/bin ) then
    set XPATH=/usr/X11R6/bin:
  endif

#  if ( -d /Developer/usr/bin ) then
#    set DPATH=/Developer/usr/bin:
#  endif
endif

# If ~/bin exists, set UPATH to it.
if ( -d ${HOME}/bin ) then
  set UPATH=${HOME}/bin:
endif
# if ~/svn/melody/bin exists, set SVNPATH to it
if ( -d ${HOME}/svn/melody/bin ) then
  set SVNPATH=${HOME}/svn/melody/bin:
endif

# Create the path
set tPATH=${GITPATH}${UPATH}${GCSPATH}${SVNPATH}${OPATH}${LPATH}${XPATH}${DPATH}${FPATH}${GOPATH}
setenv PATH `echo ${tPATH} | sed 's/:$//'`

# Man Path
setenv MANPATH /usr/share/man:/usr/local/share/man:/usr/X11/man:/opt/local/man

set history=${HISTORY_SIZE}
unset autologout
set prompt="\! % "

# Process specific host .cshrc files

if ( -f ${HOME}/.cshrc.${HOST} ) then
  source ${HOME}/.cshrc.${HOST}
endif

# Process aliases, both global and system specific

if ( -f ${HOME}/.alias ) then
  source ${HOME}/.alias
endif

if ( -f ${HOME}/.alias.${HOST} ) then
  source ${HOME}/.alias.${HOST}
endif

##
# Your previous /Users/melody/.cshrc file was backed up as /Users/melody/.cshrc.macports-saved_2009-09-14_at_16:04:02
##

# MacPorts Installer addition on 2009-09-14_at_16:04:02: adding an appropriate PATH variable for use with MacPorts.
setenv PATH /opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/melody/.cshrc file was backed up as /Users/melody/.cshrc.macports-saved_2011-11-15_at_13:46:48
##

# MacPorts Installer addition on 2011-11-15_at_13:46:48: adding an appropriate PATH variable for use with MacPorts.
setenv PATH /opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


set path=( "/Applications/microchip/mplabc30/v3.30c/bin" $path )

set path=( "/Applications/microchip/mplabc32/v2.02/bin" $path )
