package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Il, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0781Il {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p090l3.B0 f14022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public P8 f14023c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public View f14024d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f14025e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p090l3.K0 f14027g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Bundle f14028h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public InterfaceC0715Ef f14029i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public InterfaceC0715Ef f14030j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InterfaceC0715Ef f14031k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C1689mq f14032l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public D4.b f14033m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C2040te f14034n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f14035o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public View f14036p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public R3.a f14037q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public double f14038r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public T8 f14039s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public T8 f14040t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public String f14041u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f14044x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f14045y;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final p132r.m f14042v = new p132r.m();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final p132r.m f14043w = new p132r.m();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List f14026f = Collections.emptyList();

    public static C0781Il A(BinderC0766Hl binderC0766Hl, P8 p8, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, R3.a aVar, String str4, String str5, double d6, T8 t8, String str6, float f8) {
        C0781Il c0781Il = new C0781Il();
        c0781Il.f14021a = 6;
        c0781Il.f14022b = binderC0766Hl;
        c0781Il.f14023c = p8;
        c0781Il.f14024d = view;
        c0781Il.u("headline", str);
        c0781Il.f14025e = list;
        c0781Il.u("body", str2);
        c0781Il.f14028h = bundle;
        c0781Il.u("call_to_action", str3);
        c0781Il.f14035o = view2;
        c0781Il.f14037q = aVar;
        c0781Il.u("store", str4);
        c0781Il.u("price", str5);
        c0781Il.f14038r = d6;
        c0781Il.f14039s = t8;
        c0781Il.u("advertiser", str6);
        synchronized (c0781Il) {
            c0781Il.f14044x = f8;
        }
        return c0781Il;
    }

    public static Object B(R3.a aVar) {
        if (aVar == null) {
            return null;
        }
        return R3.b.v0(aVar);
    }

    public static C0781Il S(InterfaceC1830pb interfaceC1830pb) {
        try {
            p090l3.B0 b0Zzj = interfaceC1830pb.zzj();
            return A(b0Zzj == null ? null : new BinderC0766Hl(b0Zzj, interfaceC1830pb), interfaceC1830pb.zzk(), (View) B(interfaceC1830pb.zzm()), interfaceC1830pb.zzs(), interfaceC1830pb.g(), interfaceC1830pb.zzq(), interfaceC1830pb.zzi(), interfaceC1830pb.zzr(), (View) B(interfaceC1830pb.zzn()), interfaceC1830pb.zzo(), interfaceC1830pb.u(), interfaceC1830pb.e(), interfaceC1830pb.zze(), interfaceC1830pb.zzl(), interfaceC1830pb.zzp(), interfaceC1830pb.zzf());
        } catch (RemoteException e8) {
            p120p3.h.h("Failed to get native ad assets from unified ad mapper", e8);
            return null;
        }
    }

    public final synchronized float C() {
        return this.f14044x;
    }

    public final synchronized int D() {
        return this.f14021a;
    }

    public final synchronized Bundle E() {
        try {
            if (this.f14028h == null) {
                this.f14028h = new Bundle();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f14028h;
    }

    public final synchronized View F() {
        return this.f14024d;
    }

    public final synchronized View G() {
        return this.f14035o;
    }

    public final synchronized p132r.m H() {
        return this.f14042v;
    }

    public final synchronized p132r.m I() {
        return this.f14043w;
    }

    public final synchronized p090l3.B0 J() {
        return this.f14022b;
    }

    public final synchronized p090l3.K0 K() {
        return this.f14027g;
    }

    public final synchronized P8 L() {
        return this.f14023c;
    }

    public final T8 M() {
        List list = this.f14025e;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Object obj = this.f14025e.get(0);
        if (obj instanceof IBinder) {
            return K8.z3((IBinder) obj);
        }
        return null;
    }

    public final synchronized T8 N() {
        return this.f14039s;
    }

    public final synchronized C2040te O() {
        return this.f14034n;
    }

    public final synchronized InterfaceC0715Ef P() {
        return this.f14030j;
    }

    public final synchronized InterfaceC0715Ef Q() {
        return this.f14031k;
    }

    public final synchronized InterfaceC0715Ef R() {
        return this.f14029i;
    }

    public final synchronized C1689mq T() {
        return this.f14032l;
    }

    public final synchronized R3.a U() {
        return this.f14037q;
    }

    public final synchronized D4.b V() {
        return this.f14033m;
    }

    public final synchronized String W() {
        return e("advertiser");
    }

    public final synchronized String X() {
        return e("body");
    }

    public final synchronized String Y() {
        return e("call_to_action");
    }

    public final synchronized String a() {
        return this.f14041u;
    }

    public final synchronized String b() {
        return e("headline");
    }

    public final synchronized String c() {
        return e("price");
    }

    public final synchronized String d() {
        return e("store");
    }

    public final synchronized String e(String str) {
        return (String) this.f14043w.get(str);
    }

    public final synchronized List f() {
        return this.f14025e;
    }

    public final synchronized List g() {
        return this.f14026f;
    }

    public final synchronized void h(P8 p8) {
        this.f14023c = p8;
    }

    public final synchronized void i(String str) {
        this.f14041u = str;
    }

    public final synchronized void j(p090l3.K0 k8) {
        this.f14027g = k8;
    }

    public final synchronized void k(T8 t8) {
        this.f14039s = t8;
    }

    public final synchronized void l(String str, K8 k8) {
        try {
            if (k8 == null) {
                this.f14042v.remove(str);
            } else {
                this.f14042v.put(str, k8);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void m(InterfaceC0715Ef interfaceC0715Ef) {
        this.f14030j = interfaceC0715Ef;
    }

    public final synchronized void n(T8 t8) {
        this.f14040t = t8;
    }

    public final synchronized void o(AbstractC2073uA abstractC2073uA) {
        this.f14026f = abstractC2073uA;
    }

    public final synchronized void p(InterfaceC0715Ef interfaceC0715Ef) {
        this.f14031k = interfaceC0715Ef;
    }

    public final synchronized void q(D4.b bVar) {
        this.f14033m = bVar;
    }

    public final synchronized void r(String str) {
        this.f14045y = str;
    }

    public final synchronized void s(C2040te c2040te) {
        this.f14034n = c2040te;
    }

    public final synchronized void t(double d6) {
        this.f14038r = d6;
    }

    public final synchronized void u(String str, String str2) {
        try {
            if (str2 == null) {
                this.f14043w.remove(str);
            } else {
                this.f14043w.put(str, str2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized double v() {
        return this.f14038r;
    }

    public final synchronized void w(BinderC0948Uf binderC0948Uf) {
        this.f14022b = binderC0948Uf;
    }

    public final synchronized void x(View view) {
        this.f14035o = view;
    }

    public final synchronized void y(InterfaceC0715Ef interfaceC0715Ef) {
        this.f14029i = interfaceC0715Ef;
    }

    public final synchronized void z(View view) {
        this.f14036p = view;
    }
}
