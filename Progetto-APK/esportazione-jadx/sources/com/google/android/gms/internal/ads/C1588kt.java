package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1588kt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f19666a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f19667b;

    public C1588kt(Context context, C1936re c1936re) {
        this.f19666a = c1936re;
        this.f19667b = context;
    }

    public final Intent a() {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.na)).booleanValue();
        Context context = this.f19667b;
        return (!zBooleanValue || Build.VERSION.SDK_INT < 33) ? context.registerReceiver(null, intentFilter) : context.registerReceiver(null, intentFilter, 4);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 14;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f19666a).b(new CallableC1419he(this, 12));
    }
}
