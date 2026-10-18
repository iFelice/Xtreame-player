package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Mx implements Gz {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public static final Mx f14832H = new Mx();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Context f14833G;

    public D4.b a(boolean z7) {
        try {
            L1.b bVar = new L1.b("com.google.android.gms.ads", z7);
            J1.b bVarA = J1.b.a(this.f14833G);
            return bVarA != null ? bVarA.b(bVar) : Cw.H1(new IllegalStateException());
        } catch (Exception e8) {
            return Cw.H1(e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.Gz
    public Object zza() {
        new H();
        return new C2272y1(this.f14833G);
    }
}
