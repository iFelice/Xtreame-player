package L1;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4618b;

    public b(String str, boolean z7) {
        q0.h(str, "adsSdkName");
        this.f4617a = str;
        this.f4618b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return q0.c(this.f4617a, bVar.f4617a) && this.f4618b == bVar.f4618b;
    }

    public final int hashCode() {
        return (this.f4617a.hashCode() * 31) + (this.f4618b ? 1231 : 1237);
    }

    public final String toString() {
        return "GetTopicsRequest: adsSdkName=" + this.f4617a + ", shouldRecordObservation=" + this.f4618b;
    }
}
