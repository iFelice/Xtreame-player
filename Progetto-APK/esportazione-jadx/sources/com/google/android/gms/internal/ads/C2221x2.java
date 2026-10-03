package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.x2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2221x2 implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f21824G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1961s2 f21825H;

    public C2221x2(int i8, C1961s2 c1961s2) {
        this.f21824G = i8;
        this.f21825H = c1961s2;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return Integer.compare(this.f21824G, ((C2221x2) obj).f21824G);
    }
}
