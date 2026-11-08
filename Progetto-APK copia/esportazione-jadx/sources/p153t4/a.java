package p153t4;

import android.os.Parcelable;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements Parcelable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f30298G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f30299H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f30300I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final String f30301J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final String f30302K;

    public a(int i8, int i9, String str, String str2, String str3) {
        this.f30298G = i8;
        this.f30299H = i9;
        this.f30300I = str;
        this.f30301J = str2;
        this.f30302K = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f30298G == aVar.f30298G && this.f30299H == aVar.f30299H) {
                String str = aVar.f30300I;
                String str2 = this.f30300I;
                if (str2 != null ? str2.equals(str) : str == null) {
                    String str3 = aVar.f30301J;
                    String str4 = this.f30301J;
                    if (str4 != null ? str4.equals(str3) : str3 == null) {
                        String str5 = aVar.f30302K;
                        String str6 = this.f30302K;
                        if (str6 != null ? str6.equals(str5) : str5 == null) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = ((this.f30298G ^ 1000003) * 1000003) ^ this.f30299H;
        String str = this.f30300I;
        int iHashCode = ((i8 * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f30301J;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f30302K;
        return iHashCode2 ^ (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IconClickFallbackImage{width=");
        sb.append(this.f30298G);
        sb.append(", height=");
        sb.append(this.f30299H);
        sb.append(", altText=");
        sb.append(this.f30300I);
        sb.append(", creativeType=");
        sb.append(this.f30301J);
        sb.append(", staticResourceUri=");
        return r.j(sb, this.f30302K, "}");
    }
}
