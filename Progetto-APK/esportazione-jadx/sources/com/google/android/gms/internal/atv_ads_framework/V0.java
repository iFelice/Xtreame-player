package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: loaded from: classes.dex */
public enum V0 {
    /* JADX INFO: Fake field, exist only in values array */
    SIGNAL_COLLECTION_ERROR_UNKNOWN(0),
    /* JADX INFO: Fake field, exist only in values array */
    SIGNAL_COLLECTION_ERROR_RUNTIME_EXCEPTION(1),
    SIGNAL_COLLECTION_ERROR_NAME_NOT_FOUND(2),
    SIGNAL_COLLECTION_ERROR_BUILD_FINGERPRINT_PREFIX(3),
    SIGNAL_COLLECTION_ERROR_NULL_CONTENT_PROVIDER_DATA(4);


    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f22300G;

    V0(int i8) {
        this.f22300G = i8;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f22300G);
    }
}
