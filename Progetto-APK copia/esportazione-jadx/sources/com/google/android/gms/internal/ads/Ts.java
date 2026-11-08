package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Ts implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p090l3.h1 f16749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p120p3.a f16750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16751c;

    public Ts(p090l3.h1 h1Var, p120p3.a aVar, boolean z7) {
        this.f16749a = h1Var;
        this.f16750b = aVar;
        this.f16751c = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        J7 j8 = Q7.f15721S4;
        C3099q c3099q = C3099q.f26624d;
        if (this.f16750b.f28198I >= ((Integer) c3099q.f26627c.a(j8)).intValue()) {
            bundle.putString("app_open_version", "2");
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15729T4)).booleanValue()) {
            bundle.putBoolean("app_switched", this.f16751c);
        }
        p090l3.h1 h1Var = this.f16749a;
        if (h1Var != null) {
            int i8 = h1Var.f26590G;
            if (i8 == 1) {
                bundle.putString("avo", "p");
            } else if (i8 == 2) {
                bundle.putString("avo", "l");
            }
        }
    }
}
