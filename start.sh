#!/bin/bash

# Start Nexus node
screen -dmS nexus-node nexus-network start --env beta

# Keep container alive
tail -f /dev/null

