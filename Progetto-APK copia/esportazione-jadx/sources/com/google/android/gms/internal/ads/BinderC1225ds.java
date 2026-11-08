package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayList;
import p090l3.InterfaceC3110w;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ds, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC1225ds extends p090l3.E {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f18369G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AbstractC1317fg f18370H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Xv f18371I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p086l.s1 f18372J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC3110w f18373K;

    public BinderC1225ds(C0671Bg c0671Bg, Context context, String str) {
        Xv xv = new Xv();
        this.f18371I = xv;
        this.f18372J = new p086l.s1(6);
        this.f18370H = c0671Bg;
        xv.f17532c = str;
        this.f18369G = context;
    }

    @Override // p090l3.F
    public final void C1(InterfaceC1881qa interfaceC1881qa) {
        this.f18372J.f26378e = interfaceC1881qa;
    }

    @Override // p090l3.F
    public final void J1(InterfaceC3110w interfaceC3110w) {
        this.f18373K = interfaceC3110w;
    }

    @Override // p090l3.F
    public final void L2(String str, InterfaceC1813p9 interfaceC1813p9, InterfaceC1709n9 interfaceC1709n9) {
        p086l.s1 s1Var = this.f18372J;
        ((p132r.m) s1Var.f26379f).put(str, interfaceC1813p9);
        if (interfaceC1709n9 != null) {
            ((p132r.m) s1Var.f26380g).put(str, interfaceC1709n9);
        }
    }

    @Override // p090l3.F
    public final void a1(p067i3.d dVar) {
        Xv xv = this.f18371I;
        xv.f17540k = dVar;
        if (dVar != null) {
            xv.f17534e = dVar.f25570G;
            xv.f17541l = dVar.f25571H;
        }
    }

    @Override // p090l3.F
    public final void b2(InterfaceC1501j9 interfaceC1501j9) {
        this.f18372J.f26375b = interfaceC1501j9;
    }

    @Override // p090l3.F
    public final void c1(InterfaceC1605l9 interfaceC1605l9) {
        this.f18372J.f26374a = interfaceC1605l9;
    }

    @Override // p090l3.F
    public final void e1(InterfaceC2124v9 interfaceC2124v9) {
        this.f18372J.f26376c = interfaceC2124v9;
    }

    @Override // p090l3.F
    public final void i3(M8 m8) {
        this.f18371I.f17537h = m8;
    }

    @Override // p090l3.F
    public final void p2(InterfaceC1968s9 interfaceC1968s9, p090l3.d1 d1Var) {
        this.f18372J.f26377d = interfaceC1968s9;
        this.f18371I.f17531b = d1Var;
    }

    @Override // p090l3.F
    public final void p3(C1621la c1621la) {
        Xv xv = this.f18371I;
        xv.f17543n = c1621la;
        xv.f17533d = new p090l3.Y0(false, true, false);
    }

    @Override // p090l3.F
    public final void q2(p090l3.Y y7) {
        this.f18371I.f17550u = y7;
    }

    @Override // p090l3.F
    public final void z1(p067i3.a aVar) {
        Xv xv = this.f18371I;
        xv.f17539j = aVar;
        if (aVar != null) {
            xv.f17534e = aVar.f25561G;
        }
    }

    @Override // p090l3.F
    public final p090l3.C zze() {
        p086l.s1 s1Var = this.f18372J;
        s1Var.getClass();
        C0856Nl c0856Nl = new C0856Nl(s1Var);
        ArrayList arrayList = new ArrayList();
        if (c0856Nl.f15077c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (c0856Nl.f15075a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (c0856Nl.f15076b != null) {
            arrayList.add(Integer.toString(2));
        }
        p132r.m mVar = c0856Nl.f15080f;
        if (!mVar.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (c0856Nl.f15079e != null) {
            arrayList.add(Integer.toString(7));
        }
        Xv xv = this.f18371I;
        xv.f17535f = arrayList;
        ArrayList arrayList2 = new ArrayList(mVar.f29684I);
        for (int i8 = 0; i8 < mVar.f29684I; i8++) {
            arrayList2.add((String) mVar.f(i8));
        }
        xv.f17536g = arrayList2;
        if (xv.f17531b == null) {
            xv.f17531b = p090l3.d1.l();
        }
        return new BinderC1277es(this.f18369G, this.f18370H, this.f18371I, c0856Nl, this.f18373K);
    }
}
