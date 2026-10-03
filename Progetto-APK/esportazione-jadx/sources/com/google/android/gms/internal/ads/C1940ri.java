package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ri, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1940ri implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1889qi f20769b;

    public /* synthetic */ C1940ri(C1889qi c1889qi, int i8) {
        this.f20768a = i8;
        this.f20769b = c1889qi;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f20768a;
        C1889qi c1889qi = this.f20769b;
        switch (i8) {
            case 0:
                C1579kk c1579kk = c1889qi.f20603b;
                return c1579kk != null ? new C0825Lk(c1579kk, AbstractC1988se.f20911f) : new C0825Lk(new C1837pi(), AbstractC1988se.f20911f);
            default:
                return c1889qi.f20603b;
        }
    }
}
