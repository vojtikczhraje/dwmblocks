#!/bin/sh

# Function to get battery status using acpi
get_battery_info() {
    acpi -b
}

# Main function to print battery status for dwmblocks
print_battery_status() {
    BATTERY_INFO=$(get_battery_info)
    BATTERY_PERCENTAGE=$(echo "$BATTERY_INFO" | grep -oP '[0-9]+(?=%)')
    BATTERY_STATUS=$(echo "$BATTERY_INFO" | grep -oP '(Charging|Discharging|Full)')

    case $BATTERY_STATUS in
        "Charging")
            STATUS_ICON="🔌"
            ;;
        "Discharging")
            if [ "$BATTERY_PERCENTAGE" -ge 80 ]; then
                STATUS_ICON="🔋"
            elif [ "$BATTERY_PERCENTAGE" -ge 60 ]; then
                STATUS_ICON="🔋"
            elif [ "$BATTERY_PERCENTAGE" -ge 40 ]; then
                STATUS_ICON="🔋"
            elif [ "$BATTERY_PERCENTAGE" -ge 20 ]; then
                STATUS_ICON="🔋"
            else
                STATUS_ICON="🔋"
            fi
            ;;
        "Full")
            STATUS_ICON="🔋"
            ;;
        *)
            STATUS_ICON="❓"
            ;;
    esac

    echo "[$STATUS_ICON $BATTERY_PERCENTAGE%]"
}

print_battery_status
