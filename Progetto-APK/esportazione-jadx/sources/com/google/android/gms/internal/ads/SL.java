package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class SL extends Exception {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f16425G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f16426H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C1804p0 f16427I;

    public SL(int i8, C1804p0 c1804p0, boolean z7) {
        super(p000a.r.f("AudioTrack write failed: ", i8));
        this.f16426H = z7;
        this.f16425G = i8;
        this.f16427I = c1804p0;
    }
}
