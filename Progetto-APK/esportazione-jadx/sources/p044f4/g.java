package p044f4;

import J3.v;
import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.o;
import java.util.ArrayList;
import java.util.List;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class g extends a implements o {
    public static final Parcelable.Creator<g> CREATOR = new v(17);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f25209G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f25210H;

    public g(String str, ArrayList arrayList) {
        this.f25209G = arrayList;
        this.f25210H = str;
    }

    @Override // com.google.android.gms.common.api.o
    public final Status c() {
        return this.f25210H != null ? Status.f11753K : Status.f11755M;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.S(parcel, 1, this.f25209G);
        AbstractC2987b.Q(parcel, 2, this.f25210H);
        AbstractC2987b.p0(iX, parcel);
    }
}
