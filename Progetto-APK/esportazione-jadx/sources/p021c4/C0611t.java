package p021c4;

import J3.v;
import M3.a;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.atv_ads_framework.C0;
import java.util.Iterator;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: c4.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0611t extends a implements Iterable {
    public static final Parcelable.Creator<C0611t> CREATOR = new v(8);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Bundle f11369G;

    public C0611t(Bundle bundle) {
        this.f11369G = bundle;
    }

    public final Bundle i() {
        return new Bundle(this.f11369G);
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new C0(this);
    }

    public final Double l() {
        return Double.valueOf(this.f11369G.getDouble("value"));
    }

    public final String toString() {
        return this.f11369G.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.J(parcel, 2, i());
        AbstractC2987b.p0(iX, parcel);
    }
}
