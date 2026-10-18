package K3;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0228a f4471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final J3.d f4472b;

    public /* synthetic */ A(C0228a c0228a, J3.d dVar) {
        this.f4471a = c0228a;
        this.f4472b = dVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof A)) {
            A a8 = (A) obj;
            if (U4.a.c(this.f4471a, a8.f4471a) && U4.a.c(this.f4472b, a8.f4472b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f4471a, this.f4472b});
    }

    public final String toString() {
        p096m2.e eVar = new p096m2.e(this);
        eVar.d(this.f4471a, "key");
        eVar.d(this.f4472b, "feature");
        return eVar.toString();
    }
}
