package com.google.hardware.biometrics.sidefps;

@VintfStability
interface IInteractiveToAuthFeatureProvider {
    boolean isFeatureEnabled(in int feature);
}
