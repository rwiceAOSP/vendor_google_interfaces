package vendor.google.wireless_charger;

import vendor.google.wireless_charger.AlignInfo;

@VintfStability
interface IWirelessChargerInfoCallback {
    void alignInfoChanged(in AlignInfo info);
}
