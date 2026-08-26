package vendor.google.wireless_charger;

@VintfStability
parcelable DockPresent {
    boolean present;
    byte alignCode;
    byte statusCode;
    boolean getInfoSupported;
    int ptmc;
    int reserved;
}
