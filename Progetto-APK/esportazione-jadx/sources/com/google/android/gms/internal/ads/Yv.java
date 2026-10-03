package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import androidx.leanback.widget.C0484j;
import java.util.ArrayList;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Yv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p090l3.Y0 f17674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1621la f17675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1433hs f17676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p090l3.b1 f17677d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p090l3.d1 f17678e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f17679f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f17680g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f17681h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final M8 f17682i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final p090l3.h1 f17683j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f17684k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p067i3.a f17685l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p067i3.d f17686m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final p090l3.U f17687n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0484j f17688o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f17689p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final boolean f17690q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f17691r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Bundle f17692s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final p090l3.Y f17693t;

    public Yv(Xv xv) {
        this.f17678e = xv.f17531b;
        this.f17679f = xv.f17532c;
        this.f17693t = xv.f17550u;
        p090l3.b1 b1Var = xv.f17530a;
        int i8 = b1Var.f26517G;
        boolean z7 = b1Var.f26524N || xv.f17534e;
        int iT = p113o3.O.t(b1Var.f26539c0);
        p090l3.b1 b1Var2 = xv.f17530a;
        this.f17677d = new p090l3.b1(i8, b1Var.f26518H, b1Var.f26519I, b1Var.f26520J, b1Var.f26521K, b1Var.f26522L, b1Var.f26523M, z7, b1Var.f26525O, b1Var.f26526P, b1Var.f26527Q, b1Var.f26528R, b1Var.f26529S, b1Var.f26530T, b1Var.f26531U, b1Var.f26532V, b1Var.f26533W, b1Var.f26534X, b1Var.f26535Y, b1Var.f26536Z, b1Var.f26537a0, b1Var.f26538b0, iT, b1Var2.f26540d0, b1Var2.f26541e0, b1Var2.f26542f0);
        p090l3.Y0 y7 = xv.f17533d;
        M8 m8 = null;
        if (y7 == null) {
            M8 m9 = xv.f17537h;
            y7 = m9 != null ? m9.f14648L : null;
        }
        this.f17674a = y7;
        ArrayList arrayList = xv.f17535f;
        this.f17680g = arrayList;
        this.f17681h = xv.f17536g;
        if (arrayList != null) {
            M8 m10 = xv.f17537h;
            if (m10 == null) {
                p067i3.c cVar = new p067i3.c();
                cVar.f25563a = false;
                cVar.f25564b = -1;
                cVar.f25565c = 0;
                cVar.f25566d = false;
                cVar.f25567e = 1;
                cVar.f25568f = null;
                cVar.f25569g = false;
                m10 = new M8(cVar);
            }
            m8 = m10;
        }
        this.f17682i = m8;
        this.f17683j = xv.f17538i;
        this.f17684k = xv.f17542m;
        this.f17685l = xv.f17539j;
        this.f17686m = xv.f17540k;
        this.f17687n = xv.f17541l;
        this.f17675b = xv.f17543n;
        this.f17688o = new C0484j(xv.f17544o);
        this.f17689p = xv.f17545p;
        this.f17690q = xv.f17546q;
        this.f17676c = xv.f17547r;
        this.f17691r = xv.f17548s;
        this.f17692s = xv.f17549t;
    }

    public final InterfaceC2280y9 a() {
        p067i3.a aVar = this.f17685l;
        p067i3.d dVar = this.f17686m;
        if (dVar == null && aVar == null) {
            return null;
        }
        if (dVar != null) {
            IBinder iBinder = dVar.f25572I;
            if (iBinder == null) {
                return null;
            }
            int i8 = AbstractBinderC2228x9.f21847G;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
            return iInterfaceQueryLocalInterface instanceof InterfaceC2280y9 ? (InterfaceC2280y9) iInterfaceQueryLocalInterface : new C2176w9(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener", 0);
        }
        IBinder iBinder2 = aVar.f25562H;
        if (iBinder2 == null) {
            return null;
        }
        int i9 = AbstractBinderC2228x9.f21847G;
        IInterface iInterfaceQueryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        return iInterfaceQueryLocalInterface2 instanceof InterfaceC2280y9 ? (InterfaceC2280y9) iInterfaceQueryLocalInterface2 : new C2176w9(iBinder2, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener", 0);
    }

    public final boolean b() {
        return this.f17679f.matches((String) C3099q.f26624d.f26627c.a(Q7.f15742V2));
    }
}
