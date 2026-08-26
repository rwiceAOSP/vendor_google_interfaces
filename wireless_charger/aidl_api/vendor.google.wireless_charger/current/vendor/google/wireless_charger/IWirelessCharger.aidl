///////////////////////////////////////////////////////////////////////////////
// THIS FILE IS IMMUTABLE. DO NOT EDIT IN ANY CASE.                          //
///////////////////////////////////////////////////////////////////////////////

// This file is a snapshot of an AIDL file. Do not edit it manually. There are
// two cases:
// 1). this is a frozen version file - do not edit this in any case.
// 2). this is a 'current' file. If you make a backwards compatible change to
//     the interface (from the latest frozen version), the build system will
//     prompt you to update this file with `m <name>-update-api`.
//
// You must not make a backward incompatible change to any AIDL file built
// with the aidl_interface module type with versions property set. The module
// type is used to build AIDL files in a way that they can be used across
// independently updatable components of the system. If a device is shipped
// with such a backward incompatible change, it has a high risk of breaking
// later when a module using the interface is updated, e.g., Mainline modules.

package vendor.google.wireless_charger;
@VintfStability
interface IWirelessCharger {
  byte[] challenge(in byte target, in byte[] challenge);
  vendor.google.wireless_charger.AlignInfo getAlignInfo();
  vendor.google.wireless_charger.FanInfo getFanInfo(in byte fanId);
  int getFanLevel();
  vendor.google.wireless_charger.WirelessChargerFeature getFeatures(in long feature);
  vendor.google.wireless_charger.DockInfo getInformation();
  vendor.google.wireless_charger.RtxStatusInfo getRtxInformation();
  byte[] getWpcAuthCertificate(in byte b1, in char b2, in char b3);
  vendor.google.wireless_charger.WpcAuthChallengeResponse getWpcAuthChallengeResponse(in byte target, in byte[] challenge);
  vendor.google.wireless_charger.WpcAuthDigests getWpcAuthDigests(in byte target);
  vendor.google.wireless_charger.DockPresent isDockPresent();
  boolean isRtxModeOn();
  boolean isRtxSupported();
  vendor.google.wireless_charger.KeyExchangeResponse keyExchange(in byte[] publicKey);
  void registerCallback(in vendor.google.wireless_charger.IWirelessChargerInfoCallback callback);
  void registerRtxCallback(in vendor.google.wireless_charger.IWirelessChargerRtxStatusCallback callback);
  void registerFanLevelChangedCallback(in vendor.google.wireless_charger.IWirelessChargerFanLevelChangedCallback callback);
  vendor.google.wireless_charger.FanInfo setFan(in byte fanId, in vendor.google.wireless_charger.FanMode mode, in char value);
  void setFeatures(in long feature, in vendor.google.wireless_charger.WirelessChargerFeature value);
  void setRtxMode(in boolean on);
  void unregisterCallback(in vendor.google.wireless_charger.IWirelessChargerInfoCallback callback);
  void unregisterRtxCallback(in vendor.google.wireless_charger.IWirelessChargerRtxStatusCallback callback);
  void unregisterFanLevelChangedCallback(in vendor.google.wireless_charger.IWirelessChargerFanLevelChangedCallback callback);
  void reboot();
  vendor.google.wireless_charger.MissingChunk getFirstMissingChunk();
  char sendChunk(in char index, in byte total, in byte[] data);
  vendor.google.wireless_charger.UpdateStatus getUpdateExecutionStatus();
  vendor.google.wireless_charger.UpdateInfo getUpdateInformation();
  vendor.google.wireless_charger.ExecuteStatus executeUpdate();
  vendor.google.wireless_charger.UpdateStartResponse updateStart(in int size, in byte chunkSize, in boolean resume, in vendor.google.wireless_charger.FirmwareVersion version);
  boolean isAuthReady();
  void sendReboot();
  vendor.google.wireless_charger.FwMissingChunk getFirstFwMissingChunk(in byte target);
  int sendFwChunk(in byte target, in int index, in byte total, in byte[] data);
  vendor.google.wireless_charger.FwUpdateStatus getFwUpdateExecutionStatus(in byte target);
  vendor.google.wireless_charger.FwUpdateInfo getFwUpdateInformation(in byte target);
  vendor.google.wireless_charger.ExecuteStatus fwExecuteUpdate(in byte target);
  vendor.google.wireless_charger.FwUpdateStartResponse fwUpdateStart(in byte target, in int size, in byte chunkSize, in boolean resume, in vendor.google.wireless_charger.FirmwareVersion version);
  vendor.google.wireless_charger.FwUpdateStartResponse compressFwUpdateStart(in byte target, in int uncompressSize, in byte chunkSize, in boolean resume, in int compressSize, in vendor.google.wireless_charger.FirmwareVersion version);
  vendor.google.wireless_charger.ChunkResponse sendCompressFwChunk(in byte target, in int index, in byte total, in byte[] data);
  vendor.google.wireless_charger.SkinTemp getSkinTemperature();
  vendor.google.wireless_charger.PhoneInfo getPhoneInformation();
  vendor.google.wireless_charger.DockInfo getDockInformation();
  void updateInformation(in vendor.google.wireless_charger.WlcInfo info);
  vendor.google.wireless_charger.PowerInfo getPowerInformation();
}
