package com.google.android.gms.cast;

import M3.a;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: loaded from: classes.dex */
public class MediaError extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaError> CREATOR = new f1(29);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f11697G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f11698H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Integer f11699I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f11700J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public String f11701K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final JSONObject f11702L;

    public MediaError(String str, long j8, Integer num, String str2, JSONObject jSONObject) {
        this.f11697G = str;
        this.f11698H = j8;
        this.f11699I = num;
        this.f11700J = str2;
        this.f11702L = jSONObject;
    }

    public static MediaError i(JSONObject jSONObject) {
        return new MediaError(jSONObject.optString("type", "ERROR"), jSONObject.optLong("requestId"), jSONObject.has("detailedErrorCode") ? Integer.valueOf(jSONObject.optInt("detailedErrorCode")) : null, H3.a.b(jSONObject, "reason"), jSONObject.has("customData") ? jSONObject.optJSONObject("customData") : null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f11702L;
        this.f11701K = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f11697G);
        AbstractC2987b.v0(parcel, 3, 8);
        parcel.writeLong(this.f11698H);
        Integer num = this.f11699I;
        if (num != null) {
            AbstractC2987b.v0(parcel, 4, 4);
            parcel.writeInt(num.intValue());
        }
        AbstractC2987b.Q(parcel, 5, this.f11700J);
        AbstractC2987b.Q(parcel, 6, this.f11701K);
        AbstractC2987b.p0(iX, parcel);
    }
}
