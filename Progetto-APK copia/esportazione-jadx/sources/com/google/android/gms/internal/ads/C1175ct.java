package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ct, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1175ct implements InterfaceC2056tu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18266a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f18267b;

    public /* synthetic */ C1175ct(int i8, Integer num) {
        this.f18266a = i8;
        this.f18267b = num;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2056tu
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        int i8 = this.f18266a;
        Integer num = this.f18267b;
        switch (i8) {
            case 0:
                Bundle bundle = (Bundle) obj;
                if (num != null) {
                    bundle.putInt("aos", num.intValue());
                }
                break;
            default:
                Bundle bundle2 = (Bundle) obj;
                if (num != null) {
                    bundle2.putInt("dspct", Math.min(num.intValue(), 20));
                }
                break;
        }
    }
}
