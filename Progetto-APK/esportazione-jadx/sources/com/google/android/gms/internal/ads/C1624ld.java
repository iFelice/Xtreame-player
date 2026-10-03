package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONArray;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ld, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1624ld extends M3.a {
    public static final Parcelable.Creator<C1624ld> CREATOR = new C2350zc(8);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f19803G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f19804H;

    public C1624ld(String str, int i8) {
        this.f19803G = str;
        this.f19804H = i8;
    }

    public static C1624ld i(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        return new C1624ld(jSONArray.getJSONObject(0).optString("rb_type"), jSONArray.getJSONObject(0).optInt("rb_amount"));
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof C1624ld)) {
            C1624ld c1624ld = (C1624ld) obj;
            if (U4.a.c(this.f19803G, c1624ld.f19803G) && U4.a.c(Integer.valueOf(this.f19804H), Integer.valueOf(c1624ld.f19804H))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f19803G, Integer.valueOf(this.f19804H)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f19803G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f19804H);
        AbstractC2987b.p0(iX, parcel);
    }
}
