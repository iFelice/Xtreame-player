package p155t6;

import java.io.Serializable;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f30311G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f30312H;

    public c(Object obj, Object obj2) {
        this.f30311G = obj;
        this.f30312H = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return q0.c(this.f30311G, cVar.f30311G) && q0.c(this.f30312H, cVar.f30312H);
    }

    public final int hashCode() {
        Object obj = this.f30311G;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f30312H;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f30311G + ", " + this.f30312H + ')';
    }
}
