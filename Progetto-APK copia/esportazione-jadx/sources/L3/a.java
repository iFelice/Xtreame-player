package L3;

import C3.H;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class a extends M3.a {
    public static final Parcelable.Creator<a> CREATOR = new H(18);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4699G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Uri f4700H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f4701I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f4702J;

    public a(int i8, Uri uri, int i9, int i10) {
        this.f4699G = i8;
        this.f4700H = uri;
        this.f4701I = i9;
        this.f4702J = i10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof a)) {
            a aVar = (a) obj;
            if (U4.a.c(this.f4700H, aVar.f4700H) && this.f4701I == aVar.f4701I && this.f4702J == aVar.f4702J) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4700H, Integer.valueOf(this.f4701I), Integer.valueOf(this.f4702J)});
    }

    public final String toString() {
        Locale locale = Locale.US;
        return "Image " + this.f4701I + "x" + this.f4702J + " " + this.f4700H.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.v0(parcel, 1, 4);
        parcel.writeInt(this.f4699G);
        AbstractC2987b.P(parcel, 2, this.f4700H, i8);
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(this.f4701I);
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(this.f4702J);
        AbstractC2987b.p0(iX, parcel);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a(JSONObject jSONObject) {
        Uri uri = Uri.EMPTY;
        if (jSONObject.has("url")) {
            try {
                uri = Uri.parse(jSONObject.getString("url"));
            } catch (JSONException unused) {
            }
        }
        int iOptInt = jSONObject.optInt("width", 0);
        int iOptInt2 = jSONObject.optInt("height", 0);
        this(1, uri, iOptInt, iOptInt2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        }
        if (iOptInt < 0 || iOptInt2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }
}
