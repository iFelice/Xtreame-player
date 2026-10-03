package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.uL, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2084uL {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f21218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f21219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f21220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C2190wN f21221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f21222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f21223f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C2136vL f21224g;

    public C2084uL(C2136vL c2136vL, String str, int i8, C2190wN c2190wN) {
        this.f21224g = c2136vL;
        this.f21218a = str;
        this.f21219b = i8;
        this.f21220c = c2190wN == null ? -1L : c2190wN.f21693d;
        if (c2190wN == null || !c2190wN.b()) {
            return;
        }
        this.f21221d = c2190wN;
    }

    public final boolean a(C1204dL c1204dL) {
        C2190wN c2190wN = c1204dL.f18325d;
        if (c2190wN == null) {
            return this.f21219b != c1204dL.f18324c;
        }
        long j8 = this.f21220c;
        if (j8 == -1) {
            return false;
        }
        if (c2190wN.f21693d > j8) {
            return true;
        }
        C2190wN c2190wN2 = this.f21221d;
        if (c2190wN2 == null) {
            return false;
        }
        AbstractC0774Ie abstractC0774Ie = c1204dL.f18323b;
        int iA = abstractC0774Ie.a(c2190wN.f21690a);
        int iA2 = abstractC0774Ie.a(c2190wN2.f21690a);
        if (c2190wN.f21693d < c2190wN2.f21693d || iA < iA2) {
            return false;
        }
        if (iA > iA2) {
            return true;
        }
        boolean zB = c2190wN.b();
        int i8 = c2190wN2.f21691b;
        if (!zB) {
            int i9 = c2190wN.f21694e;
            return i9 == -1 || i9 > i8;
        }
        int i10 = c2190wN.f21691b;
        if (i10 > i8) {
            return true;
        }
        if (i10 == i8) {
            return c2190wN.f21692c > c2190wN2.f21692c;
        }
        return false;
    }

    public final boolean b(AbstractC0774Ie abstractC0774Ie, AbstractC0774Ie abstractC0774Ie2) {
        int i8 = this.f21219b;
        if (i8 < abstractC0774Ie.c()) {
            C2136vL c2136vL = this.f21224g;
            abstractC0774Ie.e(i8, c2136vL.f21510a, 0L);
            int i9 = c2136vL.f21510a.f21718k;
            while (true) {
                if (i9 > c2136vL.f21510a.f21719l) {
                    i8 = -1;
                    break;
                }
                int iA = abstractC0774Ie2.a(abstractC0774Ie.f(i9));
                if (iA != -1) {
                    i8 = abstractC0774Ie2.d(iA, c2136vL.f21511b, false).f19467c;
                    break;
                }
                i9++;
            }
        } else if (i8 >= abstractC0774Ie2.c()) {
            i8 = -1;
            break;
        }
        this.f21219b = i8;
        if (i8 == -1) {
            return false;
        }
        C2190wN c2190wN = this.f21221d;
        return c2190wN == null || abstractC0774Ie2.a(c2190wN.f21690a) != -1;
    }
}
