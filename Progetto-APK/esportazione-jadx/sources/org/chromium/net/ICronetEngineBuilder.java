package org.chromium.net;

import java.util.Date;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ICronetEngineBuilder {
    public abstract ICronetEngineBuilder addPublicKeyPins(String str, Set<byte[]> set, boolean z7, Date date);

    public abstract ICronetEngineBuilder addQuicHint(String str, int i8, int i9);

    public abstract ExperimentalCronetEngine build();

    public ICronetEngineBuilder enableBrotli(boolean z7) {
        return this;
    }

    public abstract ICronetEngineBuilder enableHttp2(boolean z7);

    public abstract ICronetEngineBuilder enableHttpCache(int i8, long j8);

    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean z7) {
        return this;
    }

    public abstract ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean z7);

    public abstract ICronetEngineBuilder enableQuic(boolean z7);

    public abstract ICronetEngineBuilder enableSdch(boolean z7);

    public abstract String getDefaultUserAgent();

    public abstract ICronetEngineBuilder setExperimentalOptions(String str);

    public abstract ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader libraryLoader);

    public abstract ICronetEngineBuilder setStoragePath(String str);

    public ICronetEngineBuilder setThreadPriority(int i8) {
        return this;
    }

    public abstract ICronetEngineBuilder setUserAgent(String str);
}
