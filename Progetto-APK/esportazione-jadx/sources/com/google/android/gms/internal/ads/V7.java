package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class V7 implements InterfaceC1218dk, InterfaceC1942rk, InterfaceC1746nv {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f16959G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f16960H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f16961I;

    public /* synthetic */ V7(String str, String str2, int i8) {
        this.f16959G = i8;
        this.f16960H = str;
        this.f16961I = str2;
    }

    public static V7 a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Name is null or empty");
        }
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("Version is null or empty");
        }
        return new V7(str, str2, 5);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1218dk
    /* JADX INFO: renamed from: zza */
    public final void mo0zza(Object obj) {
        switch (this.f16959G) {
            case 1:
                ((C1433hs) obj).o(this.f16960H, this.f16961I);
                break;
            case 2:
                ((p051g3.b) obj).o(this.f16960H, this.f16961I);
                break;
            case 3:
                ((InterfaceC0705Dk) obj).d(this.f16960H, this.f16961I);
                break;
            default:
                ((p090l3.U) obj).G2(this.f16960H, this.f16961I);
                break;
        }
    }
}
