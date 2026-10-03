package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.f1;

/* JADX INFO: renamed from: C3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0102b extends M3.a {
    public static final Parcelable.Creator<C0102b> CREATOR = new f1(26);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f1483G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1484H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f1485I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f1486J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String[] f1487K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f1488L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f1489M;

    public C0102b(long j8, String str, long j9, boolean z7, String[] strArr, boolean z8, boolean z9) {
        this.f1483G = j8;
        this.f1484H = str;
        this.f1485I = j9;
        this.f1486J = z7;
        this.f1487K = strArr;
        this.f1488L = z8;
        this.f1489M = z9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0102b)) {
            return false;
        }
        C0102b c0102b = (C0102b) obj;
        return H3.a.e(this.f1484H, c0102b.f1484H) && this.f1483G == c0102b.f1483G && this.f1485I == c0102b.f1485I && this.f1486J == c0102b.f1486J && Arrays.equals(this.f1487K, c0102b.f1487K) && this.f1488L == c0102b.f1488L && this.f1489M == c0102b.f1489M;
    }

    public final int hashCode() {
        return this.f1484H.hashCode();
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f1484H);
            long j8 = this.f1483G;
            Pattern pattern = H3.a.f3677a;
            jSONObject.put("position", j8 / 1000.0d);
            jSONObject.put("isWatched", this.f1486J);
            jSONObject.put("isEmbedded", this.f1488L);
            jSONObject.put("duration", this.f1485I / 1000.0d);
            jSONObject.put("expanded", this.f1489M);
            String[] strArr = this.f1487K;
            if (strArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (String str : strArr) {
                    jSONArray.put(str);
                }
                jSONObject.put("breakClipIds", jSONArray);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 2, 8);
        parcel.writeLong(this.f1483G);
        AbstractC2987b.Q(parcel, 3, this.f1484H);
        AbstractC2987b.v0(parcel, 4, 8);
        parcel.writeLong(this.f1485I);
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(this.f1486J ? 1 : 0);
        AbstractC2987b.R(parcel, 6, this.f1487K);
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(this.f1488L ? 1 : 0);
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(this.f1489M ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
