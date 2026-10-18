package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.t2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2500t2 extends AbstractC2504u2 {
    @Override // com.google.android.gms.internal.cast.AbstractC2504u2
    public final void a(Object obj, long j8) {
        V1 v5 = (V1) ((InterfaceC2477n2) W2.i(obj, j8));
        if (v5.f22546G) {
            v5.f22546G = false;
        }
    }

    @Override // com.google.android.gms.internal.cast.AbstractC2504u2
    public final void b(Object obj, long j8, Object obj2) {
        InterfaceC2477n2 interfaceC2477n2Zzg = (InterfaceC2477n2) W2.i(obj, j8);
        InterfaceC2477n2 interfaceC2477n2 = (InterfaceC2477n2) W2.i(obj2, j8);
        int size = interfaceC2477n2Zzg.size();
        int size2 = interfaceC2477n2.size();
        if (size > 0 && size2 > 0) {
            if (!((V1) interfaceC2477n2Zzg).f22546G) {
                interfaceC2477n2Zzg = interfaceC2477n2Zzg.zzg(size2 + size);
            }
            interfaceC2477n2Zzg.addAll(interfaceC2477n2);
        }
        if (size > 0) {
            interfaceC2477n2 = interfaceC2477n2Zzg;
        }
        W2.m(obj, j8, interfaceC2477n2);
    }
}
