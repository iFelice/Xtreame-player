package com.google.android.gms.cast;

import C3.H;
import M3.a;
import P3.d;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class MediaTrack extends a implements ReflectedParcelable {
    public static final Parcelable.Creator<MediaTrack> CREATOR = new H(9);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f11721G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f11722H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f11723I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f11724J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f11725K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f11726L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f11727M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final List f11728N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f11729O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final JSONObject f11730P;

    public MediaTrack(long j8, int i8, String str, String str2, String str3, String str4, int i9, List list, JSONObject jSONObject) {
        this.f11721G = j8;
        this.f11722H = i8;
        this.f11723I = str;
        this.f11724J = str2;
        this.f11725K = str3;
        this.f11726L = str4;
        this.f11727M = i9;
        this.f11728N = list;
        this.f11730P = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaTrack)) {
            return false;
        }
        MediaTrack mediaTrack = (MediaTrack) obj;
        JSONObject jSONObject = this.f11730P;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = mediaTrack.f11730P;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || d.a(jSONObject, jSONObject2)) && this.f11721G == mediaTrack.f11721G && this.f11722H == mediaTrack.f11722H && H3.a.e(this.f11723I, mediaTrack.f11723I) && H3.a.e(this.f11724J, mediaTrack.f11724J) && H3.a.e(this.f11725K, mediaTrack.f11725K) && H3.a.e(this.f11726L, mediaTrack.f11726L) && this.f11727M == mediaTrack.f11727M && H3.a.e(this.f11728N, mediaTrack.f11728N);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f11721G), Integer.valueOf(this.f11722H), this.f11723I, this.f11724J, this.f11725K, this.f11726L, Integer.valueOf(this.f11727M), this.f11728N, String.valueOf(this.f11730P)});
    }

    public final JSONObject i() {
        String str = this.f11726L;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.f11721G);
            int i8 = this.f11722H;
            if (i8 == 1) {
                jSONObject.put("type", "TEXT");
            } else if (i8 == 2) {
                jSONObject.put("type", "AUDIO");
            } else if (i8 == 3) {
                jSONObject.put("type", "VIDEO");
            }
            String str2 = this.f11723I;
            if (str2 != null) {
                jSONObject.put("trackContentId", str2);
            }
            String str3 = this.f11724J;
            if (str3 != null) {
                jSONObject.put("trackContentType", str3);
            }
            String str4 = this.f11725K;
            if (str4 != null) {
                jSONObject.put("name", str4);
            }
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("language", str);
            }
            int i9 = this.f11727M;
            if (i9 == 1) {
                jSONObject.put("subtype", "SUBTITLES");
            } else if (i9 == 2) {
                jSONObject.put("subtype", "CAPTIONS");
            } else if (i9 == 3) {
                jSONObject.put("subtype", "DESCRIPTIONS");
            } else if (i9 == 4) {
                jSONObject.put("subtype", "CHAPTERS");
            } else if (i9 == 5) {
                jSONObject.put("subtype", "METADATA");
            }
            List list = this.f11728N;
            if (list != null) {
                jSONObject.put("roles", new JSONArray((Collection) list));
            }
            JSONObject jSONObject2 = this.f11730P;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f11730P;
        this.f11729O = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f11721G);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f11722H);
        AbstractC2987b.Q(parcel, 4, this.f11723I);
        AbstractC2987b.Q(parcel, 5, this.f11724J);
        AbstractC2987b.Q(parcel, 6, this.f11725K);
        AbstractC2987b.Q(parcel, 7, this.f11726L);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f11727M);
        AbstractC2987b.S(parcel, 9, this.f11728N);
        AbstractC2987b.Q(parcel, 10, this.f11729O);
        AbstractC2987b.p0(iX, parcel);
    }
}
