package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* JADX INFO: loaded from: classes.dex */
public final class VL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UL f17000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f17003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f17004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17005f;

    public VL(AudioTrack audioTrack) {
        this.f17000a = new UL(audioTrack);
        a(0);
    }

    public final void a(int i8) {
        this.f17001b = i8;
        long j8 = 10000;
        if (i8 == 0) {
            this.f17004e = 0L;
            this.f17005f = -1L;
            this.f17002c = System.nanoTime() / 1000;
        } else {
            if (i8 == 1) {
                this.f17003d = 10000L;
                return;
            }
            j8 = (i8 == 2 || i8 == 3) ? 10000000L : 500000L;
        }
        this.f17003d = j8;
    }
}
