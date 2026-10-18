package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1886qf implements DK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CO f20590a = new CO();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f20591b = 15000000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f20592c = 30000000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f20593d = 2500000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f20594e = 5000000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f20595f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f20596g;

    @Override // com.google.android.gms.internal.ads.DK
    public final void a(C2344zL c2344zL) {
        this.f20595f = 0;
        this.f20596g = false;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void b(C2344zL c2344zL, AbstractC1048aK[] abstractC1048aKArr, InterfaceC2087uO[] interfaceC2087uOArr) {
        int i8 = 0;
        this.f20595f = 0;
        while (true) {
            int length = abstractC1048aKArr.length;
            if (i8 >= 2) {
                this.f20590a.M(this.f20595f);
                return;
            } else {
                if (interfaceC2087uOArr[i8] != null) {
                    this.f20595f += abstractC1048aKArr[i8].f17867b != 1 ? 131072000 : 13107200;
                }
                i8++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final boolean c(CK ck) {
        long j8 = ck.f12617d ? this.f20594e : this.f20593d;
        return j8 <= 0 || ck.f12615b >= j8;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void d(C2344zL c2344zL) {
        this.f20595f = 0;
        this.f20596g = false;
        CO co = this.f20590a;
        synchronized (co) {
            co.M(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final void e(C2344zL c2344zL) {
        this.f20595f = 0;
        this.f20596g = false;
        CO co = this.f20590a;
        synchronized (co) {
            co.M(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final boolean f(CK ck) {
        char c8;
        int i8;
        long j8 = ck.f12615b;
        boolean z7 = true;
        if (j8 > this.f20592c) {
            c8 = 0;
        } else {
            c8 = j8 < this.f20591b ? (char) 2 : (char) 1;
        }
        CO co = this.f20590a;
        synchronized (co) {
            i8 = co.f12629b * 65536;
        }
        int i9 = this.f20595f;
        if (c8 != 2 && (c8 != 1 || !this.f20596g || i8 >= i9)) {
            z7 = false;
        }
        this.f20596g = z7;
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final long zzb() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.DK
    public final CO zzj() {
        return this.f20590a;
    }
}
