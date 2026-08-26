package vendor.google.wireless_charger;

import vendor.google.wireless_charger.AlignInfo;
import vendor.google.wireless_charger.ChunkResponse;
import vendor.google.wireless_charger.DockInfo;
import vendor.google.wireless_charger.DockPresent;
import vendor.google.wireless_charger.ExecuteStatus;
import vendor.google.wireless_charger.FanInfo;
import vendor.google.wireless_charger.FanMode;
import vendor.google.wireless_charger.FirmwareVersion;
import vendor.google.wireless_charger.FwMissingChunk;
import vendor.google.wireless_charger.FwUpdateInfo;
import vendor.google.wireless_charger.FwUpdateStartResponse;
import vendor.google.wireless_charger.FwUpdateStatus;
import vendor.google.wireless_charger.IWirelessChargerInfoCallback;
import vendor.google.wireless_charger.IWirelessChargerFanLevelChangedCallback;
import vendor.google.wireless_charger.IWirelessChargerRtxStatusCallback;
import vendor.google.wireless_charger.KeyExchangeResponse;
import vendor.google.wireless_charger.MissingChunk;
import vendor.google.wireless_charger.PhoneInfo;
import vendor.google.wireless_charger.PowerInfo;
import vendor.google.wireless_charger.RtxStatusInfo;
import vendor.google.wireless_charger.SkinTemp;
import vendor.google.wireless_charger.UpdateInfo;
import vendor.google.wireless_charger.UpdateStartResponse;
import vendor.google.wireless_charger.UpdateStatus;
import vendor.google.wireless_charger.WlcInfo;
import vendor.google.wireless_charger.WirelessChargerFeature;
import vendor.google.wireless_charger.WpcAuthChallengeResponse;
import vendor.google.wireless_charger.WpcAuthDigests;

@VintfStability
interface IWirelessCharger {
    byte[] challenge(in byte target, in byte[] challenge);

    AlignInfo getAlignInfo();

    FanInfo getFanInfo(in byte fanId);

    int getFanLevel();

    WirelessChargerFeature getFeatures(in long feature);

    DockInfo getInformation();

    RtxStatusInfo getRtxInformation();

    byte[] getWpcAuthCertificate(in byte b1, in char b2, in char b3);

    WpcAuthChallengeResponse getWpcAuthChallengeResponse(in byte target, in byte[] challenge);

    WpcAuthDigests getWpcAuthDigests(in byte target);

    DockPresent isDockPresent();

    boolean isRtxModeOn();

    boolean isRtxSupported();

    KeyExchangeResponse keyExchange(in byte[] publicKey);

    void registerCallback(in IWirelessChargerInfoCallback callback);

    void registerRtxCallback(in IWirelessChargerRtxStatusCallback callback);

    void registerFanLevelChangedCallback(in IWirelessChargerFanLevelChangedCallback callback);

    FanInfo setFan(in byte fanId, in FanMode mode, in char value);

    void setFeatures(in long feature, in WirelessChargerFeature value);

    void setRtxMode(in boolean on);

    void unregisterCallback(in IWirelessChargerInfoCallback callback);

    void unregisterRtxCallback(in IWirelessChargerRtxStatusCallback callback);

    void unregisterFanLevelChangedCallback(in IWirelessChargerFanLevelChangedCallback callback);

    void reboot();

    MissingChunk getFirstMissingChunk();

    char sendChunk(in char index, in byte total, in byte[] data);

    UpdateStatus getUpdateExecutionStatus();

    UpdateInfo getUpdateInformation();

    ExecuteStatus executeUpdate();

    UpdateStartResponse updateStart(in int size, in byte chunkSize, in boolean resume,
                                    in FirmwareVersion version);
    boolean isAuthReady();

    void sendReboot();

    FwMissingChunk getFirstFwMissingChunk(in byte target);

    int sendFwChunk(in byte target, in int index, in byte total, in byte[] data);

    FwUpdateStatus getFwUpdateExecutionStatus(in byte target);

    FwUpdateInfo getFwUpdateInformation(in byte target);

    ExecuteStatus fwExecuteUpdate(in byte target);

    FwUpdateStartResponse fwUpdateStart(in byte target, in int size, in byte chunkSize,
                                        in boolean resume, in FirmwareVersion version);

    FwUpdateStartResponse compressFwUpdateStart(in byte target, in int uncompressSize,
                                                in byte chunkSize, in boolean resume,
                                                in int compressSize,
                                                in FirmwareVersion version);

    ChunkResponse sendCompressFwChunk(in byte target, in int index, in byte total,
                                      in byte[] data);

    SkinTemp getSkinTemperature();

    PhoneInfo getPhoneInformation();

    DockInfo getDockInformation();

    void updateInformation(in WlcInfo info);

    PowerInfo getPowerInformation();
}
