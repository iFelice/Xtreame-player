package com.google.android.gms.ads.internal.overlay;

import M3.a;
import R3.b;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.BinderC1431hq;
import com.google.android.gms.internal.ads.C0745Gf;
import com.google.android.gms.internal.ads.C1219dl;
import com.google.android.gms.internal.ads.C1998so;
import com.google.android.gms.internal.ads.C2201wj;
import com.google.android.gms.internal.ads.F9;
import com.google.android.gms.internal.ads.G9;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.InterfaceC0869Ok;
import com.google.android.gms.internal.ads.InterfaceC1210dc;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.Q7;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import p019c2.h;
import p039f.AbstractC2987b;
import p083k3.g;
import p083k3.l;
import p090l3.C3099q;
import p090l3.InterfaceC3067a;
import p090l3.f1;
import p105n3.c;
import p105n3.f;
import p105n3.m;

/* JADX INFO: loaded from: classes.dex */
public final class AdOverlayInfoParcel extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new f1(5);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final AtomicLong f11635e0 = new AtomicLong(0);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final ConcurrentHashMap f11636f0 = new ConcurrentHashMap();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final f f11637G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC3067a f11638H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final m f11639I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final InterfaceC0715Ef f11640J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final G9 f11641K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f11642L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f11643M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f11644N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final c f11645O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final int f11646P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f11647Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f11648R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final p120p3.a f11649S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final String f11650T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final g f11651U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final F9 f11652V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final String f11653W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final String f11654X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final String f11655Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final C2201wj f11656Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final InterfaceC0869Ok f11657a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final InterfaceC1210dc f11658b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final boolean f11659c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final long f11660d0;

    public AdOverlayInfoParcel(InterfaceC0715Ef interfaceC0715Ef, p120p3.a aVar, String str, String str2, BinderC1431hq binderC1431hq) {
        this.f11637G = null;
        this.f11638H = null;
        this.f11639I = null;
        this.f11640J = interfaceC0715Ef;
        this.f11652V = null;
        this.f11641K = null;
        this.f11642L = null;
        this.f11643M = false;
        this.f11644N = null;
        this.f11645O = null;
        this.f11646P = 14;
        this.f11647Q = 5;
        this.f11648R = null;
        this.f11649S = aVar;
        this.f11650T = null;
        this.f11651U = null;
        this.f11653W = str;
        this.f11654X = str2;
        this.f11655Y = null;
        this.f11656Z = null;
        this.f11657a0 = null;
        this.f11658b0 = binderC1431hq;
        this.f11659c0 = false;
        this.f11660d0 = f11635e0.getAndIncrement();
    }

    public static AdOverlayInfoParcel i(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e8) {
            if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.gc)).booleanValue()) {
                return null;
            }
            l.f25980A.f25987g.i("AdOverlayInfoParcel.getFromIntent", e8);
            return null;
        }
    }

    public static final b l(Object obj) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.gc)).booleanValue()) {
            return null;
        }
        return new b(obj);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        int i9 = 2;
        AbstractC2987b.P(parcel, 2, this.f11637G, i8);
        AbstractC2987b.L(parcel, 3, l(this.f11638H));
        AbstractC2987b.L(parcel, 4, l(this.f11639I));
        AbstractC2987b.L(parcel, 5, l(this.f11640J));
        AbstractC2987b.L(parcel, 6, l(this.f11641K));
        AbstractC2987b.Q(parcel, 7, this.f11642L);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f11643M ? 1 : 0);
        AbstractC2987b.Q(parcel, 9, this.f11644N);
        AbstractC2987b.L(parcel, 10, l(this.f11645O));
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(this.f11646P);
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(this.f11647Q);
        AbstractC2987b.Q(parcel, 13, this.f11648R);
        AbstractC2987b.P(parcel, 14, this.f11649S, i8);
        AbstractC2987b.Q(parcel, 16, this.f11650T);
        AbstractC2987b.P(parcel, 17, this.f11651U, i8);
        AbstractC2987b.L(parcel, 18, l(this.f11652V));
        AbstractC2987b.Q(parcel, 19, this.f11653W);
        AbstractC2987b.Q(parcel, 24, this.f11654X);
        AbstractC2987b.Q(parcel, 25, this.f11655Y);
        AbstractC2987b.L(parcel, 26, l(this.f11656Z));
        AbstractC2987b.L(parcel, 27, l(this.f11657a0));
        AbstractC2987b.L(parcel, 28, l(this.f11658b0));
        AbstractC2987b.v0(parcel, 29, 4);
        parcel.writeInt(this.f11659c0 ? 1 : 0);
        AbstractC2987b.v0(parcel, 30, 8);
        long j8 = this.f11660d0;
        parcel.writeLong(j8);
        AbstractC2987b.p0(iX, parcel);
        J7 j9 = Q7.gc;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j9)).booleanValue()) {
            f11636f0.put(Long.valueOf(j8), new p105n3.l(this.f11638H, this.f11639I, this.f11640J, this.f11652V, this.f11641K, this.f11645O, this.f11656Z, this.f11657a0, this.f11658b0));
            AbstractC1988se.f20909d.schedule(new h(this, i9), ((Integer) c3099q.f26627c.a(Q7.hc)).intValue(), TimeUnit.SECONDS);
        }
    }

    public AdOverlayInfoParcel(C1219dl c1219dl, InterfaceC0715Ef interfaceC0715Ef, int i8, p120p3.a aVar, String str, g gVar, String str2, String str3, String str4, C2201wj c2201wj, BinderC1431hq binderC1431hq) {
        this.f11637G = null;
        this.f11638H = null;
        this.f11639I = c1219dl;
        this.f11640J = interfaceC0715Ef;
        this.f11652V = null;
        this.f11641K = null;
        this.f11643M = false;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15590C0)).booleanValue()) {
            this.f11642L = null;
            this.f11644N = null;
        } else {
            this.f11642L = str2;
            this.f11644N = str3;
        }
        this.f11645O = null;
        this.f11646P = i8;
        this.f11647Q = 1;
        this.f11648R = null;
        this.f11649S = aVar;
        this.f11650T = str;
        this.f11651U = gVar;
        this.f11653W = null;
        this.f11654X = null;
        this.f11655Y = str4;
        this.f11656Z = c2201wj;
        this.f11657a0 = null;
        this.f11658b0 = binderC1431hq;
        this.f11659c0 = false;
        this.f11660d0 = f11635e0.getAndIncrement();
    }

    public AdOverlayInfoParcel(C1998so c1998so, InterfaceC0715Ef interfaceC0715Ef, p120p3.a aVar) {
        this.f11639I = c1998so;
        this.f11640J = interfaceC0715Ef;
        this.f11646P = 1;
        this.f11649S = aVar;
        this.f11637G = null;
        this.f11638H = null;
        this.f11652V = null;
        this.f11641K = null;
        this.f11642L = null;
        this.f11643M = false;
        this.f11644N = null;
        this.f11645O = null;
        this.f11647Q = 1;
        this.f11648R = null;
        this.f11650T = null;
        this.f11651U = null;
        this.f11653W = null;
        this.f11654X = null;
        this.f11655Y = null;
        this.f11656Z = null;
        this.f11657a0 = null;
        this.f11658b0 = null;
        this.f11659c0 = false;
        this.f11660d0 = f11635e0.getAndIncrement();
    }

    public AdOverlayInfoParcel(InterfaceC3067a interfaceC3067a, C0745Gf c0745Gf, F9 f9, G9 g9, c cVar, InterfaceC0715Ef interfaceC0715Ef, boolean z7, int i8, String str, String str2, p120p3.a aVar, InterfaceC0869Ok interfaceC0869Ok, BinderC1431hq binderC1431hq) {
        this.f11637G = null;
        this.f11638H = interfaceC3067a;
        this.f11639I = c0745Gf;
        this.f11640J = interfaceC0715Ef;
        this.f11652V = f9;
        this.f11641K = g9;
        this.f11642L = str2;
        this.f11643M = z7;
        this.f11644N = str;
        this.f11645O = cVar;
        this.f11646P = i8;
        this.f11647Q = 3;
        this.f11648R = null;
        this.f11649S = aVar;
        this.f11650T = null;
        this.f11651U = null;
        this.f11653W = null;
        this.f11654X = null;
        this.f11655Y = null;
        this.f11656Z = null;
        this.f11657a0 = interfaceC0869Ok;
        this.f11658b0 = binderC1431hq;
        this.f11659c0 = false;
        this.f11660d0 = f11635e0.getAndIncrement();
    }

    public AdOverlayInfoParcel(InterfaceC3067a interfaceC3067a, C0745Gf c0745Gf, F9 f9, G9 g9, c cVar, InterfaceC0715Ef interfaceC0715Ef, boolean z7, int i8, String str, p120p3.a aVar, InterfaceC0869Ok interfaceC0869Ok, BinderC1431hq binderC1431hq, boolean z8) {
        this.f11637G = null;
        this.f11638H = interfaceC3067a;
        this.f11639I = c0745Gf;
        this.f11640J = interfaceC0715Ef;
        this.f11652V = f9;
        this.f11641K = g9;
        this.f11642L = null;
        this.f11643M = z7;
        this.f11644N = null;
        this.f11645O = cVar;
        this.f11646P = i8;
        this.f11647Q = 3;
        this.f11648R = str;
        this.f11649S = aVar;
        this.f11650T = null;
        this.f11651U = null;
        this.f11653W = null;
        this.f11654X = null;
        this.f11655Y = null;
        this.f11656Z = null;
        this.f11657a0 = interfaceC0869Ok;
        this.f11658b0 = binderC1431hq;
        this.f11659c0 = z8;
        this.f11660d0 = f11635e0.getAndIncrement();
    }

    public AdOverlayInfoParcel(InterfaceC3067a interfaceC3067a, m mVar, c cVar, InterfaceC0715Ef interfaceC0715Ef, boolean z7, int i8, p120p3.a aVar, InterfaceC0869Ok interfaceC0869Ok, BinderC1431hq binderC1431hq) {
        this.f11637G = null;
        this.f11638H = interfaceC3067a;
        this.f11639I = mVar;
        this.f11640J = interfaceC0715Ef;
        this.f11652V = null;
        this.f11641K = null;
        this.f11642L = null;
        this.f11643M = z7;
        this.f11644N = null;
        this.f11645O = cVar;
        this.f11646P = i8;
        this.f11647Q = 2;
        this.f11648R = null;
        this.f11649S = aVar;
        this.f11650T = null;
        this.f11651U = null;
        this.f11653W = null;
        this.f11654X = null;
        this.f11655Y = null;
        this.f11656Z = null;
        this.f11657a0 = interfaceC0869Ok;
        this.f11658b0 = binderC1431hq;
        this.f11659c0 = false;
        this.f11660d0 = f11635e0.getAndIncrement();
    }

    public AdOverlayInfoParcel(f fVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z7, String str2, IBinder iBinder5, int i8, int i9, String str3, p120p3.a aVar, String str4, g gVar, IBinder iBinder6, String str5, String str6, String str7, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, boolean z8, long j8) {
        this.f11637G = fVar;
        this.f11642L = str;
        this.f11643M = z7;
        this.f11644N = str2;
        this.f11646P = i8;
        this.f11647Q = i9;
        this.f11648R = str3;
        this.f11649S = aVar;
        this.f11650T = str4;
        this.f11651U = gVar;
        this.f11653W = str5;
        this.f11654X = str6;
        this.f11655Y = str7;
        this.f11659c0 = z8;
        this.f11660d0 = j8;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.gc)).booleanValue()) {
            this.f11638H = (InterfaceC3067a) b.v0(b.j0(iBinder));
            this.f11639I = (m) b.v0(b.j0(iBinder2));
            this.f11640J = (InterfaceC0715Ef) b.v0(b.j0(iBinder3));
            this.f11652V = (F9) b.v0(b.j0(iBinder6));
            this.f11641K = (G9) b.v0(b.j0(iBinder4));
            this.f11645O = (c) b.v0(b.j0(iBinder5));
            this.f11656Z = (C2201wj) b.v0(b.j0(iBinder7));
            this.f11657a0 = (InterfaceC0869Ok) b.v0(b.j0(iBinder8));
            this.f11658b0 = (InterfaceC1210dc) b.v0(b.j0(iBinder9));
            return;
        }
        p105n3.l lVar = (p105n3.l) f11636f0.remove(Long.valueOf(j8));
        if (lVar != null) {
            this.f11638H = lVar.f27532a;
            this.f11639I = lVar.f27533b;
            this.f11640J = lVar.f27534c;
            this.f11652V = lVar.f27535d;
            this.f11641K = lVar.f27536e;
            this.f11656Z = lVar.f27538g;
            this.f11657a0 = lVar.f27539h;
            this.f11658b0 = lVar.f27540i;
            this.f11645O = lVar.f27537f;
            return;
        }
        throw new NullPointerException("AdOverlayObjects is null");
    }

    public AdOverlayInfoParcel(f fVar, InterfaceC3067a interfaceC3067a, m mVar, c cVar, p120p3.a aVar, InterfaceC0715Ef interfaceC0715Ef, InterfaceC0869Ok interfaceC0869Ok) {
        this.f11637G = fVar;
        this.f11638H = interfaceC3067a;
        this.f11639I = mVar;
        this.f11640J = interfaceC0715Ef;
        this.f11652V = null;
        this.f11641K = null;
        this.f11642L = null;
        this.f11643M = false;
        this.f11644N = null;
        this.f11645O = cVar;
        this.f11646P = -1;
        this.f11647Q = 4;
        this.f11648R = null;
        this.f11649S = aVar;
        this.f11650T = null;
        this.f11651U = null;
        this.f11653W = null;
        this.f11654X = null;
        this.f11655Y = null;
        this.f11656Z = null;
        this.f11657a0 = interfaceC0869Ok;
        this.f11658b0 = null;
        this.f11659c0 = false;
        this.f11660d0 = f11635e0.getAndIncrement();
    }
}
