package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Ps implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f15491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f15492b;

    public Ps(Context context, C1936re c1936re) {
        this.f15492b = c1936re;
        this.f15491a = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 61;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.ec)).booleanValue()) {
            return Cw.N1(new Qs(0, null, false));
        }
        ContentResolver contentResolver = this.f15491a.getContentResolver();
        if (contentResolver == null) {
            return Cw.N1(new Qs(0, null, false));
        }
        return ((IB) this.f15492b).b(new CallableC1419he(contentResolver, 8));
    }
}
