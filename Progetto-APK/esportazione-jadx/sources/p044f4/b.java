package p044f4;

import J3.v;
import M3.a;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.o;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class b extends a implements o {
    public static final Parcelable.Creator<b> CREATOR = new v(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f25206G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f25207H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Intent f25208I;

    public b(int i8, int i9, Intent intent) {
        this.f25206G = i8;
        this.f25207H = i9;
        this.f25208I = intent;
    }

    @Override // com.google.android.gms.common.api.o
    public final Status c() {
        return this.f25207H == 0 ? Status.f11753K : Status.f11755M;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f25206G);
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(this.f25207H);
        AbstractC2987b.P(parcel, 3, this.f25208I, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
