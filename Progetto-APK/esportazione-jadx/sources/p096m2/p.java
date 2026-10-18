package p096m2;

import com.google.protobuf.U2;
import p156u.h;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f27240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27241b;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        return q0.c(this.f27240a, pVar.f27240a) && this.f27241b == pVar.f27241b;
    }

    public final int hashCode() {
        return h.b(this.f27241b) + (this.f27240a.hashCode() * 31);
    }

    public final String toString() {
        return "IdAndState(id=" + this.f27240a + ", state=" + U2.D(this.f27241b) + ')';
    }
}
