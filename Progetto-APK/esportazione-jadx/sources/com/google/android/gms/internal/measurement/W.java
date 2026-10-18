package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Objects;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class W extends M3.a {
    public static final Parcelable.Creator<W> CREATOR = new J3.v(4);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f23025G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f23026H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Intent f23027I;

    public W(int i8, String str, Intent intent) {
        this.f23025G = i8;
        this.f23026H = str;
        this.f23027I = intent;
    }

    public static W i(Activity activity) {
        return new W(activity.hashCode(), activity.getClass().getCanonicalName(), activity.getIntent());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof W)) {
            return false;
        }
        W w7 = (W) obj;
        return this.f23025G == w7.f23025G && Objects.equals(this.f23026H, w7.f23026H) && Objects.equals(this.f23027I, w7.f23027I);
    }

    public final int hashCode() {
        return this.f23025G;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f23025G);
        AbstractC2987b.Q(parcel, 2, this.f23026H);
        AbstractC2987b.P(parcel, 3, this.f23027I, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
