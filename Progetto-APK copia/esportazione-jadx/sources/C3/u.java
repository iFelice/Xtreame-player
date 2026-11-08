package C3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class u extends M3.a {
    public static final Parcelable.Creator<u> CREATOR = new H(13);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f1610G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f1611H;

    public u(String str, String str2) {
        this.f1610G = str;
        this.f1611H = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return H3.a.e(this.f1610G, uVar.f1610G) && H3.a.e(this.f1611H, uVar.f1611H);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1610G, this.f1611H});
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f1610G;
            if (str != null) {
                jSONObject.put("adTagUrl", str);
            }
            String str2 = this.f1611H;
            if (str2 != null) {
                jSONObject.put("adsResponse", str2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f1610G);
        AbstractC2987b.Q(parcel, 3, this.f1611H);
        AbstractC2987b.p0(iX, parcel);
    }
}
