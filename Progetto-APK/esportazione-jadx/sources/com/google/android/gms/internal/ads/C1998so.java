package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import okhttp3.HttpUrl;
import p090l3.C3099q;
import p090l3.InterfaceC3092m0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.so, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1998so implements p105n3.m, InterfaceC1162cg {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f20975G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final p120p3.a f20976H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C1895qo f20977I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public InterfaceC0715Ef f20978J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f20979K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f20980L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f20981M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public InterfaceC3092m0 f20982N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f20983O;

    public C1998so(Context context, p120p3.a aVar) {
        this.f20975G = context;
        this.f20976H = aVar;
    }

    @Override // p105n3.m
    public final void O2() {
    }

    @Override // p105n3.m
    public final void Y() {
    }

    public final synchronized void a(InterfaceC3092m0 interfaceC3092m0, O9 o9, E9 e9, O9 o10) {
        if (c(interfaceC3092m0)) {
            try {
                p083k3.l lVar = p083k3.l.f25980A;
                C2272y1 c2272y1 = lVar.f25984d;
                InterfaceC0715Ef interfaceC0715EfE = C2272y1.e(this.f20975G, new A2.i(0, 0, 0, 5), this.f20976H, null, null, null, new C2173w6(), null, null, null, null, null, HttpUrl.FRAGMENT_ENCODE_SET, false, false);
                this.f20978J = interfaceC0715EfE;
                AbstractC0990Xf abstractC0990XfZzN = interfaceC0715EfE.zzN();
                if (abstractC0990XfZzN == null) {
                    p120p3.h.g("Failed to obtain a web view for the ad inspector");
                    try {
                        lVar.f25987g.i("InspectorUi.openInspector 2", new NullPointerException("Failed to obtain a web view for the ad inspector"));
                        interfaceC3092m0.s0(p113o3.r.H(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException e8) {
                        p083k3.l.f25980A.f25987g.i("InspectorUi.openInspector 3", e8);
                        return;
                    }
                }
                this.f20982N = interfaceC3092m0;
                abstractC0990XfZzN.y(null, null, null, null, null, false, null, null, null, null, null, null, null, o9, null, new E9(this.f20975G, 5), e9, o10, null);
                abstractC0990XfZzN.f17463M = this;
                this.f20978J.loadUrl((String) C3099q.f26624d.f26627c.a(Q7.i8));
                F2.G.M(this.f20975G, new AdOverlayInfoParcel(this, this.f20978J, this.f20976H), true);
                lVar.f25990j.getClass();
                this.f20981M = System.currentTimeMillis();
            } catch (C0835Mf e10) {
                p120p3.h.h("Failed to obtain a web view for the ad inspector", e10);
                try {
                    p083k3.l.f25980A.f25987g.i("InspectorUi.openInspector 0", e10);
                    interfaceC3092m0.s0(p113o3.r.H(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException e11) {
                    p083k3.l.f25980A.f25987g.i("InspectorUi.openInspector 1", e11);
                }
            }
        }
    }

    public final synchronized void b(String str) {
        if (this.f20979K && this.f20980L) {
            AbstractC1988se.f20910e.execute(new RunnableC1170co(1, this, str));
        }
    }

    public final synchronized boolean c(InterfaceC3092m0 interfaceC3092m0) {
        J7 j8 = Q7.h8;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            p120p3.h.g("Ad inspector had an internal error.");
            try {
                interfaceC3092m0.s0(p113o3.r.H(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.f20977I == null) {
            p120p3.h.g("Ad inspector had an internal error.");
            try {
                p083k3.l.f25980A.f25987g.i("InspectorUi.shouldOpenUi", new NullPointerException("InspectorManager null"));
                interfaceC3092m0.s0(p113o3.r.H(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.f20979K && !this.f20980L) {
            p083k3.l.f25980A.f25990j.getClass();
            if (System.currentTimeMillis() >= this.f20981M + ((long) ((Integer) c3099q.f26627c.a(Q7.k8)).intValue())) {
                return true;
            }
        }
        p120p3.h.g("Ad inspector cannot be opened because it is already open.");
        try {
            interfaceC3092m0.s0(p113o3.r.H(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1162cg
    public final synchronized void g(String str, int i8, String str2, boolean z7) {
        if (z7) {
            p113o3.I.k("Ad inspector loaded.");
            this.f20979K = true;
            b(HttpUrl.FRAGMENT_ENCODE_SET);
            return;
        }
        p120p3.h.g("Ad inspector failed to load.");
        try {
            p083k3.l.f25980A.f25987g.i("InspectorUi.onAdWebViewFinishedLoading 0", new Exception("Failed to load UI. Error code: " + i8 + ", Description: " + str + ", Failing URL: " + str2));
            InterfaceC3092m0 interfaceC3092m0 = this.f20982N;
            if (interfaceC3092m0 != null) {
                interfaceC3092m0.s0(p113o3.r.H(17, null, null));
            }
        } catch (RemoteException e8) {
            p083k3.l.f25980A.f25987g.i("InspectorUi.onAdWebViewFinishedLoading 1", e8);
        }
        this.f20983O = true;
        this.f20978J.destroy();
    }

    @Override // p105n3.m
    public final void k3() {
    }

    @Override // p105n3.m
    public final synchronized void r1(int i8) {
        this.f20978J.destroy();
        if (!this.f20983O) {
            p113o3.I.k("Inspector closed.");
            InterfaceC3092m0 interfaceC3092m0 = this.f20982N;
            if (interfaceC3092m0 != null) {
                try {
                    interfaceC3092m0.s0(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.f20980L = false;
        this.f20979K = false;
        this.f20981M = 0L;
        this.f20983O = false;
        this.f20982N = null;
    }

    @Override // p105n3.m
    public final void u3() {
    }

    @Override // p105n3.m
    public final synchronized void v0() {
        this.f20980L = true;
        b(HttpUrl.FRAGMENT_ENCODE_SET);
    }
}
