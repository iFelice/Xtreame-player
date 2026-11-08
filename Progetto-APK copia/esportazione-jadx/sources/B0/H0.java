package B0;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class H0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final H0 f720f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z4.L f721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f723c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f724d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f725e;

    static {
        G0 g8 = new G0();
        g8.f714a = z4.L.q(2, 1, 5);
        g8.f715b = true;
        g8.f716c = true;
        g8.f717d = true;
        g8.f718e = true;
        f720f = new H0(g8);
    }

    public H0(G0 g8) {
        this.f721a = g8.f714a;
        this.f722b = g8.f715b;
        this.f723c = g8.f716c;
        this.f724d = g8.f717d;
        this.f725e = g8.f718e;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof H0)) {
            return false;
        }
        H0 h8 = (H0) obj;
        return this.f721a.equals(h8.f721a) && this.f723c == h8.f723c && this.f722b == h8.f722b && this.f724d == h8.f724d && this.f725e == h8.f725e;
    }

    public final int hashCode() {
        return Objects.hash(this.f721a, null, null, Boolean.valueOf(this.f722b), Boolean.valueOf(this.f723c), Boolean.valueOf(this.f724d), Boolean.valueOf(this.f725e));
    }
}
