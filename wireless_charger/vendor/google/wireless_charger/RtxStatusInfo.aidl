package vendor.google.wireless_charger;

@VintfStability
parcelable RtxStatusInfo {
    byte mode;
    int acctype;
    boolean chgConnected;
    int iout;
    int vout;
    int level;
    byte reason;
}
