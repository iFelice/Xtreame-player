package C3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class m extends M3.a {
    public static final Parcelable.Creator<m> CREATOR = new H(5);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f1541G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f1542H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public List f1543I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public List f1544J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public double f1545K;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f1541G == mVar.f1541G && TextUtils.equals(this.f1542H, mVar.f1542H) && U4.a.c(this.f1543I, mVar.f1543I) && U4.a.c(this.f1544J, mVar.f1544J) && this.f1545K == mVar.f1545K;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f1541G), this.f1542H, this.f1543I, this.f1544J, Double.valueOf(this.f1545K)});
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            int i8 = this.f1541G;
            if (i8 == 0) {
                jSONObject.put("containerType", "GENERIC_CONTAINER");
            } else if (i8 == 1) {
                jSONObject.put("containerType", "AUDIOBOOK_CONTAINER");
            }
            if (!TextUtils.isEmpty(this.f1542H)) {
                jSONObject.put("title", this.f1542H);
            }
            List list = this.f1543I;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.f1543I.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((l) it.next()).l());
                }
                jSONObject.put("sections", jSONArray);
            }
            List list2 = this.f1544J;
            if (list2 != null && !list2.isEmpty()) {
                jSONObject.put("containerImages", I3.a.b(this.f1544J));
            }
            jSONObject.put("containerDuration", this.f1545K);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        int i9 = this.f1541G;
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeInt(i9);
        AbstractC2987b.Q(parcel, 3, this.f1542H);
        List list = this.f1543I;
        AbstractC2987b.U(parcel, 4, list == null ? null : Collections.unmodifiableList(list));
        List list2 = this.f1544J;
        AbstractC2987b.U(parcel, 5, list2 != null ? Collections.unmodifiableList(list2) : null);
        double d6 = this.f1545K;
        AbstractC2987b.v0(parcel, 6, 8);
        parcel.writeDouble(d6);
        AbstractC2987b.p0(iX, parcel);
    }
}
