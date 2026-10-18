package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1155cO implements Parcelable {
    public static final Parcelable.Creator<C1155cO> CREATOR = new C2350zc(22);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f18222G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final UUID f18223H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f18224I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f18225J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final byte[] f18226K;

    public C1155cO(Parcel parcel) {
        this.f18223H = new UUID(parcel.readLong(), parcel.readLong());
        this.f18224I = parcel.readString();
        String string = parcel.readString();
        int i8 = Et.f13234a;
        this.f18225J = string;
        this.f18226K = parcel.createByteArray();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1155cO)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C1155cO c1155cO = (C1155cO) obj;
        return Objects.equals(this.f18224I, c1155cO.f18224I) && Objects.equals(this.f18225J, c1155cO.f18225J) && Objects.equals(this.f18223H, c1155cO.f18223H) && Arrays.equals(this.f18226K, c1155cO.f18226K);
    }

    public final int hashCode() {
        int i8 = this.f18222G;
        if (i8 != 0) {
            return i8;
        }
        int iHashCode = this.f18223H.hashCode() * 31;
        String str = this.f18224I;
        int iE = com.google.protobuf.U2.e(this.f18225J, (iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31) + Arrays.hashCode(this.f18226K);
        this.f18222G = iE;
        return iE;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        UUID uuid = this.f18223H;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.f18224I);
        parcel.writeString(this.f18225J);
        parcel.writeByteArray(this.f18226K);
    }

    public C1155cO(UUID uuid, String str, byte[] bArr) {
        uuid.getClass();
        this.f18223H = uuid;
        this.f18224I = null;
        this.f18225J = AbstractC2140va.e(str);
        this.f18226K = bArr;
    }
}
