package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
import p090l3.AbstractBinderC3111w0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: loaded from: classes.dex */
public final class A9 extends AbstractC2276y5 implements B9 {
    @Override // com.google.android.gms.internal.ads.B9
    public final String e() {
        Parcel parcelN2 = n2(9, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final List g() {
        Parcel parcelN2 = n2(23, j0());
        ArrayList arrayList = parcelN2.readArrayList(A5.f11962a);
        parcelN2.recycle();
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final void m1(Bundle bundle) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, bundle);
        O2(33, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final List u() {
        Parcel parcelN2 = n2(3, j0());
        ArrayList arrayList = parcelN2.readArrayList(A5.f11962a);
        parcelN2.recycle();
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final double zze() {
        Parcel parcelN2 = n2(8, j0());
        double d6 = parcelN2.readDouble();
        parcelN2.recycle();
        return d6;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final InterfaceC3113x0 zzg() {
        Parcel parcelN2 = n2(31, j0());
        InterfaceC3113x0 interfaceC3113x0Z3 = AbstractBinderC3111w0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return interfaceC3113x0Z3;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final p090l3.B0 zzh() {
        Parcel parcelN2 = n2(11, j0());
        p090l3.B0 b0Z3 = p090l3.A0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return b0Z3;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final P8 zzi() {
        P8 n8;
        Parcel parcelN2 = n2(14, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            n8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            n8 = iInterfaceQueryLocalInterface instanceof P8 ? (P8) iInterfaceQueryLocalInterface : new N8(strongBinder);
        }
        parcelN2.recycle();
        return n8;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final T8 zzk() {
        T8 s8;
        Parcel parcelN2 = n2(5, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            s8 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            s8 = iInterfaceQueryLocalInterface instanceof T8 ? (T8) iInterfaceQueryLocalInterface : new S8(strongBinder);
        }
        parcelN2.recycle();
        return s8;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final R3.a zzl() {
        return com.google.protobuf.U2.f(n2(19, j0()));
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final R3.a zzm() {
        return com.google.protobuf.U2.f(n2(18, j0()));
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzn() {
        Parcel parcelN2 = n2(7, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzo() {
        Parcel parcelN2 = n2(4, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzp() {
        Parcel parcelN2 = n2(6, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzq() {
        Parcel parcelN2 = n2(2, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.B9
    public final String zzs() {
        Parcel parcelN2 = n2(10, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }
}
