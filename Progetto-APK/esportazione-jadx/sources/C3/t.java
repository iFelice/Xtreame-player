package C3;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class t extends M3.a {
    public static final Parcelable.Creator<t> CREATOR = new H(12);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public float f1597G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f1598H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f1599I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f1600J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f1601K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f1602L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f1603M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f1604N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f1605O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f1606P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f1607Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public String f1608R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public JSONObject f1609S;

    public t(float f8, int i8, int i9, int i10, int i11, int i12, int i13, int i14, String str, int i15, int i16, String str2) {
        this.f1597G = f8;
        this.f1598H = i8;
        this.f1599I = i9;
        this.f1600J = i10;
        this.f1601K = i11;
        this.f1602L = i12;
        this.f1603M = i13;
        this.f1604N = i14;
        this.f1605O = str;
        this.f1606P = i15;
        this.f1607Q = i16;
        this.f1608R = str2;
        if (str2 == null) {
            this.f1609S = null;
            return;
        }
        try {
            this.f1609S = new JSONObject(this.f1608R);
        } catch (JSONException unused) {
            this.f1609S = null;
            this.f1608R = null;
        }
    }

    public static final int l(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static final String n(int i8) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(Color.red(i8)), Integer.valueOf(Color.green(i8)), Integer.valueOf(Color.blue(i8)), Integer.valueOf(Color.alpha(i8)));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        JSONObject jSONObject = this.f1609S;
        boolean z7 = jSONObject == null;
        JSONObject jSONObject2 = tVar.f1609S;
        if (z7 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || P3.d.a(jSONObject, jSONObject2)) && this.f1597G == tVar.f1597G && this.f1598H == tVar.f1598H && this.f1599I == tVar.f1599I && this.f1600J == tVar.f1600J && this.f1601K == tVar.f1601K && this.f1602L == tVar.f1602L && this.f1603M == tVar.f1603M && this.f1604N == tVar.f1604N && H3.a.e(this.f1605O, tVar.f1605O) && this.f1606P == tVar.f1606P && this.f1607Q == tVar.f1607Q;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f1597G), Integer.valueOf(this.f1598H), Integer.valueOf(this.f1599I), Integer.valueOf(this.f1600J), Integer.valueOf(this.f1601K), Integer.valueOf(this.f1602L), Integer.valueOf(this.f1603M), Integer.valueOf(this.f1604N), this.f1605O, Integer.valueOf(this.f1606P), Integer.valueOf(this.f1607Q), String.valueOf(this.f1609S)});
    }

    public final JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fontScale", this.f1597G);
            int i8 = this.f1598H;
            if (i8 != 0) {
                jSONObject.put("foregroundColor", n(i8));
            }
            int i9 = this.f1599I;
            if (i9 != 0) {
                jSONObject.put("backgroundColor", n(i9));
            }
            int i10 = this.f1600J;
            if (i10 == 0) {
                jSONObject.put("edgeType", "NONE");
            } else if (i10 == 1) {
                jSONObject.put("edgeType", "OUTLINE");
            } else if (i10 == 2) {
                jSONObject.put("edgeType", "DROP_SHADOW");
            } else if (i10 == 3) {
                jSONObject.put("edgeType", "RAISED");
            } else if (i10 == 4) {
                jSONObject.put("edgeType", "DEPRESSED");
            }
            int i11 = this.f1601K;
            if (i11 != 0) {
                jSONObject.put("edgeColor", n(i11));
            }
            int i12 = this.f1602L;
            if (i12 == 0) {
                jSONObject.put("windowType", "NONE");
            } else if (i12 == 1) {
                jSONObject.put("windowType", "NORMAL");
            } else if (i12 == 2) {
                jSONObject.put("windowType", "ROUNDED_CORNERS");
            }
            int i13 = this.f1603M;
            if (i13 != 0) {
                jSONObject.put("windowColor", n(i13));
            }
            if (this.f1602L == 2) {
                jSONObject.put("windowRoundedCornerRadius", this.f1604N);
            }
            String str = this.f1605O;
            if (str != null) {
                jSONObject.put("fontFamily", str);
            }
            switch (this.f1606P) {
                case 0:
                    jSONObject.put("fontGenericFamily", "SANS_SERIF");
                    break;
                case 1:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SANS_SERIF");
                    break;
                case 2:
                    jSONObject.put("fontGenericFamily", "SERIF");
                    break;
                case 3:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SERIF");
                    break;
                case 4:
                    jSONObject.put("fontGenericFamily", "CASUAL");
                    break;
                case 5:
                    jSONObject.put("fontGenericFamily", "CURSIVE");
                    break;
                case 6:
                    jSONObject.put("fontGenericFamily", "SMALL_CAPITALS");
                    break;
            }
            int i14 = this.f1607Q;
            if (i14 == 0) {
                jSONObject.put("fontStyle", "NORMAL");
            } else if (i14 == 1) {
                jSONObject.put("fontStyle", "BOLD");
            } else if (i14 == 2) {
                jSONObject.put("fontStyle", "ITALIC");
            } else if (i14 == 3) {
                jSONObject.put("fontStyle", "BOLD_ITALIC");
            }
            JSONObject jSONObject2 = this.f1609S;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i8) {
        JSONObject jSONObject = this.f1609S;
        this.f1608R = jSONObject == null ? null : jSONObject.toString();
        int iX = AbstractC2987b.X(20293, parcel);
        float f8 = this.f1597G;
        AbstractC2987b.v0(parcel, 2, 4);
        parcel.writeFloat(f8);
        int i9 = this.f1598H;
        AbstractC2987b.v0(parcel, 3, 4);
        parcel.writeInt(i9);
        int i10 = this.f1599I;
        AbstractC2987b.v0(parcel, 4, 4);
        parcel.writeInt(i10);
        int i11 = this.f1600J;
        AbstractC2987b.v0(parcel, 5, 4);
        parcel.writeInt(i11);
        int i12 = this.f1601K;
        AbstractC2987b.v0(parcel, 6, 4);
        parcel.writeInt(i12);
        int i13 = this.f1602L;
        AbstractC2987b.v0(parcel, 7, 4);
        parcel.writeInt(i13);
        int i14 = this.f1603M;
        AbstractC2987b.v0(parcel, 8, 4);
        parcel.writeInt(i14);
        int i15 = this.f1604N;
        AbstractC2987b.v0(parcel, 9, 4);
        parcel.writeInt(i15);
        AbstractC2987b.Q(parcel, 10, this.f1605O);
        int i16 = this.f1606P;
        AbstractC2987b.v0(parcel, 11, 4);
        parcel.writeInt(i16);
        int i17 = this.f1607Q;
        AbstractC2987b.v0(parcel, 12, 4);
        parcel.writeInt(i17);
        AbstractC2987b.Q(parcel, 13, this.f1608R);
        AbstractC2987b.p0(iX, parcel);
    }
}
