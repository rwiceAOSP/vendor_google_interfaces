package com.google.hardware.biometrics.fingerprint;

import com.google.hardware.biometrics.fingerprint.ICalibrationCallback;

@VintfStability
oneway interface IFingerprintExt {
    void onPointerDown(in long requestId, in int displayId, in int pointerId,
            in float x, in float y);

    void onPointerUp(in long requestId);

    void onUiReady();

    void onPointerDownWithContext(in long requestId, in int displayId, in int pointerId,
            in float x, in float y, in float minor, in float major, in float orientation,
            in long downTime, in long eventTime, in boolean isAod);

    void onPointerUpWithContext(in long requestId, in int displayId, in int pointerId,
            in float x, in float y, in float minor, in float major, in float orientation,
            in long downTime, in long eventTime, in boolean isAod);

    void onPointerCancel();

    void onPreEnroll(in ICalibrationCallback callback);
}
