#!/bin/bash

# ============================================================

# ZOOT // ZEROTH ORDER OIL TANK

# INDUSTRIAL CONTROL INTERFACE

# ============================================================

ESC=$'\033'

WHITE="${ESC}[97m"

GRAY="${ESC}[90m"

DIM="${ESC}[2m"

BOLD="${ESC}[1m"

RESET="${ESC}[0m"

# ------------------------------------------------------------

# Terminal setup

# ------------------------------------------------------------

printf '%s' "${ESC}[?1049h"

printf '%s' "${ESC}[2J${ESC}[H${ESC}[?25l"

cleanup() {

printf '%s' "${ESC}[?25h"

printf '%s' "${RESET}"

printf '%s' "${ESC}[?1049l"

}

trap cleanup EXIT INT TERM

COLS=$(tput cols)

ROWS=$(tput lines)

move() {

printf '%s' "${ESC}[$1;${2}H"

}

center() {

local text="$1"

local row="$2"

local color="$3"

local len=${#text}

local col=$(( (COLS - len) / 2 ))

(( col < 1 )) && col=1

move "$row" "$col"

printf '%s%s%s' "$color" "$text" "$RESET"

}

# ============================================================

# PHASE 1 — ZOOT BOOT

# ============================================================

START=$(date +%s%N)

printf '%s' "${ESC}[2J${ESC}[H"

# ------------------------------------------------------------

# Background dotted grid

# ------------------------------------------------------------

# Horizontal dotted lines

for ((r=2; r<ROWS; r+=4)); do

move "$r" 1

printf '%s' "${DIM}${GRAY}"

for ((c=1; c<=COLS; c++)); do

if (( c % 2 == 0 )); then

printf '·'

else

printf ' '

fi

done

done

# Vertical dotted lines

for ((c=12; c<COLS; c+=16)); do

for ((r=1; r<=ROWS; r++)); do

if (( r % 4 != 2 )); then

move "$r" "$c"

printf '%s' "${DIM}${GRAY}·"

fi

done

done

# ------------------------------------------------------------

# Header

# ------------------------------------------------------------

move 2 4

printf '%s' "${GRAY}// ZOOT CONTROL AUTHORITY"

move 3 4

printf '%s' "${DIM}ZEROTH ORDER OIL TANK"

move 2 $((COLS - 15))

printf '%s' "${WHITE}${BOLD}ZOOT-00"

move 3 $((COLS - 15))

printf '%s' "${GRAY}NODE ACTIVE"

# ------------------------------------------------------------

# Main title

# ------------------------------------------------------------

center "Z O O T" 7 "${WHITE}${BOLD}"

center "ZEROTH ORDER OIL TANK" 8 "${GRAY}"

center "PRIMARY RESERVOIR CONTROL SYSTEM" 9 "${DIM}${GRAY}"

move 11 6

printf '%s' "${GRAY}────────────────────────────────────────────────────────────"

move 13 7

printf '%s' "${WHITE}${BOLD}[ INITIALIZATION SEQUENCE ]"

systems=(

"TANK INTEGRITY"

"OIL LEVEL SENSOR"

"PRESSURE CONTROL"

"FLOW REGULATION"

"SAFETY INTERLOCK"

"COMMUNICATION LINK"

)

# ------------------------------------------------------------

# System checks

# ------------------------------------------------------------

for ((i=0; i<6; i++)); do

row=$((15 + i))

move "$row" 9

printf '%s' "${GRAY}[0$((i+1))]"

move "$row" 16

printf '%s' "${WHITE}%-25s" "${systems[$i]}"

move "$row" $((COLS - 20))

printf '%s' "${GRAY}["

for ((p=0; p<8; p++)); do

printf '%s' "${WHITE}█"

sleep 0.035

done

printf '%s' "${GRAY}]"

move "$row" $((COLS - 5))

printf '%s' "${WHITE}OK"

done

# ------------------------------------------------------------

# Telemetry

# ------------------------------------------------------------

row=$((ROWS - 9))

move "$row" 8

printf '%s' "${GRAY}TANK TELEMETRY"

move "$((row + 1))" 8

printf '%s' "${DIM}${GRAY}────────────────────────────────────────────────────────"

move "$((row + 2))" 10

printf '%s' "${GRAY}LEVEL ${WHITE}██████████████████░░░░ 82%"

move "$((row + 3))" 10

printf '%s' "${GRAY}PRESSURE ${WHITE}██████████████░░░░░░░░ 64%"

move "$((row + 4))" 10

printf '%s' "${GRAY}FLOW ${WHITE}████████████████░░░░░░ 71%"

# ============================================================

# Hold ZOOT screen until 3 seconds have elapsed

# ============================================================

NOW=$(date +%s%N)

ELAPSED_NS=$((NOW - START))

TARGET_NS=3000000000

if (( ELAPSED_NS < TARGET_NS )); then

REMAINING_NS=$((TARGET_NS - ELAPSED_NS))

REMAINING_SEC=$(awk "BEGIN {printf \"%.3f\", $REMAINING_NS/1000000000}")

sleep "$REMAINING_SEC"

fi

# ============================================================

# PHASE 2 — TRANSITION

# ============================================================

printf '%s' "${ESC}[2J${ESC}[H"

# ------------------------------------------------------------

# Rapid horizontal scan

# ------------------------------------------------------------

for ((y=1; y<=ROWS; y+=2)); do

move "$y" 1

printf '%s' "${WHITE}"

printf '%*s' "$COLS" '' | tr ' ' ' '

sleep 0.008

done

# Clear

printf '%s' "${ESC}[2J${ESC}[H"

# ============================================================

# PHASE 3 — WELCOME DOCTOR

# ============================================================

# ------------------------------------------------------------

# Small upper identifier

# ------------------------------------------------------------

center "ZOOT // CONNECTION ESTABLISHED" 5 "${GRAY}"

center "REMOTE OPERATOR CHANNEL" 6 "${DIM}${GRAY}"

# ============================================================

# ZOOT LOGO

# 5 rows tall

# ============================================================

#

# ·

# · ·

# · · · Z.O.O.T.

# · · · ·

# · · · · ·

#

# Positioned ABOVE the welcome message.

# ============================================================

LOGO_TOP=$((ROWS / 2 - 9))

LOGO_LEFT=$(( (COLS - 22) / 2 ))

# Keep logo on screen

if (( LOGO_TOP < 8 )); then

LOGO_TOP=8

fi

# ------------------------------------------------------------

# Dot pyramid

# ------------------------------------------------------------

move "$LOGO_TOP" "$LOGO_LEFT"

printf '%s' "${WHITE}${BOLD} ·"

move "$((LOGO_TOP + 1))" "$LOGO_LEFT"

printf '%s' "${WHITE}${BOLD} · ·"

move "$((LOGO_TOP + 2))" "$LOGO_LEFT"

printf '%s' "${WHITE}${BOLD} · · ·"

move "$((LOGO_TOP + 3))" "$LOGO_LEFT"

printf '%s' "${WHITE}${BOLD} · · · ·"

move "$((LOGO_TOP + 4))" "$LOGO_LEFT"

printf '%s' "${WHITE}${BOLD}· · · · ·"

# ------------------------------------------------------------

# Z.O.O.T. wordmark

# ------------------------------------------------------------

move "$((LOGO_TOP + 2))" "$((LOGO_LEFT + 13))"

printf '%s' "${WHITE}${BOLD}Z.O.O.T."

# ============================================================

# Animated center text

# ============================================================

WELCOME="WELCOME, DOCTOR"

# Start with scattered blocks

center "████████████████" $((ROWS / 2)) "${GRAY}"

sleep 0.12

center "░░░░░░░░░░░░░░░░" $((ROWS / 2)) "${GRAY}"

sleep 0.12

# Reveal message

center "WELCOME," $((ROWS / 2 - 1)) "${WHITE}${BOLD}"

sleep 0.18

center "D O C T O R" $((ROWS / 2 + 1)) "${WHITE}${BOLD}"

sleep 0.25

# ------------------------------------------------------------

# Flash / emphasis

# ------------------------------------------------------------

for ((i=0; i<3; i++)); do

center "WELCOME, DOCTOR" $((ROWS / 2)) "${WHITE}${BOLD}"

sleep 0.16

center "WELCOME, DOCTOR" $((ROWS / 2)) "${GRAY}${BOLD}"

sleep 0.12

done

center "WELCOME, DOCTOR" $((ROWS / 2)) "${WHITE}${BOLD}"

center "────────────────────────────" $((ROWS / 2 + 3)) "${GRAY}"

center "ZOOT CONTROL // READY" $((ROWS / 2 + 5)) "${DIM}${GRAY}"

printf '%s' "${RESET}"

sleep 2 
