package p103n1;

import W0.C0380m;

/* JADX INFO: loaded from: classes.dex */
public final class a extends C0380m implements f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f27372h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f27373i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f27374j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f27375k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f27376l;

    public a(int i8, int i9, long j8, long j9, boolean z7) {
        super(i8, i9, j8, j9, z7);
        this.f27372h = j9;
        this.f27373i = i8;
        this.f27374j = i9;
        this.f27375k = z7;
        this.f27376l = j8 == -1 ? -1L : j8;
    }

    @Override // p103n1.f
    public final long a(long j8) {
        return (Math.max(0L, j8 - this.f7435b) * 8000000) / ((long) this.f7438e);
    }

    @Override // p103n1.f
    public final long c() {
        return this.f27376l;
    }

    @Override // p103n1.f
    public final long e() {
        return this.f27372h;
    }

    @Override // p103n1.f
    public final int l() {
        return this.f27373i;
    }
}
