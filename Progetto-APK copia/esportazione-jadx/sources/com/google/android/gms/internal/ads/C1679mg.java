package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1679mg implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19979a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1421hg f19980b;

    public /* synthetic */ C1679mg(C1421hg c1421hg, int i8) {
        this.f19979a = i8;
        this.f19980b = c1421hg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f19979a;
        C1421hg c1421hg = this.f19980b;
        switch (i8) {
            case 0:
                return new p083k3.f(c1421hg.f19118b, c1421hg.f19117a);
            case 1:
                c1421hg.getClass();
                String strW = p083k3.l.f25980A.f25983c.w(c1421hg.f19118b, c1421hg.f19117a.f28196G);
                Cw.N0(strW);
                return strW;
            default:
                return Long.valueOf(c1421hg.f19119c);
        }
    }
}
