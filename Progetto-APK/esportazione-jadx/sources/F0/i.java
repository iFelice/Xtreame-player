package F0;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3054b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3055c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f3056d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f3057e;

    public i(String str, String str2, String str3, String str4, String str5) {
        this.f3053a = str;
        this.f3054b = str2;
        this.f3055c = str3;
        this.f3056d = str4;
        this.f3057e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return Objects.equals(this.f3053a, iVar.f3053a) && Objects.equals(this.f3054b, iVar.f3054b) && Objects.equals(this.f3055c, iVar.f3055c) && Objects.equals(this.f3056d, iVar.f3056d) && Objects.equals(this.f3057e, iVar.f3057e);
    }

    public final int hashCode() {
        String str = this.f3053a;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f3054b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f3055c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.f3056d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.f3057e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }
}
