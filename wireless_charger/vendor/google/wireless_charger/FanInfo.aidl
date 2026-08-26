package vendor.google.wireless_charger;

@VintfStability
parcelable FanInfo {
    boolean valid;
    char rpm;
    char maxRpm;
    char minRpm;
    byte level;
    byte mode;
}
