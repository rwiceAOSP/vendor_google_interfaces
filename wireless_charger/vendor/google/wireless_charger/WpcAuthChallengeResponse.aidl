package vendor.google.wireless_charger;

@VintfStability
parcelable WpcAuthChallengeResponse {
    byte version;
    byte slot;
    byte status;
    byte[] signature;
    byte[] certificateChain;
}
