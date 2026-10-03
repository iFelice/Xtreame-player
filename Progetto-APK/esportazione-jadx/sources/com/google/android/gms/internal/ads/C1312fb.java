package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1312fb extends AbstractC2276y5 implements InterfaceC1416hb {
    public C1312fb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void B2(C1624ld c1624ld) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void R0(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(23, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void S1(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(24, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void U1() {
        O2(5, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void a() {
        O2(2, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void b() {
        O2(1, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void f() {
        O2(20, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void g0() {
        O2(13, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void h() {
        O2(11, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void h0(InterfaceC1295f9 interfaceC1295f9, String str) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC1295f9);
        parcelJ0.writeString(str);
        O2(10, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void k() {
        O2(6, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void m2(int i8) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void n() {
        O2(18, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void n0(int i8, String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        parcelJ0.writeString(str);
        O2(22, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void p() {
        O2(15, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void s2(String str, String str2) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        O2(9, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void w2(InterfaceC1728nd interfaceC1728nd) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC1728nd);
        O2(16, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void z(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        O2(21, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void zzg(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(3, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void zzm() {
        O2(8, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1416hb
    public final void zzn() {
        O2(4, j0());
    }
}
