package p094m0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Objects;
import java.util.UUID;
import p016c.a;
import p117p0.M;

/* JADX INFO: renamed from: m0.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3131n implements Comparator, Parcelable {
    public static final Parcelable.Creator<C3131n> CREATOR = new a(10);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3130m[] f26960G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f26961H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f26962I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f26963J;

    public C3131n(String str, ArrayList arrayList) {
        this(str, false, (C3130m[]) arrayList.toArray(new C3130m[0]));
    }

    public final C3131n a(String str) {
        return Objects.equals(this.f26962I, str) ? this : new C3131n(str, false, this.f26960G);
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C3130m c3130m = (C3130m) obj;
        C3130m c3130m2 = (C3130m) obj2;
        UUID uuid = AbstractC3124g.f26852a;
        if (uuid.equals(c3130m.f26954H)) {
            return uuid.equals(c3130m2.f26954H) ? 0 : 1;
        }
        return c3130m.f26954H.compareTo(c3130m2.f26954H);
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
        if (obj == null || C3131n.class != obj.getClass()) {
            return false;
        }
        C3131n c3131n = (C3131n) obj;
        return Objects.equals(this.f26962I, c3131n.f26962I) && Arrays.equals(this.f26960G, c3131n.f26960G);
    }

    public final int hashCode() {
        if (this.f26961H == 0) {
            String str = this.f26962I;
            this.f26961H = ((str == null ? 0 : str.hashCode()) * 31) + Arrays.hashCode(this.f26960G);
        }
        return this.f26961H;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeString(this.f26962I);
        parcel.writeTypedArray(this.f26960G, 0);
    }

    public C3131n(String str, boolean z7, C3130m... c3130mArr) {
        this.f26962I = str;
        c3130mArr = z7 ? (C3130m[]) c3130mArr.clone() : c3130mArr;
        this.f26960G = c3130mArr;
        this.f26963J = c3130mArr.length;
        Arrays.sort(c3130mArr, this);
    }

    public C3131n(Parcel parcel) {
        this.f26962I = parcel.readString();
        C3130m[] c3130mArr = (C3130m[]) parcel.createTypedArray(C3130m.CREATOR);
        String str = M.f28050a;
        this.f26960G = c3130mArr;
        this.f26963J = c3130mArr.length;
    }
}
