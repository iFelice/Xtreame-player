package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
public final class SM extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f16428G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final PM f16429H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f16430I;

    public SM(int i8, C1804p0 c1804p0, ZM zm) {
        this("Decoder init failed: [" + i8 + "], " + c1804p0.toString(), zm, c1804p0.f20383m, null, p000a.r.f("androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_neg_", Math.abs(i8)));
    }

    public static /* bridge */ /* synthetic */ SM a(SM sm) {
        return new SM(sm.getMessage(), sm.getCause(), sm.f16428G, sm.f16429H, sm.f16430I);
    }

    public SM(C1804p0 c1804p0, Exception exc, PM pm) {
        this(com.google.protobuf.U2.n(new StringBuilder("Decoder init failed: "), pm.f15375a, ", ", c1804p0.toString()), exc, c1804p0.f20383m, pm, exc instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) exc).getDiagnosticInfo() : null);
    }

    public SM(String str, Throwable th, String str2, PM pm, String str3) {
        super(str, th);
        this.f16428G = str2;
        this.f16429H = pm;
        this.f16430I = str3;
    }
}
