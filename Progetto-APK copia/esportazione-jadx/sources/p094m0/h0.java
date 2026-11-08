package p094m0;

import java.util.Collections;
import java.util.List;
import p117p0.M;
import z4.H;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g0 f26868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final H f26869b;

    static {
        M.L(0);
        M.L(1);
    }

    public h0(g0 g0Var, List list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= g0Var.f26857a)) {
            throw new IndexOutOfBoundsException();
        }
        this.f26868a = g0Var;
        this.f26869b = H.s(list);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h0.class != obj.getClass()) {
            return false;
        }
        h0 h0Var = (h0) obj;
        return this.f26868a.equals(h0Var.f26868a) && this.f26869b.equals(h0Var.f26869b);
    }

    public final int hashCode() {
        return (this.f26869b.hashCode() * 31) + this.f26868a.hashCode();
    }
}
