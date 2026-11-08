package Z6;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f8483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8484b;

    public E(Object... objArr) {
        this.f8483a = objArr;
        this.f8484b = Arrays.hashCode(objArr) + 31;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && E.class == obj.getClass()) {
            return Arrays.deepEquals(this.f8483a, ((E) obj).f8483a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8484b;
    }
}
