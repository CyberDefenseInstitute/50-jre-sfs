#!/bin/sh

which java >/dev/null || {
  case ":$PATH:" in
    *:/opt/jre/bin:*) ;;
    *) export PATH="$PATH:/opt/jre/bin" ;;
  esac
}
