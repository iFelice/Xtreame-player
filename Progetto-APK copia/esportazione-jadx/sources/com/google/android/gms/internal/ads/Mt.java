package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Mt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f14822a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Intent f14823b;

    public Mt(Context context, Intent intent) {
        this.f14822a = context;
        this.f14823b = intent;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 60;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.bc)).booleanValue()) {
            return Cw.N1(new Kt(1, null));
        }
        boolean z7 = false;
        try {
            if (this.f14823b.resolveActivity(this.f14822a.getPackageManager()) != null) {
                z7 = true;
            }
        } catch (Exception e8) {
            p083k3.l.f25980A.f25987g.i("HsdpMigrationSignal.isHsdpMigrationSupported", e8);
        }
        return Cw.N1(new Kt(1, Boolean.valueOf(z7)));
    }
}
