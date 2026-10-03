package p021c4;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.AbstractC2276y5;
import com.google.android.gms.internal.measurement.AbstractC2658y;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class F extends AbstractC2276y5 implements G {
    public F(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService", 4);
    }

    @Override // p021c4.G
    public final void A2(J1 j8, C0575e c0575e) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        AbstractC2658y.c(parcelJ0, c0575e);
        r1(30, parcelJ0);
    }

    @Override // p021c4.G
    public final List F1(String str, String str2, String str3, boolean z7) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(null);
        parcelJ0.writeString(str2);
        parcelJ0.writeString(str3);
        ClassLoader classLoader = AbstractC2658y.f23412a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        Parcel parcelV0 = v0(15, parcelJ0);
        ArrayList arrayListCreateTypedArrayList = parcelV0.createTypedArrayList(F1.CREATOR);
        parcelV0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // p021c4.G
    public final void I2(J1 j8, Bundle bundle, I i8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        AbstractC2658y.c(parcelJ0, bundle);
        AbstractC2658y.d(parcelJ0, i8);
        r1(31, parcelJ0);
    }

    @Override // p021c4.G
    public final void M0(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(4, parcelJ0);
    }

    @Override // p021c4.G
    public final void R2(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(6, parcelJ0);
    }

    @Override // p021c4.G
    public final void T2(J1 j8, s1 s1Var, K k8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        AbstractC2658y.c(parcelJ0, s1Var);
        AbstractC2658y.d(parcelJ0, k8);
        r1(29, parcelJ0);
    }

    @Override // p021c4.G
    public final void W0(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(20, parcelJ0);
    }

    @Override // p021c4.G
    public final void X0(C0613u c0613u, J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, c0613u);
        AbstractC2658y.c(parcelJ0, j8);
        r1(1, parcelJ0);
    }

    @Override // p021c4.G
    public final C0590j Y0(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        Parcel parcelV0 = v0(21, parcelJ0);
        C0590j c0590j = (C0590j) AbstractC2658y.a(parcelV0, C0590j.CREATOR);
        parcelV0.recycle();
        return c0590j;
    }

    @Override // p021c4.G
    public final List Z0(String str, String str2, String str3) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(null);
        parcelJ0.writeString(str2);
        parcelJ0.writeString(str3);
        Parcel parcelV0 = v0(17, parcelJ0);
        ArrayList arrayListCreateTypedArrayList = parcelV0.createTypedArrayList(C0578f.CREATOR);
        parcelV0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // p021c4.G
    public final void a0(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(25, parcelJ0);
    }

    @Override // p021c4.G
    public final void b0(F1 f8, J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, f8);
        AbstractC2658y.c(parcelJ0, j8);
        r1(2, parcelJ0);
    }

    @Override // p021c4.G
    public final void b1(Bundle bundle, J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, bundle);
        AbstractC2658y.c(parcelJ0, j8);
        r1(19, parcelJ0);
    }

    @Override // p021c4.G
    public final List d0(String str, String str2, J1 j8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        AbstractC2658y.c(parcelJ0, j8);
        Parcel parcelV0 = v0(16, parcelJ0);
        ArrayList arrayListCreateTypedArrayList = parcelV0.createTypedArrayList(C0578f.CREATOR);
        parcelV0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // p021c4.G
    public final List k0(String str, String str2, boolean z7, J1 j8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        ClassLoader classLoader = AbstractC2658y.f23412a;
        parcelJ0.writeInt(z7 ? 1 : 0);
        AbstractC2658y.c(parcelJ0, j8);
        Parcel parcelV0 = v0(14, parcelJ0);
        ArrayList arrayListCreateTypedArrayList = parcelV0.createTypedArrayList(F1.CREATOR);
        parcelV0.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // p021c4.G
    public final byte[] m0(C0613u c0613u, String str) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, c0613u);
        parcelJ0.writeString(str);
        Parcel parcelV0 = v0(9, parcelJ0);
        byte[] bArrCreateByteArray = parcelV0.createByteArray();
        parcelV0.recycle();
        return bArrCreateByteArray;
    }

    @Override // p021c4.G
    public final void o2(C0578f c0578f, J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, c0578f);
        AbstractC2658y.c(parcelJ0, j8);
        r1(12, parcelJ0);
    }

    @Override // p021c4.G
    public final void r3(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(18, parcelJ0);
    }

    @Override // p021c4.G
    public final void t0(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(27, parcelJ0);
    }

    @Override // p021c4.G
    public final void t2(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        r1(26, parcelJ0);
    }

    @Override // p021c4.G
    public final void v3(long j8, String str, String str2, String str3) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeLong(j8);
        parcelJ0.writeString(str);
        parcelJ0.writeString(str2);
        parcelJ0.writeString(str3);
        r1(10, parcelJ0);
    }

    @Override // p021c4.G
    public final String w1(J1 j8) {
        Parcel parcelJ0 = j0();
        AbstractC2658y.c(parcelJ0, j8);
        Parcel parcelV0 = v0(11, parcelJ0);
        String string = parcelV0.readString();
        parcelV0.recycle();
        return string;
    }
}
