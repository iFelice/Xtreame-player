package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import p090l3.C3099q;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1376gn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1734nj f18977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0855Nk f18978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0734Fj f18979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0839Mj f18980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0896Qj f18981e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final C1527jk f18982f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Executor f18983g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0840Mk f18984h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C0672Bh f18985i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p083k3.b f18986j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final InterfaceC0758Hd f18987k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final H4 f18988l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C1321fk f18989m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C1172cq f18990n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C1488ix f18991o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final C0738Fn f18992p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final C1784oh f18993q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final C1634ln f18994r;

    public C1376gn(C1734nj c1734nj, C0734Fj c0734Fj, C0839Mj c0839Mj, C0896Qj c0896Qj, C1527jk c1527jk, Executor executor, C0840Mk c0840Mk, C0672Bh c0672Bh, p083k3.b bVar, InterfaceC0758Hd interfaceC0758Hd, H4 h8, C1321fk c1321fk, C1172cq c1172cq, C1488ix c1488ix, C0738Fn c0738Fn, C0855Nk c0855Nk, C1784oh c1784oh, C1634ln c1634ln) {
        this.f18977a = c1734nj;
        this.f18979c = c0734Fj;
        this.f18980d = c0839Mj;
        this.f18981e = c0896Qj;
        this.f18982f = c1527jk;
        this.f18983g = executor;
        this.f18984h = c0840Mk;
        this.f18985i = c0672Bh;
        this.f18986j = bVar;
        this.f18987k = interfaceC0758Hd;
        this.f18988l = h8;
        this.f18989m = c1321fk;
        this.f18990n = c1172cq;
        this.f18991o = c1488ix;
        this.f18992p = c0738Fn;
        this.f18978b = c0855Nk;
        this.f18993q = c1784oh;
        this.f18994r = c1634ln;
    }

    public static final C2040te b(InterfaceC0715Ef interfaceC0715Ef, String str, String str2, Bundle bundle) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15749W1)).booleanValue()) {
            p148t.a.g(p083k3.l.f25980A.f25990j, bundle, "rendering-webview-load-html-start");
        }
        C2040te c2040te = new C2040te();
        interfaceC0715Ef.zzN().f17463M = new C0871Om(1, bundle, c2040te);
        interfaceC0715Ef.w0(str, str2);
        return c2040te;
    }

    public final void a(InterfaceC0715Ef interfaceC0715Ef, boolean z7, P9 p9, Bundle bundle) {
        E4 e8;
        J7 j8 = Q7.f15749W1;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            p148t.a.g(p083k3.l.f25980A.f25990j, bundle, "rendering-configure-webview-start");
        }
        interfaceC0715Ef.zzN().y(new InterfaceC3067a() { // from class: com.google.android.gms.internal.ads.dn
            @Override // p090l3.InterfaceC3067a
            public final void x() {
                this.f18354G.f18977a.x();
            }
        }, this.f18980d, this.f18981e, new G9() { // from class: com.google.android.gms.internal.ads.en
            @Override // com.google.android.gms.internal.ads.G9
            public final void d(String str, String str2) {
                this.f18586G.f18982f.d(str, str2);
            }
        }, new C0885Pm(this, 2), z7, p9, this.f18986j, new C0864Of(this, 13), this.f18987k, this.f18990n, this.f18991o, this.f18992p, null, this.f18978b, null, null, null, this.f18993q);
        interfaceC0715Ef.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.gms.internal.ads.fn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                C1376gn c1376gn = this.f18805G;
                c1376gn.getClass();
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.p9)).booleanValue() && motionEvent != null && motionEvent.getAction() == 0) {
                    c1376gn.f18994r.f19843a = motionEvent;
                }
                c1376gn.f18986j.f25936b = true;
                if (view == null) {
                    return false;
                }
                view.performClick();
                return false;
            }
        });
        interfaceC0715Ef.setOnClickListener(new ViewOnClickListenerC0916Sb(this, 1));
        J7 j9 = Q7.f15957v2;
        O7 o7 = c3099q.f26627c;
        if (((Boolean) o7.a(j9)).booleanValue() && (e8 = this.f18988l.f13700b) != null) {
            e8.a(interfaceC0715Ef.j());
        }
        C0840Mk c0840Mk = this.f18984h;
        Executor executor = this.f18983g;
        c0840Mk.Y0(interfaceC0715Ef, executor);
        c0840Mk.Y0(new C0662Am(interfaceC0715Ef, 2), executor);
        c0840Mk.a1(interfaceC0715Ef.j());
        interfaceC0715Ef.L0("/trackActiveViewUnit", new C0968Vl(4, this, interfaceC0715Ef));
        C0672Bh c0672Bh = this.f18985i;
        c0672Bh.getClass();
        c0672Bh.f12480P = new WeakReference(interfaceC0715Ef);
        if (((Boolean) o7.a(j8)).booleanValue()) {
            p148t.a.g(p083k3.l.f25980A.f25990j, bundle, "rendering-configure-webview-end");
        }
    }
}
