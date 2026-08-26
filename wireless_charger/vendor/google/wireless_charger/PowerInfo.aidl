package vendor.google.wireless_charger;

@VintfStability
parcelable PowerInfo {
    int maxPower;
    int negotiatedPower;
    byte limitReason;
}
