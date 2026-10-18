package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Hb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0756Hb extends AbstractC2276y5 implements InterfaceC0771Ib {
    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void D1(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0741Gb interfaceC0741Gb, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC0741Gb);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(20, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void F2(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC2297yb interfaceC2297yb, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC2297yb);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(23, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final boolean H(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        Parcel parcelN2 = n2(15, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final boolean K(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        Parcel parcelN2 = n2(24, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void T0(String str, String str2, p090l3.b1 b1Var, R3.b bVar, Zq zq, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, bVar);
        A5.e(parcelJ0, zq);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(18, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final boolean V2(R3.b bVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        Parcel parcelN2 = n2(17, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void W(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0651Ab interfaceC0651Ab, InterfaceC1416hb interfaceC1416hb, p090l3.d1 d1Var) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC0651Ab);
        A5.e(parcelJ0, interfaceC1416hb);
        A5.c(parcelJ0, d1Var);
        O2(21, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void X1(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0741Gb interfaceC0741Gb, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC0741Gb);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(16, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void a3(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        O2(19, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void c3(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0651Ab interfaceC0651Ab, InterfaceC1416hb interfaceC1416hb, p090l3.d1 d1Var) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC0651Ab);
        A5.e(parcelJ0, interfaceC1416hb);
        A5.c(parcelJ0, d1Var);
        O2(13, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void n1(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0711Eb interfaceC0711Eb, InterfaceC1416hb interfaceC1416hb, M8 m8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC0711Eb);
        A5.e(parcelJ0, interfaceC1416hb);
        A5.c(parcelJ0, m8);
        O2(22, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void v2(R3.a aVar, String str, Bundle bundle, Bundle bundle2, p090l3.d1 d1Var, InterfaceC0801Kb interfaceC0801Kb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        parcelJ0.writeString(str);
        A5.c(parcelJ0, bundle);
        A5.c(parcelJ0, bundle2);
        A5.c(parcelJ0, d1Var);
        A5.e(parcelJ0, interfaceC0801Kb);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final void x0(String str, String str2, p090l3.b1 b1Var, R3.a aVar, InterfaceC0681Cb interfaceC0681Cb, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC0681Cb);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(14, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final p090l3.B0 zze() {
        Parcel parcelN2 = n2(5, j0());
        p090l3.B0 b0Z3 = p090l3.A0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return b0Z3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final C0860Ob zzf() {
        Parcel parcelN2 = n2(2, j0());
        C0860Ob c0860Ob = (C0860Ob) A5.a(parcelN2, C0860Ob.CREATOR);
        parcelN2.recycle();
        return c0860Ob;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0771Ib
    public final C0860Ob zzg() {
        Parcel parcelN2 = n2(3, j0());
        C0860Ob c0860Ob = (C0860Ob) A5.a(parcelN2, C0860Ob.CREATOR);
        parcelN2.recycle();
        return c0860Ob;
    }
}
