package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ga, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1363ga extends AbstractC2276y5 implements InterfaceC1415ha {
    @Override // com.google.android.gms.internal.ads.InterfaceC1415ha
    public final void a() {
        O2(2, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1415ha
    public final void o(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        O2(3, parcelJ0);
    }
}
