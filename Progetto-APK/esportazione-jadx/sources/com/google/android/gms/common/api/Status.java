package com.google.android.gms.common.api;

import C3.H;
import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class Status extends M3.a implements o, ReflectedParcelable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f11756G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f11757H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PendingIntent f11758I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final J3.b f11759J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final Status f11753K = new Status(0, null, null, null);

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Status f11754L = new Status(15, null, null, null);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Status f11755M = new Status(16, null, null, null);
    public static final Parcelable.Creator<Status> CREATOR = new H(17);

    public Status(int i8, String str, PendingIntent pendingIntent, J3.b bVar) {
        this.f11756G = i8;
        this.f11757H = str;
        this.f11758I = pendingIntent;
        this.f11759J = bVar;
    }

    @Override // com.google.android.gms.common.api.o
    public final Status c() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.f11756G == status.f11756G && U4.a.c(this.f11757H, status.f11757H) && U4.a.c(this.f11758I, status.f11758I) && U4.a.c(this.f11759J, status.f11759J);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f11756G), this.f11757H, this.f11758I, this.f11759J});
    }

    public final String toString() {
        p096m2.e eVar = new p096m2.e(this);
        String strF = this.f11757H;
        if (strF == null) {
            strF = a7.b.f(this.f11756G);
        }
        eVar.d(strF, "statusCode");
        eVar.d(this.f11758I, "resolution");
        return eVar.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f11756G);
        AbstractC2987b.Q(parcel, 2, this.f11757H);
        AbstractC2987b.P(parcel, 3, this.f11758I, i8);
        AbstractC2987b.P(parcel, 4, this.f11759J, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
