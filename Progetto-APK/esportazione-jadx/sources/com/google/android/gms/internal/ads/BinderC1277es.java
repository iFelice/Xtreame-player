package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.InterfaceC3110w;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.es, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1277es extends p090l3.B {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1639ls f18614G;

    public BinderC1277es(Context context, AbstractC1317fg abstractC1317fg, Xv xv, C0856Nl c0856Nl, InterfaceC3110w interfaceC3110w) {
        p004a3.b bVar = new p004a3.b(c0856Nl, (C0738Fn) ((C0671Bg) abstractC1317fg).f12469y.zzb());
        ((C1433hs) bVar.f8651I).f19164G.set(interfaceC3110w);
        C1950rs c1950rs = new C1950rs();
        c1950rs.f20797I = abstractC1317fg;
        c1950rs.f20795G = context;
        c1950rs.f20798J = bVar;
        c1950rs.f20796H = xv;
        c1950rs.f20799K = abstractC1317fg.d();
        xv.f17547r = (C1433hs) bVar.f8651I;
        this.f18614G = new C1639ls(c1950rs, xv.f17532c);
    }

    @Override // p090l3.C
    public final synchronized void H0(p090l3.b1 b1Var, int i8) {
        this.f18614G.c(b1Var, i8);
    }

    @Override // p090l3.C
    public final void q0(p090l3.b1 b1Var) {
        this.f18614G.c(b1Var, 1);
    }

    @Override // p090l3.C
    public final synchronized String zze() {
        return this.f18614G.a();
    }

    @Override // p090l3.C
    public final synchronized String zzf() {
        return this.f18614G.b();
    }

    @Override // p090l3.C
    public final synchronized boolean zzi() {
        return this.f18614G.d();
    }
}
