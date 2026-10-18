package com.google.android.gms.internal.ads;

import p090l3.C3099q;
import p113o3.AbstractC3156n;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1110bf extends AbstractC3156n {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0863Oe f18058b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractC1522jf f18059c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f18060d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String[] f18061e;

    public C1110bf(InterfaceC0863Oe interfaceC0863Oe, AbstractC1522jf abstractC1522jf, String str, String[] strArr) {
        this.f18058b = interfaceC0863Oe;
        this.f18059c = abstractC1522jf;
        this.f18060d = str;
        this.f18061e = strArr;
        p083k3.l.f25980A.f26005y.f18228G.add(this);
    }

    @Override // p113o3.AbstractC3156n
    public final void a() {
        int i8 = 14;
        try {
            this.f18059c.s(this.f18060d, this.f18061e);
        } finally {
            p113o3.O.f27924l.post(new RunnableC0878Pf(this, i8));
        }
    }

    @Override // p113o3.AbstractC3156n
    public final D4.b b() {
        return (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15686O1)).booleanValue() && (this.f18059c instanceof C1730nf)) ? AbstractC1988se.f20910e.b(new CallableC1419he(this, 1)) : super.b();
    }
}
