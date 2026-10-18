package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.na, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1725na extends AbstractC2276y5 implements InterfaceC1777oa {
    @Override // com.google.android.gms.internal.ads.InterfaceC1777oa
    public final void a() {
        O2(1, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1777oa
    public final void d(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(2, parcelJ0);
    }
}
