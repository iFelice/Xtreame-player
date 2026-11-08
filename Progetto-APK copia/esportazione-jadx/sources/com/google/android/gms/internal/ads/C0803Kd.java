package com.google.android.gms.internal.ads;

import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Kd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0803Kd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p113o3.K f14379a;

    public C0803Kd(p113o3.K k8) {
        this.f14379a = k8;
    }

    public final void a(int i8, long j8) {
        long j9;
        J7 j10 = Q7.f15892n0;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j10)).booleanValue()) {
            return;
        }
        p113o3.L l4 = (p113o3.L) this.f14379a;
        l4.s();
        synchronized (l4.f27894a) {
            j9 = l4.f27893D;
        }
        if (j8 - j9 < 0) {
            p113o3.I.k("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15900o0)).booleanValue()) {
            ((p113o3.L) this.f14379a).l(i8);
            ((p113o3.L) this.f14379a).m(j8);
        } else {
            ((p113o3.L) this.f14379a).l(-1);
            ((p113o3.L) this.f14379a).m(j8);
        }
    }
}
