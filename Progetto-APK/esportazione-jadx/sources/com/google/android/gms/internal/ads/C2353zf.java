package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2353zf extends AbstractC0699De {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C0877Pe f22174I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public K4 f22175J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public InterfaceC0684Ce f22176K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f22177L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f22178M;

    public C2353zf(Context context, C0877Pe c0877Pe) {
        super(context);
        this.f22178M = 1;
        this.f22177L = false;
        this.f22174I = c0877Pe;
        c0877Pe.a(this);
    }

    public final boolean D() {
        int i8 = this.f22178M;
        return (i8 == 1 || i8 == 2 || this.f22175J == null) ? false : true;
    }

    public final void E(int i8) {
        C0905Re c0905Re = this.f12836H;
        C0877Pe c0877Pe = this.f22174I;
        if (i8 == 4) {
            c0877Pe.b();
            c0905Re.f16274d = true;
            c0905Re.a();
        } else if (this.f22178M == 4) {
            c0877Pe.f15407m = false;
            c0905Re.f16274d = false;
            c0905Re.a();
        }
        this.f22178M = i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int j() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int k() {
        return D() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int l() {
        return D() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int m() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final int n() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long o() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long p() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final long q() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final String r() {
        return "ImmersivePlayer";
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void s() {
        p113o3.I.k("AdImmersivePlayerView pause");
        if (D() && ((AtomicBoolean) this.f22175J.f14301H).get()) {
            this.f22175J.mo7zza();
            E(5);
            p113o3.O.f27924l.post(new RunnableC2301yf(this, 2));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void t() {
        p113o3.I.k("AdImmersivePlayerView play");
        if (D()) {
            ((AtomicBoolean) this.f22175J.f14301H).set(true);
            E(4);
            this.f12835G.f14175c = true;
            p113o3.O.f27924l.post(new RunnableC2301yf(this, 1));
        }
    }

    @Override // android.view.View
    public final String toString() {
        return com.google.protobuf.U2.l(C2353zf.class.getName(), "@", Integer.toHexString(hashCode()));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void u(int i8) {
        p113o3.I.k("AdImmersivePlayerView seek " + i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void v(InterfaceC0684Ce interfaceC0684Ce) {
        this.f22176K = interfaceC0684Ce;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void w(String str) {
        if (str != null) {
            Uri.parse(str).toString();
            this.f22175J = new K4();
            E(3);
            p113o3.O.f27924l.post(new RunnableC2301yf(this, 0));
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void x() {
        p113o3.I.k("AdImmersivePlayerView stop");
        K4 k8 = this.f22175J;
        if (k8 != null) {
            ((AtomicBoolean) k8.f14301H).set(false);
            this.f22175J = null;
            E(1);
        }
        this.f22174I.c();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0699De
    public final void y(float f8, float f9) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0891Qe
    public final void zzn() {
        if (this.f22175J != null) {
            this.f12836H.getClass();
        }
    }
}
