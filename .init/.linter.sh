#!/bin/bash
cd /home/kavia/workspace/code-generation/avengers-nexus-2765-2774/frontend_next_js
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

