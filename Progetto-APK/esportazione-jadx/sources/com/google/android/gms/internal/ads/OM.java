package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* JADX INFO: loaded from: classes.dex */
public class OM extends TJ {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f15161G;

    public OM(IllegalStateException illegalStateException, PM pm) {
        super("Decoder failed: ".concat(String.valueOf(pm == null ? null : pm.f15375a)), illegalStateException);
        boolean z7 = illegalStateException instanceof MediaCodec.CodecException;
        this.f15161G = Et.f13234a >= 23 ? z7 ? ((MediaCodec.CodecException) illegalStateException).getErrorCode() : 0 : Et.q(z7 ? ((MediaCodec.CodecException) illegalStateException).getDiagnosticInfo() : null);
    }
}
