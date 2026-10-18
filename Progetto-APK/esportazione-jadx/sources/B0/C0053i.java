package B0;

import java.util.Locale;

/* JADX INFO: renamed from: B0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0053i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f967d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f968e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f969f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f970g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f971h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f972i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f973j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f974k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f975l;

    public final String toString() {
        int i8 = this.f964a;
        int i9 = this.f965b;
        int i10 = this.f966c;
        int i11 = this.f967d;
        int i12 = this.f968e;
        int i13 = this.f969f;
        int i14 = this.f970g;
        int i15 = this.f971h;
        int i16 = this.f972i;
        int i17 = this.f973j;
        long j8 = this.f974k;
        int i18 = this.f975l;
        String str = p117p0.M.f28050a;
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
