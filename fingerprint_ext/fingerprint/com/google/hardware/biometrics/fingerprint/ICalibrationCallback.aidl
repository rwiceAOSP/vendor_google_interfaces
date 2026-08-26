package com.google.hardware.biometrics.fingerprint;

@VintfStability
oneway interface ICalibrationCallback {
    void onCalibrationError(in int error);
    void onCalibrationStarted(in int sensorId);
    void onCalibrationFinished(in int sensorId);
}
