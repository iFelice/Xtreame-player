package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Sh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0922Sh implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2246xc f16497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f16498c;

    public /* synthetic */ C0922Sh(C2246xc c2246xc, MJ mj, int i8) {
        this.f16496a = i8;
        this.f16497b = c2246xc;
        this.f16498c = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        int i8 = this.f16496a;
        QJ qj = this.f16498c;
        switch (i8) {
            case 0:
                return this.f16497b.A(((NJ) qj).zzb());
            case 1:
                Set setSingleton = Collections.singleton(new C0825Lk((C1785oi) qj.zzb(), AbstractC1988se.f20911f));
                Cw.N0(setSingleton);
                return setSingleton;
            default:
                return new C0825Lk((C1733ni) qj.zzb(), AbstractC1988se.f20910e);
        }
    }
}
