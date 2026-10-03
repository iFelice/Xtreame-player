package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.db, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1209db extends AbstractC2276y5 implements InterfaceC1260eb {
    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void A0() {
        O2(8, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void B() {
        O2(12, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void B0(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(30, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void D0(R3.a aVar, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb, M8 m8, ArrayList arrayList) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.e(parcelJ0, interfaceC1416hb);
        A5.c(parcelJ0, m8);
        parcelJ0.writeStringList(arrayList);
        O2(14, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void E2(R3.a aVar, p090l3.d1 d1Var, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, d1Var);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(6, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void H1(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(39, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void I0(R3.a aVar, InterfaceC1415ha interfaceC1415ha, List list) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC1415ha);
        parcelJ0.writeTypedList(list);
        O2(31, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C1622lb N() {
        C1622lb c1622lb;
        Parcel parcelN2 = n2(16, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c1622lb = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            c1622lb = iInterfaceQueryLocalInterface instanceof C1622lb ? (C1622lb) iInterfaceQueryLocalInterface : new C1622lb(strongBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper", 0);
        }
        parcelN2.recycle();
        return c1622lb;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void O0(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(37, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void O1(R3.a aVar, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(7, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void P0(R3.a aVar, InterfaceC1572kd interfaceC1572kd, List list) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC1572kd);
        parcelJ0.writeStringList(list);
        O2(23, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void T() {
        O2(4, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void W2(R3.a aVar, p090l3.d1 d1Var, p090l3.b1 b1Var, String str, String str2, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, d1Var);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(35, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void f3(R3.a aVar, p090l3.b1 b1Var, InterfaceC1572kd interfaceC1572kd, String str) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(null);
        A5.e(parcelJ0, interfaceC1572kd);
        parcelJ0.writeString(str);
        O2(10, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void g2(R3.a aVar, p090l3.b1 b1Var, String str, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(32, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void i0(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(21, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void j() {
        O2(9, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void k() {
        O2(5, j0());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C1570kb l() {
        C1570kb c1570kb;
        Parcel parcelN2 = n2(15, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c1570kb = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            c1570kb = iInterfaceQueryLocalInterface instanceof C1570kb ? (C1570kb) iInterfaceQueryLocalInterface : new C1570kb(strongBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper", 0);
        }
        parcelN2.recycle();
        return c1570kb;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void l1(R3.a aVar, p090l3.b1 b1Var, String str, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(28, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void l2(boolean z7) {
        Parcel parcelJ0 = j0();
        ClassLoader classLoader = A5.f11962a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        O2(25, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void q1(R3.a aVar, p090l3.b1 b1Var, String str, InterfaceC1416hb interfaceC1416hb) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        A5.e(parcelJ0, interfaceC1416hb);
        O2(38, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final void q3(p090l3.b1 b1Var, String str) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, b1Var);
        parcelJ0.writeString(str);
        O2(11, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final boolean r() {
        Parcel parcelN2 = n2(22, j0());
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final boolean zzN() {
        Parcel parcelN2 = n2(13, j0());
        ClassLoader classLoader = A5.f11962a;
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final p090l3.B0 zzh() {
        Parcel parcelN2 = n2(26, j0());
        p090l3.B0 b0Z3 = p090l3.A0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return b0Z3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final InterfaceC1518jb zzj() {
        InterfaceC1518jb c1468ib;
        Parcel parcelN2 = n2(36, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c1468ib = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            c1468ib = iInterfaceQueryLocalInterface instanceof InterfaceC1518jb ? (InterfaceC1518jb) iInterfaceQueryLocalInterface : new C1468ib(strongBinder);
        }
        parcelN2.recycle();
        return c1468ib;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final InterfaceC1830pb zzk() {
        InterfaceC1830pb c1674mb;
        Parcel parcelN2 = n2(27, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c1674mb = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            c1674mb = iInterfaceQueryLocalInterface instanceof InterfaceC1830pb ? (InterfaceC1830pb) iInterfaceQueryLocalInterface : new C1674mb(strongBinder);
        }
        parcelN2.recycle();
        return c1674mb;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C0860Ob zzl() {
        Parcel parcelN2 = n2(33, j0());
        C0860Ob c0860Ob = (C0860Ob) A5.a(parcelN2, C0860Ob.CREATOR);
        parcelN2.recycle();
        return c0860Ob;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final C0860Ob zzm() {
        Parcel parcelN2 = n2(34, j0());
        C0860Ob c0860Ob = (C0860Ob) A5.a(parcelN2, C0860Ob.CREATOR);
        parcelN2.recycle();
        return c0860Ob;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1260eb
    public final R3.a zzn() {
        return com.google.protobuf.U2.f(n2(2, j0()));
    }
}
