package C3;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class n extends M3.a {
    public static final Parcelable.Creator<n> CREATOR = new H(6);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public String f1546G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public String f1547H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f1548I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public String f1549J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public m f1550K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f1551L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public List f1552M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f1553N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public long f1554O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f1555P;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return TextUtils.equals(this.f1546G, nVar.f1546G) && TextUtils.equals(this.f1547H, nVar.f1547H) && this.f1548I == nVar.f1548I && TextUtils.equals(this.f1549J, nVar.f1549J) && U4.a.c(this.f1550K, nVar.f1550K) && this.f1551L == nVar.f1551L && U4.a.c(this.f1552M, nVar.f1552M) && this.f1553N == nVar.f1553N && this.f1554O == nVar.f1554O && this.f1555P == nVar.f1555P;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1546G, this.f1547H, Integer.valueOf(this.f1548I), this.f1549J, this.f1550K, Integer.valueOf(this.f1551L), this.f1552M, Integer.valueOf(this.f1553N), Long.valueOf(this.f1554O), Boolean.valueOf(this.f1555P)});
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f1546G)) {
                jSONObject.put("id", this.f1546G);
            }
            if (!TextUtils.isEmpty(this.f1547H)) {
                jSONObject.put("entity", this.f1547H);
            }
            switch (this.f1548I) {
                case 1:
                    jSONObject.put("queueType", "ALBUM");
                    break;
                case 2:
                    jSONObject.put("queueType", "PLAYLIST");
                    break;
                case 3:
                    jSONObject.put("queueType", "AUDIOBOOK");
                    break;
                case 4:
                    jSONObject.put("queueType", "RADIO_STATION");
                    break;
                case 5:
                    jSONObject.put("queueType", "PODCAST_SERIES");
                    break;
                case 6:
                    jSONObject.put("queueType", "TV_SERIES");
                    break;
                case 7:
                    jSONObject.put("queueType", "VIDEO_PLAYLIST");
                    break;
                case 8:
                    jSONObject.put("queueType", "LIVE_TV");
                    break;
                case 9:
                    jSONObject.put("queueType", "MOVIE");
                    break;
            }
            if (!TextUtils.isEmpty(this.f1549J)) {
                jSONObject.put("name", this.f1549J);
            }
            m mVar = this.f1550K;
            if (mVar != null) {
                jSONObject.put("containerMetadata", mVar.i());
            }
            String strJ = U4.a.j(Integer.valueOf(this.f1551L));
            if (strJ != null) {
                jSONObject.put("repeatMode", strJ);
            }
            List list = this.f1552M;
            if (list != null && !list.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.f1552M.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((p) it.next()).l());
                }
                jSONObject.put("items", jSONArray);
            }
            jSONObject.put("startIndex", this.f1553N);
            long j8 = this.f1554O;
            if (j8 != -1) {
                Pattern pattern = H3.a.f3677a;
                jSONObject.put("startTime", j8 / 1000.0d);
            }
            jSONObject.put("shuffle", this.f1555P);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        int iX = AbstractC2987b.X(20293, parcel);
        AbstractC2987b.Q(parcel, 2, this.f1546G);
        AbstractC2987b.Q(parcel, 3, this.f1547H);
        int i9 = this.f1548I;
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(i9);
        AbstractC2987b.Q(parcel, 5, this.f1549J);
        AbstractC2987b.P(parcel, 6, this.f1550K, i8);
        int i10 = this.f1551L;
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(i10);
        List list = this.f1552M;
        AbstractC2987b.U(parcel, 8, list == null ? null : Collections.unmodifiableList(list));
        int i11 = this.f1553N;
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(i11);
        long j8 = this.f1554O;
        AbstractC2987b.v0(parcel, 10, 8);
        parcel.writeLong(j8);
        boolean z7 = this.f1555P;
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(z7 ? 1 : 0);
        AbstractC2987b.p0(iX, parcel);
    }
}
