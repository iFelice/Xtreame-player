package F0;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3010a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3011b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3012c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3013d;

    public b(int i8, int i9, String str, String str2) {
        this.f3010a = str;
        this.f3011b = str2;
        this.f3012c = i8;
        this.f3013d = i9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3012c == bVar.f3012c && this.f3013d == bVar.f3013d && Objects.equals(this.f3010a, bVar.f3010a) && Objects.equals(this.f3011b, bVar.f3011b);
    }

    public final int hashCode() {
        return Objects.hash(this.f3010a, this.f3011b, Integer.valueOf(this.f3012c), Integer.valueOf(this.f3013d));
    }
}
