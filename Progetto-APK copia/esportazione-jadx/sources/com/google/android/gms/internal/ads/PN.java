package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.support.v4.media.session.PlaybackStateCompat;
import p021c4.AbstractC0604p;
import p021c4.C0595k1;
import p021c4.C0597l0;

/* JADX INFO: loaded from: classes.dex */
public final class PN {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f15385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f15386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f15387d;

    public PN(long j8) {
        p113o3.r.M(((C2347zO) this.f15386c) == null);
        this.f15384a = j8;
        this.f15385b = j8 + PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
    }

    public final int a(long j8) {
        long j9 = j8 - this.f15384a;
        ((C2347zO) this.f15386c).getClass();
        return (int) j9;
    }

    public final boolean b(long j8, boolean z7, boolean z8) {
        C0595k1 c0595k1 = (C0595k1) this.f15387d;
        c0595k1.m();
        c0595k1.n();
        if (((C0597l0) c0595k1.f10616G).f()) {
            C0597l0 c0597l0 = (C0597l0) c0595k1.f10616G;
            p021c4.Z z9 = c0597l0.f11257N;
            C0597l0.i(z9);
            c0597l0.f11263T.getClass();
            z9.f11100W.b(System.currentTimeMillis());
        }
        long j9 = j8 - this.f15384a;
        if (!z7 && j9 < 1000) {
            p021c4.T t7 = ((C0597l0) c0595k1.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11047T.b(Long.valueOf(j9), "Screen exposed for less than 1000 ms. Event not sent. time");
            return false;
        }
        if (!z8) {
            j9 = j8 - this.f15385b;
            this.f15385b = j8;
        }
        C0597l0 c0597l1 = (C0597l0) c0595k1.f10616G;
        p021c4.T t8 = c0597l1.f11258O;
        C0597l0.k(t8);
        t8.f11047T.b(Long.valueOf(j9), "Recording user engagement, ms");
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j9);
        boolean z10 = !c0597l1.f11256M.C();
        C0597l0 c0597l2 = (C0597l0) c0595k1.f10616G;
        p021c4.V0 v5 = c0597l2.f11264U;
        C0597l0.j(v5);
        p021c4.I1.C(v5.t(z10), bundle, true);
        if (!z8) {
            p021c4.K0 k8 = c0597l2.f11265V;
            C0597l0.j(k8);
            k8.y("auto", "_e", bundle);
        }
        this.f15384a = j8;
        AbstractC0604p abstractC0604p = (AbstractC0604p) this.f15386c;
        abstractC0604p.a();
        abstractC0604p.c(((Long) p021c4.E.f10813q0.a(null)).longValue());
        return true;
    }
}
