package com.google.android.gms.internal.ads;

import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Oi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0867Oi implements InterfaceC3067a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0895Qi f15191G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Yv f15192H;

    public C0867Oi(C0895Qi c0895Qi, Yv yv) {
        this.f15191G = c0895Qi;
        this.f15192H = yv;
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        Yv yv = this.f15192H;
        C0895Qi c0895Qi = this.f15191G;
        String str = yv.f17679f;
        synchronized (c0895Qi.f16113a) {
            try {
                Integer num = (Integer) c0895Qi.f16114b.get(str);
                c0895Qi.f16114b.put(str, num == null ? 1 : Integer.valueOf(num.intValue() + 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
