package vendor.google.google_battery;

@VintfStability
@Backing(type="int")
enum BatteryChargingPolicy {
    UNKNOWN = -1,
    DEFAULT = 1,
    LONGLIFE = 2,
    ADAPTIVE = 3,
}
