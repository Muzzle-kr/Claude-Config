#!/bin/bash

# Claude notification script with parameter-based branching
# Usage: notify_cost.sh [stop|notification]

case "$1" in
  "stop")
    # Get the total cost from ccusage and format to 2 decimal places
    COST=$(ccusage -j | jq -r '.totals.totalCost')
    FORMATTED_COST=$(printf "%.2f" "$COST")

    # Send notification with the cost
    terminal-notifier \
      -title "🥳 Claude's done cooking! 🍳" \
      -message "Here's the total cost: \$$FORMATTED_COST 💸" \
      -sound Funk \
      -contentImage ~/.claude/claude-icon-4x.png
    ;;
  
  "notification")
    # Send help notification
    terminal-notifier \
      -title "🥹" \
      -message "Claude Needs Help!!" \
      -sound Basso \
      -contentImage ~/.claude/claude-icon-4x.png
    ;;
  
  *)
    echo "Usage: $0 [stop|notification]"
    exit 1
    ;;
esac
