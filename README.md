# Cleanup Action

This Action removes all files including hidden files.

Currently, GitHub Actions and `actions/checkout` step cannot properly clean an environment on a self-hosted runner. Moreover, there are a lot of issues with permissions, when the previous job was running under root user and need to clean in it under non-root user. This action does it properly.

# Usage

```
name: Hello World Job

on:
  push:
    branches:
      - main

jobs:
  hello_world_job:
    runs-on: ubuntu-latest
    steps:
      - name: Cleanup Action
        uses: asenyaev/cleanup-action@v1
      - name: Checkout Action
        uses: actions/checkout@v3
      - name: Hello World
        run: echo "Hello World"
```
