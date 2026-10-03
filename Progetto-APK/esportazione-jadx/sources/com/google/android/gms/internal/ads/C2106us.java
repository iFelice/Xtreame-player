package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.us, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2106us implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f21401b;

    public /* synthetic */ C2106us(boolean z7, int i8) {
        this.f21400a = i8;
        this.f21401b = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        int i8 = this.f21400a;
        boolean z7 = this.f21401b;
        switch (i8) {
            case 0:
                ((Bundle) obj).putString("adid_p", true != z7 ? "0" : "1");
                break;
            case 1:
                ((Bundle) obj).putBoolean("ibrr", z7);
                break;
            default:
                ((Bundle) obj).putBoolean("is_gbid", z7);
                break;
        }
    }
}
