#!/usr/bin/env bash

log_info() {
  printf '\033[0;34m[INFO]\033[0m %s\n' "$*"
}

log_success() {
  printf '\033[0;32m[PASS]\033[0m %s\n' "$*"
}

log_warn() {
  printf '\033[0;33m[WARN]\033[0m %s\n' "$*"
}

log_error() {
  printf '\033[0;31m[FAIL]\033[0m %s\n' "$*" >&2
}
