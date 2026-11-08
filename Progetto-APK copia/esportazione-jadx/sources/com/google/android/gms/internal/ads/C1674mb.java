package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1674mb extends AbstractC2276y5 implements InterfaceC1830pb {
    public C1674mb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String e() {
        Parcel parcelN2 = n2(10, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void f() {
        O2(19, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void f2(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(22, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final List g() {
        Parcel parcelN2 = n2(3, j0());
        ArrayList arrayList = parcelN2.readArrayList(A5.f11962a);
        parcelN2.recycle();
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void j1(R3.a aVar, R3.a aVar2, R3.a aVar3) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, aVar2);
        A5.e(parcelJ0, aVar3);
        O2(21, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final void l0(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(20, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final boolean t() {
        Parcel parcelN2 = n2(17, j0());
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String u() {
        Parcel parcelN2 = n2(9, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final boolean v() {
        Parcel parcelN2 = n2(18, j0());
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final double zze() {
        Parcel parcelN2 = n2(8, j0());
        double d6 = parcelN2.readDouble();
        parcelN2.recycle();
        return d6;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final float zzf() {
        Parcel parcelN2 = n2(23, j0());
        float f8 = parcelN2.readFloat();
        parcelN2.recycle();
        return f8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final float zzg() {
        Parcel parcelN2 = n2(25, j0());
        float f8 = parcelN2.readFloat();
        parcelN2.recycle();
        return f8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final float zzh() {
        Parcel parcelN2 = n2(24, j0());
        float f8 = parcelN2.readFloat();
        parcelN2.recycle();
        return f8;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final Bundle zzi() {
        Parcel parcelN2 = n2(16, j0());
        Bundle bundle = (Bundle) A5.a(parcelN2, Bundle.CREATOR);
        parcelN2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final p090l3.B0 zzj() {
        Parcel parcelN2 = n2(11, j0());
        p090l3.B0 b0Z3 = p090l3.A0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return b0Z3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final P8 zzk() {
        Parcel parcelN2 = n2(12, j0());
        P8 p8Z3 = O8.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return p8Z3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final T8 zzl() {
        Parcel parcelN2 = n2(5, j0());
        T8 t8Z3 = K8.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return t8Z3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final R3.a zzm() {
        return com.google.protobuf.U2.f(n2(13, j0()));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final R3.a zzn() {
        return com.google.protobuf.U2.f(n2(14, j0()));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final R3.a zzo() {
        return com.google.protobuf.U2.f(n2(15, j0()));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzp() {
        Parcel parcelN2 = n2(7, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzq() {
        Parcel parcelN2 = n2(4, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzr() {
        Parcel parcelN2 = n2(6, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1830pb
    public final String zzs() {
        Parcel parcelN2 = n2(2, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }
}
