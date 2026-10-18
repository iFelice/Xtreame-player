package H3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public final class c extends M3.a {
    public static final Parcelable.Creator<c> CREATOR = new f1(21);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f3682G;

    public c(String str) {
        this.f3682G = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof c) {
            return a.e(this.f3682G, ((c) obj).f3682G);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3682G});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f3682G);
        AbstractC2987b.p0(iX, parcel);
    }
}
