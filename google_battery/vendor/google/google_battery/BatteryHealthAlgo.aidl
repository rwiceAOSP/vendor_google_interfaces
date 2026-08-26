package vendor.google.google_battery;

@VintfStability
@Backing(type="int")
enum BatteryHealthAlgo {
    ACHI,
    ACHI_B,
    ACHI_RECAL,
    ACHI_RAVG_B,
    MIX_N_MATCH,
    ACHI_FCR,
    ACHI_CARETAKER,
}
