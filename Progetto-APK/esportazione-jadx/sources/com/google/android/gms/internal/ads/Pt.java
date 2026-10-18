package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Pt implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f15494b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f15495c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f15496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f15497e;

    public Pt(String str, boolean z7, boolean z8, boolean z9, boolean z10) {
        this.f15493a = str;
        this.f15494b = z7;
        this.f15495c = z8;
        this.f15496d = z9;
        this.f15497e = z10;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        String str = this.f15493a;
        if (!str.isEmpty()) {
            bundle.putString("inspector_extras", str);
        }
        boolean z7 = this.f15494b;
        bundle.putInt("test_mode", z7 ? 1 : 0);
        boolean z8 = this.f15495c;
        bundle.putInt("linked_device", z8 ? 1 : 0);
        if (z7 || z8) {
            J7 j8 = Q7.x8;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                bundle.putInt("risd", !this.f15496d ? 1 : 0);
            }
            if (((Boolean) c3099q.f26627c.a(Q7.B8)).booleanValue()) {
                bundle.putBoolean("collect_response_logs", this.f15497e);
            }
        }
    }
}
