package y2;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L2.g f31365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Executor f31366b;

    public r(L2.g gVar, Executor executor) {
        this.f31365a = gVar;
        this.f31366b = executor;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof r) {
            return this.f31365a.equals(((r) obj).f31365a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f31365a.hashCode();
    }
}
