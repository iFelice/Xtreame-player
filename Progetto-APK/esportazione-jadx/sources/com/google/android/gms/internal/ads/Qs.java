package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public final class Qs implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16146c;

    public /* synthetic */ Qs(int i8, String str, boolean z7) {
        this.f16144a = i8;
        this.f16145b = str;
        this.f16146c = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        int i8 = this.f16144a;
        boolean z7 = this.f16146c;
        String str = this.f16145b;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (str != null) {
                    Bundle bundleZ = com.bumptech.glide.c.z("pii", bundle);
                    bundleZ.putString("afai", str);
                    bundleZ.putBoolean("is_afai_lat", z7);
                }
                break;
            default:
                Bundle bundle2 = (Bundle) obj;
                bundle2.putString("gct", str);
                if (z7) {
                    bundle2.putString("de", "1");
                }
                break;
        }
    }
}
