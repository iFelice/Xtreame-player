package com.google.android.gms.internal.ads;

import android.os.HandlerThread;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class BM implements Gz {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f12362G;

    public /* synthetic */ BM(int i8) {
        this.f12362G = i8;
    }

    @Override // com.google.android.gms.internal.ads.Gz
    public final Object zza() {
        return new HandlerThread(DM.k(this.f12362G, "ExoPlayer:MediaCodecAsyncAdapter:"));
    }
}
