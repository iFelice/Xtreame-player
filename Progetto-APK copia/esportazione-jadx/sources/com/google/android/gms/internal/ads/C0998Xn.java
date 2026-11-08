package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0998Xn implements InterfaceC0886Pn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f17506a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0900Qn f17507b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Lv f17508c;

    public C0998Xn(long j8, Context context, C0900Qn c0900Qn, C0671Bg c0671Bg, String str) {
        this.f17506a = j8;
        this.f17507b = c0900Qn;
        C0731Fg c0731Fg = new C0731Fg(c0671Bg.f12432c);
        context.getClass();
        c0731Fg.f13386b = context;
        c0731Fg.f13387c = str;
        this.f17508c = (Lv) ((MJ) c0731Fg.a().f14919i).zzb();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0886Pn
    public final void a(p090l3.b1 b1Var) {
        try {
            this.f17508c.A1(b1Var, new BinderC0970Vn(this));
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0886Pn
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0886Pn
    public final void zzc() {
        Lv lv = this.f17508c;
        try {
            lv.f0(new BinderC0984Wn(this));
            lv.zzm(new R3.b(null));
        } catch (RemoteException e8) {
            p120p3.h.i("#007 Could not call remote method.", e8);
        }
    }
}
