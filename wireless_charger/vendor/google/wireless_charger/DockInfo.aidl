package vendor.google.wireless_charger;

import vendor.google.wireless_charger.FirmwareVersion;

@VintfStability
parcelable DockInfo {
    String id;
    String qiId;
    String serial;
    int ptmc;
    boolean getInfoSupported;
    FirmwareVersion version;
    byte fwSlot;
    byte fwSlotMask;
    String manufacturer;
    String product;
    byte authType;
    @nullable FirmwareVersion otaVersion;
}
