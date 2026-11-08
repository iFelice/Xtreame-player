package p090l3;

import R3.a;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.ads.InterfaceC1292f6;
import com.google.protobuf.U2;

/* JADX INFO: loaded from: classes.dex */
public final class H extends AbstractC2276y5 implements J {
    public H(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager", 0);
    }

    @Override // p090l3.J
    public final void C0(InterfaceC3110w interfaceC3110w) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC3110w);
        O2(7, parcelJ0);
    }

    @Override // p090l3.J
    public final void D2(a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(44, parcelJ0);
    }

    @Override // p090l3.J
    public final void E0(h1 h1Var) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, h1Var);
        O2(39, parcelJ0);
    }

    @Override // p090l3.J
    public final void G0(Y0 y7) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, y7);
        O2(29, parcelJ0);
    }

    @Override // p090l3.J
    public final void H2(boolean z7) {
        Parcel parcelJ0 = j0();
        ClassLoader classLoader = A5.f11962a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        O2(34, parcelJ0);
    }

    @Override // p090l3.J
    public final void N2(InterfaceC3100q0 interfaceC3100q0) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC3100q0);
        O2(42, parcelJ0);
    }

    @Override // p090l3.J
    public final void S2(b1 b1Var, InterfaceC3116z interfaceC3116z) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, interfaceC3116z);
        O2(43, parcelJ0);
    }

    @Override // p090l3.J
    public final void d3(InterfaceC3068a0 interfaceC3068a0) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC3068a0);
        O2(45, parcelJ0);
    }

    @Override // p090l3.J
    public final void f() {
        O2(2, j0());
    }

    @Override // p090l3.J
    public final void h2(InterfaceC3104t interfaceC3104t) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC3104t);
        O2(20, parcelJ0);
    }

    @Override // p090l3.J
    public final boolean h3(b1 b1Var) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, b1Var);
        Parcel parcelN2 = n2(4, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // p090l3.J
    public final void k2(InterfaceC1292f6 interfaceC1292f6) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC1292f6);
        O2(40, parcelJ0);
    }

    @Override // p090l3.J
    public final void p0(U u7) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, u7);
        O2(8, parcelJ0);
    }

    @Override // p090l3.J
    public final void s3(boolean z7) {
        Parcel parcelJ0 = j0();
        ClassLoader classLoader = A5.f11962a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        O2(22, parcelJ0);
    }

    @Override // p090l3.J
    public final void t() {
        O2(6, j0());
    }

    @Override // p090l3.J
    public final void u0(d1 d1Var) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, d1Var);
        O2(13, parcelJ0);
    }

    @Override // p090l3.J
    public final void y0() {
        O2(5, j0());
    }

    @Override // p090l3.J
    public final d1 zzg() {
        Parcel parcelN2 = n2(12, j0());
        d1 d1Var = (d1) A5.a(parcelN2, d1.CREATOR);
        parcelN2.recycle();
        return d1Var;
    }

    @Override // p090l3.J
    public final InterfaceC3113x0 zzk() {
        InterfaceC3113x0 c3109v0;
        Parcel parcelN2 = n2(41, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c3109v0 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            c3109v0 = iInterfaceQueryLocalInterface instanceof InterfaceC3113x0 ? (InterfaceC3113x0) iInterfaceQueryLocalInterface : new C3109v0(strongBinder);
        }
        parcelN2.recycle();
        return c3109v0;
    }

    @Override // p090l3.J
    public final B0 zzl() {
        B0 c3115y0;
        Parcel parcelN2 = n2(26, j0());
        IBinder strongBinder = parcelN2.readStrongBinder();
        if (strongBinder == null) {
            c3115y0 = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            c3115y0 = iInterfaceQueryLocalInterface instanceof B0 ? (B0) iInterfaceQueryLocalInterface : new C3115y0(strongBinder);
        }
        parcelN2.recycle();
        return c3115y0;
    }

    @Override // p090l3.J
    public final a zzn() {
        return U2.f(n2(1, j0()));
    }

    @Override // p090l3.J
    public final String zzr() {
        Parcel parcelN2 = n2(31, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }
}
