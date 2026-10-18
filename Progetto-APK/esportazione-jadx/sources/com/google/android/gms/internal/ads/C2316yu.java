package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p090l3.C3097p;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2316yu implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f22085a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f22086b;

    public C2316yu(int i8, int i9) {
        this.f22085a = i8;
        this.f22086b = i9;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        bundle.putInt("sessions_without_flags", this.f22085a);
        bundle.putInt("crashes_without_flags", this.f22086b);
        C3097p c3097p = C3097p.f26618f;
        if (C3099q.f26624d.f26627c.f15142j) {
            bundle.putBoolean("did_reset", true);
        }
    }
}
