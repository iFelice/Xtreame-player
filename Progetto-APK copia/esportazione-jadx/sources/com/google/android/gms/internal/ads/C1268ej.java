package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ej, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1268ej implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18543a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1217dj f18544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18545c;

    public /* synthetic */ C1268ej(C1217dj c1217dj, MJ mj, int i8) {
        this.f18543a = i8;
        this.f18544b = c1217dj;
        this.f18545c = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f18543a;
        C1217dj c1217dj = this.f18544b;
        QJ qj = this.f18545c;
        switch (i8) {
            case 0:
                String str = (String) qj.zzb();
                C2104uq c2104uq = c1217dj.f18351f;
                return c2104uq != null ? c2104uq : new C2104uq(str);
            default:
                ((C1523jg) qj).a();
                Context context = c1217dj.f18346a;
                Cw.N0(context);
                return context;
        }
    }
}
