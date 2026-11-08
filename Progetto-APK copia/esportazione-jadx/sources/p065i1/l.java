package p065i1;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class l extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25540c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f25541d;

    public l(String str, String str2, String str3) {
        super("----");
        this.f25539b = str;
        this.f25540c = str2;
        this.f25541d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return Objects.equals(this.f25540c, lVar.f25540c) && Objects.equals(this.f25539b, lVar.f25539b) && Objects.equals(this.f25541d, lVar.f25541d);
    }

    public final int hashCode() {
        String str = this.f25539b;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f25540c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f25541d;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": domain=" + this.f25539b + ", description=" + this.f25540c;
    }
}
