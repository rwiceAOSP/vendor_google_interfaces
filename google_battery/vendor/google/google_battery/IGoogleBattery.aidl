package vendor.google.google_battery;

import vendor.google.google_battery.BatteryCalibrationMode;
import vendor.google.google_battery.BatteryCalibrationState;
import vendor.google.google_battery.BatteryChargingPolicy;
import vendor.google.google_battery.BatteryDefendType;
import vendor.google.google_battery.BatteryHealthAlgo;
import vendor.google.google_battery.BatteryHealthStats;
import vendor.google.google_battery.BatteryHealthStatus;
import vendor.google.google_battery.ChargingStage;
import vendor.google.google_battery.ChargingStatus;
import vendor.google.google_battery.ChargingType;
import vendor.google.google_battery.DockDefendStatus;
import vendor.google.google_battery.Feature;
import vendor.google.google_battery.PriorityChargingInfo;

@VintfStability
interface IGoogleBattery {
    const int RESULT_IO_ERROR = 1;

    void setEnable(in Feature feature, in boolean enabled);

    void setChargingDeadline(in int seconds);

    ChargingStage getChargingStageAndDeadline();

    void setHealthAlwaysOn(in int soc);

    int getProperty(in Feature feature, in int property);

    void setProperty(in Feature feature, in int property, in int value);

    void clearBatteryDefender();

    int getAdapterId();

    int getAdapterType();

    int getChargingSpeed();

    ChargingStatus getChargingStatus();

    ChargingType getChargingType();

    int getHealthCapacityIndex();

    int getHealthImpedanceIndex();

    int getHealthIndex();

    BatteryHealthStatus getHealthStatus();

    DockDefendStatus getDockDefendStatus();

    BatteryHealthStats getHealthStats(in BatteryHealthAlgo algo);

    void scheduleCalibration(in BatteryCalibrationMode mode);

    BatteryCalibrationState getCalibrationState();

    void setStringProperty(in Feature feature, in int property, in String value);

    void clearBatteryDefenders(in BatteryDefendType type);

    void setChargingPolicy(in BatteryChargingPolicy policy);

    String getStringProperty(in Feature feature, in int property);

    BatteryChargingPolicy getChargingPolicy();

    String[] getRelaxationData(in long arg);

    int getTimeToTargetSoc(in int targetSoc);

    PriorityChargingInfo getPriorityChargingInfo(in int arg);
}
