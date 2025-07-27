#!/bin/sh -ex

source .env
argocd-autopilot repo bootstrap --recover
