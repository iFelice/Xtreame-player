package p096m2;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27229b;

    public j(String str, int i8) {
        q0.h(str, "workSpecId");
        this.f27228a = str;
        this.f27229b = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return q0.c(this.f27228a, jVar.f27228a) && this.f27229b == jVar.f27229b;
    }

    public final int hashCode() {
        return (this.f27228a.hashCode() * 31) + this.f27229b;
    }

    public final String toString() {
        return "WorkGenerationalId(workSpecId=" + this.f27228a + ", generation=" + this.f27229b + ')';
    }
}
