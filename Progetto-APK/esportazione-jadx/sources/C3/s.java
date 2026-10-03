package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class s extends M3.a {
    public static final Parcelable.Creator<s> CREATOR = new H(11);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final k f1594G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f1595H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final JSONObject f1596I;

    public s(k kVar, JSONObject jSONObject) {
        this.f1594G = kVar;
        this.f1596I = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (P3.d.a(this.f1596I, sVar.f1596I)) {
            return U4.a.c(this.f1594G, sVar.f1594G);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1594G, String.valueOf(this.f1596I)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f1596I;
        this.f1595H = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.P(parcel, 2, this.f1594G, i8);
        AbstractC2987b.Q(parcel, 3, this.f1595H);
        AbstractC2987b.p0(iX, parcel);
    }
}
