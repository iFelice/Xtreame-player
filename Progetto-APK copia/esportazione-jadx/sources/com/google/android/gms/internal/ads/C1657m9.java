package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1657m9 extends AbstractC2276y5 implements InterfaceC1709n9 {
    @Override // com.google.android.gms.internal.ads.InterfaceC1709n9
    public final void Q1(InterfaceC1295f9 interfaceC1295f9, String str) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC1295f9);
        parcelJ0.writeString(str);
        O2(1, parcelJ0);
    }
}
