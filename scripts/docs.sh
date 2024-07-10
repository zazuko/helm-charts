#!/bin/sh

helm-docs \
  --chart-search-root=zazuko \
  --template-files ../.github/docs/helm-docs.tpl.md
