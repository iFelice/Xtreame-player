package C3;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.MediaInfo;
import java.util.Arrays;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class k extends M3.a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MediaInfo f1523G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final n f1524H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Boolean f1525I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f1526J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final double f1527K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final long[] f1528L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public String f1529M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final JSONObject f1530N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final String f1531O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final String f1532P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final String f1533Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final String f1534R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final long f1535S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public static final H3.b f1522T = new H3.b("MediaLoadRequestData", null);
    public static final Parcelable.Creator<k> CREATOR = new H(3);

    public k(MediaInfo mediaInfo, n nVar, Boolean bool, long j8, double d6, long[] jArr, JSONObject jSONObject, String str, String str2, String str3, String str4, long j9) {
        this.f1523G = mediaInfo;
        this.f1524H = nVar;
        this.f1525I = bool;
        this.f1526J = j8;
        this.f1527K = d6;
        this.f1528L = jArr;
        this.f1530N = jSONObject;
        this.f1531O = str;
        this.f1532P = str2;
        this.f1533Q = str3;
        this.f1534R = str4;
        this.f1535S = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return P3.d.a(this.f1530N, kVar.f1530N) && U4.a.c(this.f1523G, kVar.f1523G) && U4.a.c(this.f1524H, kVar.f1524H) && U4.a.c(this.f1525I, kVar.f1525I) && this.f1526J == kVar.f1526J && this.f1527K == kVar.f1527K && Arrays.equals(this.f1528L, kVar.f1528L) && U4.a.c(this.f1531O, kVar.f1531O) && U4.a.c(this.f1532P, kVar.f1532P) && U4.a.c(this.f1533Q, kVar.f1533Q) && U4.a.c(this.f1534R, kVar.f1534R) && this.f1535S == kVar.f1535S;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1523G, this.f1524H, this.f1525I, Long.valueOf(this.f1526J), Double.valueOf(this.f1527K), this.f1528L, String.valueOf(this.f1530N), this.f1531O, this.f1532P, this.f1533Q, this.f1534R, Long.valueOf(this.f1535S)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f1530N;
        this.f1529M = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f1523G, i8);
        AbstractC2987b.P(parcel, 3, this.f1524H, i8);
        AbstractC2987b.I(parcel, 4, this.f1525I);
        AbstractC2987b.v0(parcel, 5, 8);
        parcel.writeLong(this.f1526J);
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeDouble(this.f1527K);
        AbstractC2987b.O(parcel, 7, this.f1528L);
        AbstractC2987b.Q(parcel, 8, this.f1529M);
        AbstractC2987b.Q(parcel, 9, this.f1531O);
        AbstractC2987b.Q(parcel, 10, this.f1532P);
        AbstractC2987b.Q(parcel, 11, this.f1533Q);
        AbstractC2987b.Q(parcel, 12, this.f1534R);
        AbstractC2987b.v0(parcel, 13, 8);
        parcel.writeLong(this.f1535S);
        AbstractC2987b.p0(iX, parcel);
    }
}
