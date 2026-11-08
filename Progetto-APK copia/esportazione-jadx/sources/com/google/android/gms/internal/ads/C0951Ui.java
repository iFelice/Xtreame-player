package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ui, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0951Ui implements InterfaceC1022Zj, InterfaceC0925Sk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f16872G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Yv f16873H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p120p3.a f16874I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p113o3.K f16875J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C1273eo f16876K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Uw f16877L;

    public C0951Ui(Context context, Yv yv, p120p3.a aVar, p113o3.L l4, C1273eo c1273eo, Uw uw) {
        this.f16872G = context;
        this.f16873H = yv;
        this.f16874I = aVar;
        this.f16875J = l4;
        this.f16876K = c1273eo;
        this.f16877L = uw;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
    }

    public final void a() {
        String str;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15641I3)).booleanValue()) {
            String str2 = this.f16873H.f17679f;
            C1367ge c1367geY = ((p113o3.L) this.f16875J).y();
            p046f6.c cVar = p083k3.l.f25980A.f25991k;
            if (c1367geY != null) {
                cVar.getClass();
                str = c1367geY.f18943d;
            } else {
                str = null;
            }
            cVar.k(this.f16872G, this.f16874I, false, c1367geY, str, str2, null, this.f16877L, null, null);
        }
        this.f16876K.b();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void b(String str) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void c(p167v3.r rVar) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15649J3)).booleanValue()) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
        a();
    }
}
