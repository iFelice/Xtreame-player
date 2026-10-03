package z4;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: renamed from: z4.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3253q extends c0 implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final p190y4.h f31893G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final c0 f31894H;

    public C3253q(p190y4.h hVar, c0 c0Var) {
        this.f31893G = hVar;
        this.f31894H = c0Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        p190y4.h hVar = this.f31893G;
        return this.f31894H.compare(hVar.apply(obj), hVar.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3253q)) {
            return false;
        }
        C3253q c3253q = (C3253q) obj;
        return this.f31893G.equals(c3253q.f31893G) && this.f31894H.equals(c3253q.f31894H);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31893G, this.f31894H});
    }

    public final String toString() {
        return this.f31894H + ".onResultOf(" + this.f31893G + ")";
    }
}
