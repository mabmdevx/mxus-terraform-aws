#!/bin/bash
CURR_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)
$CURR_DIR/ecs_fg_task/apply.sh && $CURR_DIR/ecs_fg_service/apply.sh