package vendor.google.google_battery;

@VintfStability
@Backing(type="int")
enum BatteryDefendType {
    ALL = 0,
    TEMP_DEFEND = 1,
    TRICKLE_DEFEND = 2,
    DWELL_DEFEND = 3,
    DOCK_DEFEND = 4,
}
