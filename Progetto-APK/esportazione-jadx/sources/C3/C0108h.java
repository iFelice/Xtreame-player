package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: renamed from: C3.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0108h extends M3.a {
    public static final Parcelable.Creator<C0108h> CREATOR = new f1(23);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f1511G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1512H;

    public C0108h(String str, String str2) {
        this.f1511G = str;
        this.f1512H = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0108h)) {
            return false;
        }
        C0108h c0108h = (C0108h) obj;
        return U4.a.c(this.f1511G, c0108h.f1511G) && U4.a.c(this.f1512H, c0108h.f1512H);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1511G, this.f1512H});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 1, this.f1511G);
        AbstractC2987b.Q(parcel, 2, this.f1512H);
        AbstractC2987b.p0(iX, parcel);
    }
}
