package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.internal.zzrm;
import com.google.ads.interactivemedia.v3.internal.zzrp;
import org.eclipse.paho.client.mqttv3.MqttException;

/* JADX INFO: loaded from: classes.dex */
final class zzas implements TestingConfiguration.Builder {
    private boolean disableExperiments;
    private boolean disableOnScreenDetection;
    private boolean disableSkipFadeTransition;
    private boolean enableMonitorAppLifecycle;
    private zzrp<String, Object> extraParams;
    private boolean forceAndroidTvMode;
    private zzrm<Integer> forceExperimentIds;
    private boolean forceTvMode;
    private boolean ignoreStrictModeFalsePositives;
    private short set$0;
    private boolean useTestStreamManager;
    private boolean useVideoElementMock;
    private float videoElementMockDuration;

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration build() {
        if (this.set$0 == 1023) {
            return new zzau(this.disableExperiments, this.disableOnScreenDetection, this.disableSkipFadeTransition, this.forceExperimentIds, this.useVideoElementMock, this.videoElementMockDuration, this.useTestStreamManager, this.enableMonitorAppLifecycle, this.forceTvMode, this.forceAndroidTvMode, this.ignoreStrictModeFalsePositives, this.extraParams);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.set$0 & 1) == 0) {
            sb.append(" disableExperiments");
        }
        if ((this.set$0 & 2) == 0) {
            sb.append(" disableOnScreenDetection");
        }
        if ((this.set$0 & 4) == 0) {
            sb.append(" disableSkipFadeTransition");
        }
        if ((this.set$0 & 8) == 0) {
            sb.append(" useVideoElementMock");
        }
        if ((this.set$0 & 16) == 0) {
            sb.append(" videoElementMockDuration");
        }
        if ((this.set$0 & 32) == 0) {
            sb.append(" useTestStreamManager");
        }
        if ((this.set$0 & 64) == 0) {
            sb.append(" enableMonitorAppLifecycle");
        }
        if ((this.set$0 & MqttException.REASON_CODE_SUBSCRIBE_FAILED) == 0) {
            sb.append(" forceTvMode");
        }
        if ((this.set$0 & 256) == 0) {
            sb.append(" forceAndroidTvMode");
        }
        if ((this.set$0 & 512) == 0) {
            sb.append(" ignoreStrictModeFalsePositives");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder disableExperiments(boolean z7) {
        this.disableExperiments = z7;
        this.set$0 = (short) (this.set$0 | 1);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder disableOnScreenDetection(boolean z7) {
        this.disableOnScreenDetection = z7;
        this.set$0 = (short) (this.set$0 | 2);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder disableSkipFadeTransition(boolean z7) {
        this.disableSkipFadeTransition = z7;
        this.set$0 = (short) (this.set$0 | 4);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder enableMonitorAppLifecycle(boolean z7) {
        this.enableMonitorAppLifecycle = z7;
        this.set$0 = (short) (this.set$0 | 64);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder extraParams(zzrp<String, Object> zzrpVar) {
        this.extraParams = zzrpVar;
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder forceAndroidTvMode(boolean z7) {
        this.forceAndroidTvMode = z7;
        this.set$0 = (short) (this.set$0 | 256);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder forceExperimentIds(zzrm<Integer> zzrmVar) {
        this.forceExperimentIds = zzrmVar;
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder forceTvMode(boolean z7) {
        this.forceTvMode = z7;
        this.set$0 = (short) (this.set$0 | MqttException.REASON_CODE_SUBSCRIBE_FAILED);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder ignoreStrictModeFalsePositives(boolean z7) {
        this.ignoreStrictModeFalsePositives = z7;
        this.set$0 = (short) (this.set$0 | 512);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder useTestStreamManager(boolean z7) {
        this.useTestStreamManager = z7;
        this.set$0 = (short) (this.set$0 | 32);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder useVideoElementMock(boolean z7) {
        this.useVideoElementMock = z7;
        this.set$0 = (short) (this.set$0 | 8);
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
    public TestingConfiguration.Builder videoElementMockDuration(float f8) {
        this.videoElementMockDuration = f8;
        this.set$0 = (short) (this.set$0 | 16);
        return this;
    }
}
