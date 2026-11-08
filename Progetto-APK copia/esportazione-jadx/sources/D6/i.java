package D6;

import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2434a;

    public i(Class cls) {
        q0.h(cls, "jClass");
        this.f2434a = cls;
    }

    @Override // D6.b
    public final Class a() {
        return this.f2434a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            if (q0.c(this.f2434a, ((i) obj).f2434a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2434a.hashCode();
    }

    public final String toString() {
        return this.f2434a + " (Kotlin reflection is not available)";
    }
}
