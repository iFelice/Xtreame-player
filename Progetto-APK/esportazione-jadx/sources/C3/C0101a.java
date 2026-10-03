package C3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: renamed from: C3.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0101a extends M3.a {
    public static final Parcelable.Creator<C0101a> CREATOR = new f1(22);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f1470G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1471H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f1472I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f1473J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f1474K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final String f1475L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f1476M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f1477N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final String f1478O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f1479P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f1480Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final u f1481R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final JSONObject f1482S;

    public C0101a(String str, String str2, long j8, String str3, String str4, String str5, String str6, String str7, String str8, long j9, String str9, u uVar) {
        this.f1470G = str;
        this.f1471H = str2;
        this.f1472I = j8;
        this.f1473J = str3;
        this.f1474K = str4;
        this.f1475L = str5;
        this.f1476M = str6;
        this.f1477N = str7;
        this.f1478O = str8;
        this.f1479P = j9;
        this.f1480Q = str9;
        this.f1481R = uVar;
        if (TextUtils.isEmpty(str6)) {
            this.f1482S = new JSONObject();
            return;
        }
        try {
            this.f1482S = new JSONObject(str6);
        } catch (JSONException e8) {
            Locale locale = Locale.ROOT;
            Log.w("AdBreakClipInfo", "Error creating AdBreakClipInfo: " + e8.getMessage());
            this.f1476M = null;
            this.f1482S = new JSONObject();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0101a)) {
            return false;
        }
        C0101a c0101a = (C0101a) obj;
        return H3.a.e(this.f1470G, c0101a.f1470G) && H3.a.e(this.f1471H, c0101a.f1471H) && this.f1472I == c0101a.f1472I && H3.a.e(this.f1473J, c0101a.f1473J) && H3.a.e(this.f1474K, c0101a.f1474K) && H3.a.e(this.f1475L, c0101a.f1475L) && H3.a.e(this.f1476M, c0101a.f1476M) && H3.a.e(this.f1477N, c0101a.f1477N) && H3.a.e(this.f1478O, c0101a.f1478O) && this.f1479P == c0101a.f1479P && H3.a.e(this.f1480Q, c0101a.f1480Q) && H3.a.e(this.f1481R, c0101a.f1481R);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1470G, this.f1471H, Long.valueOf(this.f1472I), this.f1473J, this.f1474K, this.f1475L, this.f1476M, this.f1477N, this.f1478O, Long.valueOf(this.f1479P), this.f1480Q, this.f1481R});
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f1470G);
            long j8 = this.f1472I;
            Pattern pattern = H3.a.f3677a;
            jSONObject.put("duration", j8 / 1000.0d);
            long j9 = this.f1479P;
            if (j9 != -1) {
                jSONObject.put("whenSkippable", j9 / 1000.0d);
            }
            String str = this.f1477N;
            if (str != null) {
                jSONObject.put("contentId", str);
            }
            String str2 = this.f1474K;
            if (str2 != null) {
                jSONObject.put("contentType", str2);
            }
            String str3 = this.f1471H;
            if (str3 != null) {
                jSONObject.put("title", str3);
            }
            String str4 = this.f1473J;
            if (str4 != null) {
                jSONObject.put("contentUrl", str4);
            }
            String str5 = this.f1475L;
            if (str5 != null) {
                jSONObject.put("clickThroughUrl", str5);
            }
            JSONObject jSONObject2 = this.f1482S;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str6 = this.f1478O;
            if (str6 != null) {
                jSONObject.put("posterUrl", str6);
            }
            String str7 = this.f1480Q;
            if (str7 != null) {
                jSONObject.put("hlsSegmentFormat", str7);
            }
            u uVar = this.f1481R;
            if (uVar != null) {
                jSONObject.put("vastAdsRequest", uVar.i());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f1470G);
        AbstractC2987b.Q(parcel, 3, this.f1471H);
        AbstractC2987b.v0(parcel, 4, 8);
        parcel.writeLong(this.f1472I);
        AbstractC2987b.Q(parcel, 5, this.f1473J);
        AbstractC2987b.Q(parcel, 6, this.f1474K);
        AbstractC2987b.Q(parcel, 7, this.f1475L);
        AbstractC2987b.Q(parcel, 8, this.f1476M);
        AbstractC2987b.Q(parcel, 9, this.f1477N);
        AbstractC2987b.Q(parcel, 10, this.f1478O);
        AbstractC2987b.v0(parcel, 11, 8);
        parcel.writeLong(this.f1479P);
        AbstractC2987b.Q(parcel, 12, this.f1480Q);
        AbstractC2987b.P(parcel, 13, this.f1481R, i8);
        AbstractC2987b.p0(iX, parcel);
    }
}
