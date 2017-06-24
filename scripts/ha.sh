#!/bin/bash
cat Dockerfile | sha256sum | head -c 8
