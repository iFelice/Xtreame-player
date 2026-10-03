package com.google.android.gms.internal.ads;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class RL extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f16258G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f16259H;

    /* JADX WARN: Illegal instructions before constructor call */
    public RL(int i8, int i9, int i10, int i11, C1804p0 c1804p0, boolean z7, RuntimeException runtimeException) {
        String strValueOf = String.valueOf(c1804p0);
        StringBuilder sbD = A0.O.D("AudioTrack init failed ", i8, " Config(", i9, ", ");
        A0.O.J(sbD, i10, ", ", i11, ") ");
        sbD.append(strValueOf);
        sbD.append(true != z7 ? HttpUrl.FRAGMENT_ENCODE_SET : " (recoverable)");
        super(sbD.toString(), runtimeException);
        this.f16258G = i8;
        this.f16259H = z7;
    }
}
