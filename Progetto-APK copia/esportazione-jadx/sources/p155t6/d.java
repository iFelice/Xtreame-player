package p155t6;

import java.io.Serializable;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Throwable f30313G;

    public d(Throwable th) {
        q0.h(th, "exception");
        this.f30313G = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            if (q0.c(this.f30313G, ((d) obj).f30313G)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f30313G.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f30313G + ')';
    }
}
