package B0;

import java.util.Objects;

/* JADX INFO: renamed from: B0.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0044d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f923c;

    public C0044d0(C0042c0 c0042c0) {
        this.f921a = c0042c0.f917a;
        this.f922b = c0042c0.f918b;
        this.f923c = c0042c0.f919c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0044d0)) {
            return false;
        }
        C0044d0 c0044d0 = (C0044d0) obj;
        return this.f921a == c0044d0.f921a && this.f922b == c0044d0.f922b && this.f923c == c0044d0.f923c;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f921a), Float.valueOf(this.f922b), Long.valueOf(this.f923c));
    }
}
