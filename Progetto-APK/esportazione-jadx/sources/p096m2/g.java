package p096m2;

import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f27218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27219c;

    public g(String str, int i8, int i9) {
        q0.h(str, "workSpecId");
        this.f27217a = str;
        this.f27218b = i8;
        this.f27219c = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return q0.c(this.f27217a, gVar.f27217a) && this.f27218b == gVar.f27218b && this.f27219c == gVar.f27219c;
    }

    public final int hashCode() {
        return (((this.f27217a.hashCode() * 31) + this.f27218b) * 31) + this.f27219c;
    }

    public final String toString() {
        return "SystemIdInfo(workSpecId=" + this.f27217a + ", generation=" + this.f27218b + ", systemId=" + this.f27219c + ')';
    }
}
