package C3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.MediaInfo;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class p extends M3.a {
    public static final Parcelable.Creator<p> CREATOR = new H(7);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public MediaInfo f1557G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f1558H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f1559I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public double f1560J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public double f1561K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public double f1562L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long[] f1563M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f1564N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public JSONObject f1565O;

    public p(MediaInfo mediaInfo, int i8, boolean z7, double d6, double d8, double d9, long[] jArr, String str) {
        this.f1557G = mediaInfo;
        this.f1558H = i8;
        this.f1559I = z7;
        this.f1560J = d6;
        this.f1561K = d8;
        this.f1562L = d9;
        this.f1563M = jArr;
        this.f1564N = str;
        if (str == null) {
            this.f1565O = null;
            return;
        }
        try {
            this.f1565O = new JSONObject(this.f1564N);
        } catch (JSONException unused) {
            this.f1565O = null;
            this.f1564N = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        JSONObject jSONObject = this.f1565O;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = pVar.f1565O;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || P3.d.a(jSONObject, jSONObject2)) && H3.a.e(this.f1557G, pVar.f1557G) && this.f1558H == pVar.f1558H && this.f1559I == pVar.f1559I && ((Double.isNaN(this.f1560J) && Double.isNaN(pVar.f1560J)) || this.f1560J == pVar.f1560J) && this.f1561K == pVar.f1561K && this.f1562L == pVar.f1562L && Arrays.equals(this.f1563M, pVar.f1563M);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1557G, Integer.valueOf(this.f1558H), Boolean.valueOf(this.f1559I), Double.valueOf(this.f1560J), Double.valueOf(this.f1561K), Double.valueOf(this.f1562L), Integer.valueOf(Arrays.hashCode(this.f1563M)), String.valueOf(this.f1565O)});
    }

    public final boolean i(JSONObject jSONObject) throws JSONException {
        boolean z7;
        long[] jArr;
        boolean z8;
        int i8;
        boolean z9 = false;
        if (jSONObject.has("media")) {
            this.f1557G = new MediaInfo(jSONObject.getJSONObject("media"));
            z7 = true;
        } else {
            z7 = false;
        }
        if (jSONObject.has("itemId") && this.f1558H != (i8 = jSONObject.getInt("itemId"))) {
            this.f1558H = i8;
            z7 = true;
        }
        if (jSONObject.has("autoplay") && this.f1559I != (z8 = jSONObject.getBoolean("autoplay"))) {
            this.f1559I = z8;
            z7 = true;
        }
        double dOptDouble = jSONObject.optDouble("startTime");
        if (Double.isNaN(dOptDouble) != Double.isNaN(this.f1560J) || (!Double.isNaN(dOptDouble) && Math.abs(dOptDouble - this.f1560J) > 1.0E-7d)) {
            this.f1560J = dOptDouble;
            z7 = true;
        }
        if (jSONObject.has("playbackDuration")) {
            double d6 = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d6 - this.f1561K) > 1.0E-7d) {
                this.f1561K = d6;
                z7 = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d8 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d8 - this.f1562L) > 1.0E-7d) {
                this.f1562L = d8;
                z7 = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i9 = 0; i9 < length; i9++) {
                jArr[i9] = jSONArray.getLong(i9);
            }
            long[] jArr2 = this.f1563M;
            if (jArr2 == null || jArr2.length != length) {
                z9 = true;
                break;
            }
            for (int i10 = 0; i10 < length; i10++) {
                if (this.f1563M[i10] != jArr[i10]) {
                    z9 = true;
                    break;
                }
            }
        } else {
            jArr = null;
        }
        if (z9) {
            this.f1563M = jArr;
            z7 = true;
        }
        if (!jSONObject.has("customData")) {
            return z7;
        }
        this.f1565O = jSONObject.getJSONObject("customData");
        return true;
    }

    public final JSONObject l() {
        JSONObject jSONObject = new JSONObject();
        try {
            MediaInfo mediaInfo = this.f1557G;
            if (mediaInfo != null) {
                jSONObject.put("media", mediaInfo.i());
            }
            int i8 = this.f1558H;
            if (i8 != 0) {
                jSONObject.put("itemId", i8);
            }
            jSONObject.put("autoplay", this.f1559I);
            if (!Double.isNaN(this.f1560J)) {
                jSONObject.put("startTime", this.f1560J);
            }
            double d6 = this.f1561K;
            if (d6 != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", d6);
            }
            jSONObject.put("preloadTime", this.f1562L);
            if (this.f1563M != null) {
                JSONArray jSONArray = new JSONArray();
                for (long j8 : this.f1563M) {
                    jSONArray.put(j8);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            JSONObject jSONObject2 = this.f1565O;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f1565O;
        this.f1564N = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f1557G, i8);
        int i9 = this.f1558H;
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(i9);
        boolean z7 = this.f1559I;
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(z7 ? 1 : 0);
        double d6 = this.f1560J;
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeDouble(d6);
        double d8 = this.f1561K;
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeDouble(d8);
        double d9 = this.f1562L;
        AbstractC2987b.v0(parcel, 7, 8);
        parcel.writeDouble(d9);
        AbstractC2987b.O(parcel, 8, this.f1563M);
        AbstractC2987b.Q(parcel, 9, this.f1564N);
        AbstractC2987b.p0(iX, parcel);
    }

    public p(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, Double.NaN, Double.POSITIVE_INFINITY, 0.0d, null, null);
        i(jSONObject);
    }
}
