package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1417hc extends AbstractC2276y5 implements InterfaceC1519jc {
    public C1417hc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void P1(Bundle bundle) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, bundle);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final boolean Q() {
        Parcel parcelN2 = n2(11, j0());
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void Q0(int i8, int i9, Intent intent) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        parcelJ0.writeInt(i9);
        A5.c(parcelJ0, intent);
        O2(12, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void c2(Bundle bundle) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, bundle);
        Parcel parcelN2 = n2(6, parcelJ0);
        if (parcelN2.readInt() != 0) {
            bundle.readFromParcel(parcelN2);
        }
        parcelN2.recycle();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void e() {
        O2(3, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void f() {
        O2(9, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void h() {
        O2(14, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void k() {
        O2(5, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void k1(int i8, String[] strArr, int[] iArr) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        parcelJ0.writeStringArray(strArr);
        parcelJ0.writeIntArray(iArr);
        O2(15, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void n() {
        O2(7, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void p1(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(13, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzi() {
        O2(10, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzm() {
        O2(8, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzq() {
        O2(2, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1519jc
    public final void zzr() {
        O2(4, j0());
    }
}
