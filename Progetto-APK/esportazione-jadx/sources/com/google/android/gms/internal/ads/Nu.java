package com.google.android.gms.internal.ads;

import android.content.Context;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Nu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JSONObject f15098a;

    public Nu(Context context) {
        this.f15098a = C0931Tc.i2(context, p120p3.a.i());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 46;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((Boolean) C3099q.f26624d.f26627c.a(Q7.ib)).booleanValue() ? Cw.N1(new Es(4)) : Cw.N1(new C1744nt(this, 3));
    }
}
