package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Yk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1009Yk implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17635a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2218x f17636b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f17637c;

    public /* synthetic */ C1009Yk(C2218x c2218x, MJ mj, int i8) {
        this.f17635a = i8;
        this.f17636b = c2218x;
        this.f17637c = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f17635a;
        C2218x c2218x = this.f17636b;
        QJ qj = this.f17637c;
        switch (i8) {
            case 0:
                Set setJ = c2218x.j((C0979Wi) qj.zzb());
                Cw.N0(setJ);
                return setJ;
            default:
                return new C0825Lk(new C0908Rh((InterfaceC0715Ef) c2218x.f21780I, 1), (Executor) qj.zzb());
        }
    }
}
