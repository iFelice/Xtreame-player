package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.eK, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1254eK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f18502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f18503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f18504c = -9223372036854775807L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f18505d = -9223372036854775807L;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f18507f = -9223372036854775807L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18508g = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f18511j = 0.97f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f18510i = 1.03f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f18512k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f18513l = -9223372036854775807L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f18506e = -9223372036854775807L;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18509h = -9223372036854775807L;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f18514m = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f18515n = -9223372036854775807L;

    public /* synthetic */ C1254eK(long j8, long j9) {
        this.f18502a = j8;
        this.f18503b = j9;
    }

    public final void a() {
        long j8 = this.f18509h;
        if (j8 == -9223372036854775807L) {
            return;
        }
        long j9 = j8 + this.f18503b;
        this.f18509h = j9;
        long j10 = this.f18508g;
        if (j10 != -9223372036854775807L && j9 > j10) {
            this.f18509h = j10;
        }
        this.f18513l = -9223372036854775807L;
    }

    public final void b() {
        long j8;
        long j9 = this.f18504c;
        if (j9 != -9223372036854775807L) {
            j8 = this.f18505d;
            if (j8 == -9223372036854775807L) {
                long j10 = this.f18507f;
                if (j10 != -9223372036854775807L && j9 < j10) {
                    j9 = j10;
                }
                j8 = this.f18508g;
                if (j8 == -9223372036854775807L || j9 <= j8) {
                    j8 = j9;
                }
            }
        } else {
            j8 = -9223372036854775807L;
        }
        if (this.f18506e == j8) {
            return;
        }
        this.f18506e = j8;
        this.f18509h = j8;
        this.f18514m = -9223372036854775807L;
        this.f18515n = -9223372036854775807L;
        this.f18513l = -9223372036854775807L;
    }
}
