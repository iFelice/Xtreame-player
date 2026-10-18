package com.google.android.gms.internal.cast;

import D3.AbstractC0162f;
import D3.C0159c;
import D3.InterfaceC0164h;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class P1 implements InterfaceC0164h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ p109o.j f22515G;

    public P1(p109o.j jVar) {
        this.f22515G = jVar;
    }

    @Override // D3.InterfaceC0164h
    public final void b(AbstractC0162f abstractC0162f) {
        C0159c c0159c = (C0159c) abstractC0162f;
        F.d dVar = new F.d(2, 0);
        p109o.j jVar = this.f22515G;
        dVar.f2963J = Boolean.valueOf(((BinderC2430c) jVar.f27593H).f22658I == 2);
        p109o.j.c(jVar, new a3(dVar));
        Z2 z7 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z7);
        z7.a(c0159c);
        c0159c.f2378l = (P1) jVar.f27596K;
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void e(AbstractC0162f abstractC0162f, boolean z7) {
        a3 a3Var = new a3(new F.d(4, 0));
        p109o.j jVar = this.f22515G;
        p109o.j.c(jVar, a3Var);
        Z2 z8 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z8);
        z8.a((C0159c) abstractC0162f);
    }

    @Override // D3.InterfaceC0164h
    public final void f(AbstractC0162f abstractC0162f, int i8) {
        F.d dVar = new F.d(6, 0);
        dVar.f2962I = Integer.valueOf(i8);
        a3 a3Var = new a3(dVar);
        p109o.j jVar = this.f22515G;
        p109o.j.c(jVar, a3Var);
        Z2 z7 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z7);
        z7.a((C0159c) abstractC0162f);
    }

    @Override // D3.InterfaceC0164h
    public final void g(AbstractC0162f abstractC0162f, int i8) {
        F.d dVar = new F.d(8, 0);
        dVar.f2962I = Integer.valueOf(i8);
        a3 a3Var = new a3(dVar);
        p109o.j jVar = this.f22515G;
        p109o.j.c(jVar, a3Var);
        jVar.f();
    }

    @Override // D3.InterfaceC0164h
    public final void h(AbstractC0162f abstractC0162f, String str) {
        a3 a3Var = new a3(new F.d(7, 0));
        p109o.j jVar = this.f22515G;
        p109o.j.c(jVar, a3Var);
        Z2 z7 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z7);
        z7.a((C0159c) abstractC0162f);
        Z2 z8 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z8);
        String str2 = z8.f22610k;
        if (str2 == null) {
            z8.f22610k = str;
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            z8.b(4);
        }
    }

    @Override // D3.InterfaceC0164h
    public final void j(AbstractC0162f abstractC0162f, int i8) {
        F.d dVar = new F.d(5, 0);
        dVar.f2962I = Integer.valueOf(i8);
        a3 a3Var = new a3(dVar);
        p109o.j jVar = this.f22515G;
        p109o.j.c(jVar, a3Var);
        jVar.f();
    }

    @Override // D3.InterfaceC0164h
    public final void l(AbstractC0162f abstractC0162f, String str) {
        a3 a3Var = new a3(new F.d(4, 0));
        p109o.j jVar = this.f22515G;
        p109o.j.c(jVar, a3Var);
        Z2 z7 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z7);
        z7.a((C0159c) abstractC0162f);
        Z2 z8 = (Z2) jVar.f27595J;
        com.bumptech.glide.c.h(z8);
        String str2 = z8.f22610k;
        if (str2 == null) {
            z8.f22610k = str;
        } else {
            if (TextUtils.equals(str, str2)) {
                return;
            }
            z8.b(4);
        }
    }

    @Override // D3.InterfaceC0164h
    public final /* bridge */ /* synthetic */ void o(AbstractC0162f abstractC0162f) {
    }

    @Override // D3.InterfaceC0164h
    public final void q(AbstractC0162f abstractC0162f, int i8) {
        F.d dVar = new F.d(9, 0);
        dVar.f2962I = Integer.valueOf(i8);
        p109o.j jVar = this.f22515G;
        dVar.f2963J = Boolean.valueOf(((BinderC2430c) jVar.f27593H).f22658I == 2);
        p109o.j.c(jVar, new a3(dVar));
        jVar.f();
    }

    public /* synthetic */ P1(p109o.j jVar, int i8) {
        this.f22515G = jVar;
    }
}
