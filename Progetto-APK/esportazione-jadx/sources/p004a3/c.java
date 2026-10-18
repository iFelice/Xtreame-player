package p004a3;

import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f8653a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f8654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f8655c;

    public c(long j8, long j9, Set set) {
        this.f8653a = j8;
        this.f8654b = j9;
        this.f8655c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f8653a == cVar.f8653a && this.f8654b == cVar.f8654b && this.f8655c.equals(cVar.f8655c);
    }

    public final int hashCode() {
        long j8 = this.f8653a;
        int i8 = (((int) (j8 ^ (j8 >>> 32))) ^ 1000003) * 1000003;
        long j9 = this.f8654b;
        return this.f8655c.hashCode() ^ ((i8 ^ ((int) ((j9 >>> 32) ^ j9))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f8653a + ", maxAllowedDelay=" + this.f8654b + ", flags=" + this.f8655c + "}";
    }
}
