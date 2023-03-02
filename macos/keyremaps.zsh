#!/usr/bin/env zsh

# Remap "Caps Lock" to "Left Ctrl".
hidutil property --set '{
  "UserKeyMapping": [
    {
      "HIDKeyboardModifierMappingSrc": 0x700000039,
      "HIDKeyboardModifierMappingDst":0x7000000E0
    }
  ]
}'
