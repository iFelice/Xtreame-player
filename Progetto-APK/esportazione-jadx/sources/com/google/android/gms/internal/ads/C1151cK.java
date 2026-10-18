package com.google.android.gms.internal.ads;

import java.util.Locale;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1151cK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f18208a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18209b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18212e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18213f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18214g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18215h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18216i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f18217j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f18218k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f18219l;

    public final String toString() {
        int i8 = this.f18208a;
        int i9 = this.f18209b;
        int i10 = this.f18210c;
        int i11 = this.f18211d;
        int i12 = this.f18212e;
        int i13 = this.f18213f;
        int i14 = this.f18214g;
        int i15 = this.f18215h;
        int i16 = this.f18216i;
        int i17 = this.f18217j;
        long j8 = this.f18218k;
        int i18 = this.f18219l;
        Locale locale = Locale.US;
        StringBuilder sbD = A0.O.D("DecoderCounters {\n decoderInits=", i8, ",\n decoderReleases=", i9, "\n queuedInputBuffers=");
        A0.O.J(sbD, i10, "\n skippedInputBuffers=", i11, "\n renderedOutputBuffers=");
        A0.O.J(sbD, i12, "\n skippedOutputBuffers=", i13, "\n droppedBuffers=");
        A0.O.J(sbD, i14, "\n droppedInputBuffers=", i15, "\n maxConsecutiveDroppedBuffers=");
        A0.O.J(sbD, i16, "\n droppedToKeyframeEvents=", i17, "\n totalVideoFrameProcessingOffsetUs=");
        sbD.append(j8);
        sbD.append("\n videoFrameProcessingOffsetCount=");
        sbD.append(i18);
        sbD.append("\n}");
        return sbD.toString();
    }
}
