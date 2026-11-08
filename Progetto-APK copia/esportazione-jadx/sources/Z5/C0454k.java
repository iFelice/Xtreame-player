package Z5;

import Y5.C0416c;
import java.util.Arrays;

/* JADX INFO: renamed from: Z5.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0454k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f8459a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public C0416c f8460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f8461c;

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0454k)) {
            return false;
        }
        C0454k c0454k = (C0454k) obj;
        if (!this.f8459a.equals(c0454k.f8459a) || !this.f8460b.equals(c0454k.f8460b) || !a7.b.c(this.f8461c, c0454k.f8461c)) {
            return false;
        }
        c0454k.getClass();
        return a7.b.c(null, null);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f8459a, this.f8460b, this.f8461c, null});
    }
}
