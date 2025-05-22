#!/bin/bash

# === Configuration ===
YEARS=("2022" "2023" "2024")     # List of years
COMMITS_PER_YEAR=100           # Approximate commits per year
MAX_COMMITS_PER_DAY=3           # Max commits per selected day
MIN_HOUR=9
MAX_HOUR=18
PROJECT_DIR="lib"               # Flutter project dir to target (e.g., lib, test)
EXTENSION="dart"                # Target file extension

# === Helper: Generate random date in a given year ===
generate_random_date() {
    year="$1"
    month=$(printf "%02d" $((RANDOM % 12 + 1)))
    day=$(printf "%02d" $((RANDOM % 28 + 1)))  # Safe day
    echo "$year-$month-$day"
}

# === Helper: Pick a random .dart file safely ===
pick_random_file() {
    mapfile -t dart_files < <(find "$PROJECT_DIR" -type f -name "*.$EXTENSION")
    if [ ${#dart_files[@]} -eq 0 ]; then
        echo "❌ No .$EXTENSION files found in $PROJECT_DIR"
        exit 1
    fi
    echo "${dart_files[$RANDOM % ${#dart_files[@]}]}"
}

# === Begin Commit Generation ===
for YEAR in "${YEARS[@]}"; do
    echo "📅 Generating commits for year: $YEAR"
    declare -A selected_dates=()

    # Generate unique random dates
    while [ "${#selected_dates[@]}" -lt "$COMMITS_PER_YEAR" ]; do
        date=$(generate_random_date "$YEAR")
        selected_dates["$date"]=1
    done

    # Commit loop
    for date in "${!selected_dates[@]}"; do
        commits_today=$((RANDOM % MAX_COMMITS_PER_DAY + 1))
        for ((i=0; i<commits_today; i++)); do
            # Random time
            hour=$((RANDOM % (MAX_HOUR - MIN_HOUR + 1) + MIN_HOUR))
            minute=$((RANDOM % 60))
            second=$((RANDOM % 60))
            time=$(printf "%02d:%02d:%02d" $hour $minute $second)
            full_datetime="$date $time"

            # Pick file and safely append comment
            file=$(pick_random_file)
            echo "// Random commit" >> "$file"

            # Git commit with adjusted date
            git add "$file"
            GIT_AUTHOR_DATE="$full_datetime" GIT_COMMITTER_DATE="$full_datetime" \
              git commit -m "completed work"
        done
    done

    echo "✅ Completed commits for $YEAR"
done

echo "🎉 All commits done!"
