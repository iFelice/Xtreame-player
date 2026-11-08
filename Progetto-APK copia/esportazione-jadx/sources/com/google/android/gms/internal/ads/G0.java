package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class G0 implements K9 {
    public static final Parcelable.Creator<G0> CREATOR = new E0(1);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f13454G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f13455H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f13456I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f13457J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f13458K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f13459L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f13460M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final byte[] f13461N;

    public G0(int i8, String str, String str2, int i9, int i10, int i11, int i12, byte[] bArr) {
        this.f13454G = i8;
        this.f13455H = str;
        this.f13456I = str2;
        this.f13457J = i9;
        this.f13458K = i10;
        this.f13459L = i11;
        this.f13460M = i12;
        this.f13461N = bArr;
    }

    public static G0 a(C1534jr c1534jr) {
        int iR = c1534jr.r();
        String strE = AbstractC2140va.e(c1534jr.b(c1534jr.r(), AbstractC2113uz.f21411a));
        String strB = c1534jr.b(c1534jr.r(), StandardCharsets.UTF_8);
        int iR2 = c1534jr.r();
        int iR3 = c1534jr.r();
        int iR4 = c1534jr.r();
        int iR5 = c1534jr.r();
        int iR6 = c1534jr.r();
        byte[] bArr = new byte[iR6];
        c1534jr.f(0, bArr, iR6);
        return new G0(iR, strE, strB, iR2, iR3, iR4, iR5, bArr);
    }

    @Override // com.google.android.gms.internal.ads.K9
    public final void b(A8 a8) {
        a8.a(this.f13454G, this.f13461N);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && G0.class == obj.getClass()) {
            G0 g8 = (G0) obj;
            if (this.f13454G == g8.f13454G && this.f13455H.equals(g8.f13455H) && this.f13456I.equals(g8.f13456I) && this.f13457J == g8.f13457J && this.f13458K == g8.f13458K && this.f13459L == g8.f13459L && this.f13460M == g8.f13460M && Arrays.equals(this.f13461N, g8.f13461N)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f13461N) + ((((((((((this.f13456I.hashCode() + ((this.f13455H.hashCode() + ((this.f13454G + 527) * 31)) * 31)) * 31) + this.f13457J) * 31) + this.f13458K) * 31) + this.f13459L) * 31) + this.f13460M) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.f13455H + ", description=" + this.f13456I;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeInt(this.f13454G);
        parcel.writeString(this.f13455H);
        parcel.writeString(this.f13456I);
        parcel.writeInt(this.f13457J);
        parcel.writeInt(this.f13458K);
        parcel.writeInt(this.f13459L);
        parcel.writeInt(this.f13460M);
        parcel.writeByteArray(this.f13461N);
    }

    public G0(Parcel parcel) {
        this.f13454G = parcel.readInt();
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f13455H = string;
        this.f13456I = parcel.readString();
        this.f13457J = parcel.readInt();
        this.f13458K = parcel.readInt();
        this.f13459L = parcel.readInt();
        this.f13460M = parcel.readInt();
        this.f13461N = parcel.createByteArray();
    }
}
