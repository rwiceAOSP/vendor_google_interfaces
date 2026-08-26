package vendor.google.wireless_charger;

import vendor.google.wireless_charger.FirmwareVersion;

@VintfStability
parcelable FwUpdateInfo {
    byte status;
    int maxSize;
    byte maxChunkSize;
    FirmwareVersion version;
}
