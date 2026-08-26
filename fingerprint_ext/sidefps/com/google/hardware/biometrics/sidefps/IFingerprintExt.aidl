package com.google.hardware.biometrics.sidefps;

import com.google.hardware.biometrics.sidefps.IInteractiveToAuthFeatureProvider;

@VintfStability
interface IFingerprintExt {
    void registerFeatureProvider(in IInteractiveToAuthFeatureProvider provider);

    oneway void resumeEnroll();

    int getPauseEnrollThreshold();
}
