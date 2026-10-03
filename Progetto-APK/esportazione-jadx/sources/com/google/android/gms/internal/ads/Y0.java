package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class Y0 implements K9 {
    public static final Parcelable.Creator<Y0> CREATOR = new E0(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final List f17557G;

    public Y0(ArrayList arrayList) {
        this.f17557G = arrayList;
        boolean z7 = false;
        if (!arrayList.isEmpty()) {
            long j8 = ((X0) arrayList.get(0)).f17359H;
            for (int i8 = 1; i8 < arrayList.size(); i8++) {
                if (((X0) arrayList.get(i8)).f17358G < j8) {
                    z7 = true;
                    break;
                }
                j8 = ((X0) arrayList.get(i8)).f17359H;
            }
        }
        p113o3.r.J(!z7);
    }

    @Override // com.google.android.gms.internal.ads.K9
    public final /* synthetic */ void b(A8 a8) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Y0.class != obj.getClass()) {
            return false;
        }
        return this.f17557G.equals(((Y0) obj).f17557G);
    }

    public final int hashCode() {
        return this.f17557G.hashCode();
    }

    public final String toString() {
        return "SlowMotion: segments=".concat(this.f17557G.toString());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        parcel.writeList(this.f17557G);
    }
}
