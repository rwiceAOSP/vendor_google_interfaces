package vendor.google.wireless_charger;

import vendor.google.wireless_charger.FirmwareVersion;

@VintfStability
parcelable PhoneInfo {
    FirmwareVersion firmwareVersion;
    int diagValue;
}
