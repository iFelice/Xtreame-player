package C3;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: C3.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0104d extends M3.a {
    public static final Parcelable.Creator<C0104d> CREATOR = new H(10);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f1496G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1497H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final List f1498I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f1499J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final Uri f1500K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f1501L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f1502M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Boolean f1503N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Boolean f1504O;

    public C0104d(String str, String str2, ArrayList arrayList, String str3, Uri uri, String str4, String str5, Boolean bool, Boolean bool2) {
        this.f1496G = str;
        this.f1497H = str2;
        this.f1498I = arrayList;
        this.f1499J = str3;
        this.f1500K = uri;
        this.f1501L = str4;
        this.f1502M = str5;
        this.f1503N = bool;
        this.f1504O = bool2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0104d)) {
            return false;
        }
        C0104d c0104d = (C0104d) obj;
        return H3.a.e(this.f1496G, c0104d.f1496G) && H3.a.e(this.f1497H, c0104d.f1497H) && H3.a.e(this.f1498I, c0104d.f1498I) && H3.a.e(this.f1499J, c0104d.f1499J) && H3.a.e(this.f1500K, c0104d.f1500K) && H3.a.e(this.f1501L, c0104d.f1501L) && H3.a.e(this.f1502M, c0104d.f1502M);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1496G, this.f1497H, this.f1498I, this.f1499J, this.f1500K, this.f1501L});
    }

    public final String toString() {
        List list = this.f1498I;
        int size = list == null ? 0 : list.size();
        String strValueOf = String.valueOf(this.f1500K);
        StringBuilder sb = new StringBuilder("applicationId: ");
        sb.append(this.f1496G);
        sb.append(", name: ");
        sb.append(this.f1497H);
        sb.append(", namespaces.count: ");
        sb.append(size);
        sb.append(", senderAppIdentifier: ");
        p148t.a.h(sb, this.f1499J, ", senderAppLaunchUrl: ", strValueOf, ", iconUrl: ");
        sb.append(this.f1501L);
        sb.append(", type: ");
        sb.append(this.f1502M);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f1496G);
        AbstractC2987b.Q(parcel, 3, this.f1497H);
        AbstractC2987b.S(parcel, 5, Collections.unmodifiableList(this.f1498I));
        AbstractC2987b.Q(parcel, 6, this.f1499J);
        AbstractC2987b.P(parcel, 7, this.f1500K, i8);
        AbstractC2987b.Q(parcel, 8, this.f1501L);
        AbstractC2987b.Q(parcel, 9, this.f1502M);
        AbstractC2987b.I(parcel, 10, this.f1503N);
        AbstractC2987b.I(parcel, 11, this.f1504O);
        AbstractC2987b.p0(iX, parcel);
    }
}
