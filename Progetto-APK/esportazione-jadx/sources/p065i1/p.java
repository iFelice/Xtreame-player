package p065i1;

import com.google.protobuf.U2;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class p extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f25552c;

    public p(String str, String str2, String str3) {
        super(str);
        this.f25551b = str2;
        this.f25552c = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        return this.f25537a.equals(pVar.f25537a) && Objects.equals(this.f25551b, pVar.f25551b) && Objects.equals(this.f25552c, pVar.f25552c);
    }

    public final int hashCode() {
        int iE = U2.e(this.f25537a, 527, 31);
        String str = this.f25551b;
        int iHashCode = (iE + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f25552c;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // p065i1.j
    public final String toString() {
        return this.f25537a + ": url=" + this.f25552c;
    }
}
