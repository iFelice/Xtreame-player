package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1641lu implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f19869a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f19870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f19871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f19872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Long f19873e;

    public C1641lu(String str, String str2, String str3, String str4, Long l4) {
        this.f19869a = str;
        this.f19870b = str2;
        this.f19871c = str3;
        this.f19872d = str4;
        this.f19873e = l4;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = (Bundle) obj;
        com.bumptech.glide.c.E("gmp_app_id", this.f19869a, bundle);
        com.bumptech.glide.c.E("fbs_aiid", this.f19870b, bundle);
        com.bumptech.glide.c.E("fbs_aeid", this.f19871c, bundle);
        com.bumptech.glide.c.E("apm_id_origin", this.f19872d, bundle);
        Long l4 = this.f19873e;
        if (l4 != null) {
            bundle.putLong("sai_timeout", l4.longValue());
        }
    }
}
