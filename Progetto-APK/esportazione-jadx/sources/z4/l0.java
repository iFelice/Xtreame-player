package z4;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public final class l0 extends c0 implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final c0 f31878G;

    public l0(c0 c0Var) {
        c0Var.getClass();
        this.f31878G = c0Var;
    }

    @Override // z4.c0
    public final c0 a() {
        return this.f31878G;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.f31878G.compare(obj2, obj);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof l0) {
            return this.f31878G.equals(((l0) obj).f31878G);
        }
        return false;
    }

    public final int hashCode() {
        return -this.f31878G.hashCode();
    }

    public final String toString() {
        return this.f31878G + ".reverse()";
    }
}
