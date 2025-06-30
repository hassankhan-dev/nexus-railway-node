#!/bin/bash

# Start Nexus node
nexus-network start --node-id 2484685

# Keep container alive
tail -f /dev/null

