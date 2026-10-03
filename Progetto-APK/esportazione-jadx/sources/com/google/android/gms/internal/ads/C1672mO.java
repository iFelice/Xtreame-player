package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1672mO implements Comparator, Parcelable {
    public static final Parcelable.Creator<C1672mO> CREATOR = new C2350zc(21);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1155cO[] f19953G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f19954H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f19955I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f19956J;

    public C1672mO(Parcel parcel) {
        this.f19955I = parcel.readString();
        C1155cO[] c1155cOArr = (C1155cO[]) parcel.createTypedArray(C1155cO.CREATOR);
        int i8 = Et.f13234a;
        this.f19953G = c1155cOArr;
        this.f19956J = c1155cOArr.length;
    }

    public final C1672mO a(String str) {
        return Objects.equals(this.f19955I, str) ? this : new C1672mO(str, false, this.f19953G);
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        C1155cO c1155cO = (C1155cO) obj;
        C1155cO c1155cO2 = (C1155cO) obj2;
        UUID uuid = AbstractC2187wK.f21659a;
        if (uuid.equals(c1155cO.f18223H)) {
            return !uuid.equals(c1155cO2.f18223H) ? 1 : 0;
        }
        return c1155cO.f18223H.compareTo(c1155cO2.f18223H);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1672mO.class == obj.getClass()) {
            C1672mO c1672mO = (C1672mO) obj;
            if (Objects.equals(this.f19955I, c1672mO.f19955I) && Arrays.equals(this.f19953G, c1672mO.f19953G)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f19954H;
        if (i8 != 0) {
            return i8;
        }
        String str = this.f19955I;
        int iHashCode = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f19953G);
        this.f19954H = iHashCode;
        return iHashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f19955I);
        parcel.writeTypedArray(this.f19953G, 0);
    }

    public C1672mO(String str, boolean z7, C1155cO... c1155cOArr) {
        this.f19955I = str;
        c1155cOArr = z7 ? (C1155cO[]) c1155cOArr.clone() : c1155cOArr;
        this.f19953G = c1155cOArr;
        this.f19956J = c1155cOArr.length;
        Arrays.sort(c1155cOArr, this);
    }
}
