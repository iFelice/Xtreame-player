package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzps;
import com.google.ads.interactivemedia.v3.internal.zzrm;
import com.google.ads.interactivemedia.v3.internal.zzrp;

/* JADX INFO: loaded from: classes.dex */
@zzps(zza = zzau.class, zzb = {"extraParams", "isTv", "ignoreStrictModeFalsePositives"})
public abstract class TestingConfiguration {
    public static final String PARAMETER_KEY = "tcnfp";

    public interface Builder {
        TestingConfiguration build();

        Builder disableExperiments(boolean z7);

        Builder disableOnScreenDetection(boolean z7);

        Builder disableSkipFadeTransition(boolean z7);

        Builder enableMonitorAppLifecycle(boolean z7);

        Builder extraParams(zzrp<String, Object> zzrpVar);

        Builder forceAndroidTvMode(boolean z7);

        Builder forceExperimentIds(zzrm<Integer> zzrmVar);

        Builder forceTvMode(boolean z7);

        Builder ignoreStrictModeFalsePositives(boolean z7);

        Builder useTestStreamManager(boolean z7);

        Builder useVideoElementMock(boolean z7);

        Builder videoElementMockDuration(float f8);
    }

    public static Builder builder() {
        zzas zzasVar = new zzas();
        zzasVar.disableExperiments(true);
        zzasVar.disableOnScreenDetection(false);
        zzasVar.disableSkipFadeTransition(true);
        zzasVar.useVideoElementMock(false);
        zzasVar.videoElementMockDuration(30.0f);
        zzasVar.useTestStreamManager(false);
        zzasVar.ignoreStrictModeFalsePositives(false);
        zzasVar.forceTvMode(false);
        zzasVar.forceAndroidTvMode(false);
        zzasVar.forceExperimentIds(null);
        zzasVar.enableMonitorAppLifecycle(true);
        return zzasVar;
    }

    public Builder copy() {
        zzas zzasVar = new zzas();
        zzasVar.disableExperiments(disableExperiments());
        zzasVar.disableOnScreenDetection(disableOnScreenDetection());
        zzasVar.disableSkipFadeTransition(disableSkipFadeTransition());
        zzasVar.useVideoElementMock(useVideoElementMock());
        zzasVar.videoElementMockDuration(videoElementMockDuration());
        zzasVar.useTestStreamManager(useTestStreamManager());
        zzasVar.forceExperimentIds(forceExperimentIds());
        zzasVar.enableMonitorAppLifecycle(enableMonitorAppLifecycle());
        zzasVar.forceTvMode(forceTvMode());
        zzasVar.forceAndroidTvMode(forceAndroidTvMode());
        zzasVar.ignoreStrictModeFalsePositives(ignoreStrictModeFalsePositives());
        zzasVar.extraParams(extraParams());
        return zzasVar;
    }

    public abstract boolean disableExperiments();

    public abstract boolean disableOnScreenDetection();

    public abstract boolean disableSkipFadeTransition();

    public abstract boolean enableMonitorAppLifecycle();

    public abstract zzrp<String, Object> extraParams();

    public abstract boolean forceAndroidTvMode();

    public abstract zzrm<Integer> forceExperimentIds();

    public abstract boolean forceTvMode();

    public abstract boolean ignoreStrictModeFalsePositives();

    public abstract boolean useTestStreamManager();

    public abstract boolean useVideoElementMock();

    public abstract float videoElementMockDuration();
}
