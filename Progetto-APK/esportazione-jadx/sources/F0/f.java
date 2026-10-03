package F0;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f3044c;

    public f(String str, String str2, String str3) {
        this.f3042a = str;
        this.f3043b = str2;
        this.f3044c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        return Objects.equals(this.f3042a, fVar.f3042a) && Objects.equals(this.f3043b, fVar.f3043b) && Objects.equals(this.f3044c, fVar.f3044c);
    }

    public final int hashCode() {
        int iHashCode = this.f3042a.hashCode() * 31;
        String str = this.f3043b;
        int iHashCode2 = (iHashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f3044c;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
