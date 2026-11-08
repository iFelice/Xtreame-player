package p190y4;

import a7.b;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class w implements t, Serializable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f31450G;

    public w(Object obj) {
        this.f31450G = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof w) {
            return b.c(this.f31450G, ((w) obj).f31450G);
        }
        return false;
    }

    @Override // p190y4.t
    public final Object get() {
        return this.f31450G;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31450G});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + this.f31450G + ")";
    }
}
