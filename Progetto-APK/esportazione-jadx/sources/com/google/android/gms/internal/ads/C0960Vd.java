package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0960Vd extends AbstractC2276y5 implements InterfaceC0974Wd {
    @Override // com.google.android.gms.internal.ads.InterfaceC0974Wd
    public final void F0(String str, String str2, Bundle bundle) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, bundle);
        O2(3, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0974Wd
    public final void m(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        O2(2, parcelJ0);
    }
}
