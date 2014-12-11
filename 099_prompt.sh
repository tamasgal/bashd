#!/bin/bash
#############################################################################
#
# FILE:         099_prompt.sh
#
# DESCRIPTION:  my prompt
#
############################################################################

# Configure colors, if available.
if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
  c_reset='\[\e[0m\]'
  c_user='\[\e[1;36m\]'
  c_path='\[\e[0m\]'
  c_hostname='\[\e[0;36m\]'
  c_time='\[\e[47m\]\[\e[30m\]'
  c_flags='\[\e[97m\]\[\e[46m\]'
  c_seatray='\[\e[97m\]\[\e[41m\]'
  c_jpp='\[\e[97m\]\[\e[41m\]'
  c_python='\[\e[97m\]\[\e[42m\]'
  c_vimode='\[\e[97m\]\[\e[40m\]'
  c_git='\[\e[43m\]\[\e[38;229m\]'
else
  c_reset=
  c_user=
  c_path=
  c_hostname=
  c_time=
  c_flags=
fi

__prompt_flags ()
{
  #__vi_mode
  __jpp_env
  __seatray_env
  __git_env
  __python_env
}

__git_env ()
{
  echo -n "${c_git}`__git_ps1`${c_reset}"
}

__seatray_env ()
{
  if [ ! -z "$I3_SHELL" ]; then
    echo -n "${c_seatray}S${c_reset}"
  else
    echo -n ""
  fi
}

__jpp_env ()
{
  if [ ! -z "$JPP_DIR" ]; then
    echo -n "${c_jpp}J${c_reset}"
  else
    echo -n ""
  fi
}

__python_env ()
{
  if [ ! -z "$VIRTUAL_ENV" ]; then
    echo "${c_python}`basename $VIRTUAL_ENV`${c_reset}"
  else
    echo -n ""
  fi
}

__vi_mode ()
{
  VIMODE=`set -o | grep ^vi | awk '{print $2}'`
  if [ "x${VIMODE}" == "xon" ]; then
    echo -n "${c_vimode}V${c_reset}"
  else
    echo -n ""
  fi
}

__current_time ()
{
  date +'%H:%M:%S'
}

PROMPT_COMMAND='PS1="${c_reset}`__prompt_flags`${c_flags} ${c_reset}${c_user}\u${c_reset}@${c_hostname}\h${c_reset}:${c_path}$PWD${c_reset}\n${c_time}`__current_time`${c_reset} "'

