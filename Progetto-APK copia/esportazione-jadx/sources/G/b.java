package G;

import android.graphics.Insets;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f3274e = new b(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f3276b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f3277c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3278d;

    public b(int i8, int i9, int i10, int i11) {
        this.f3275a = i8;
        this.f3276b = i9;
        this.f3277c = i10;
        this.f3278d = i11;
    }

    public static b a(int i8, int i9, int i10, int i11) {
        return (i8 == 0 && i9 == 0 && i10 == 0 && i11 == 0) ? f3274e : new b(i8, i9, i10, i11);
    }

    public final Insets b() {
        return D.g.f(this.f3275a, this.f3276b, this.f3277c, this.f3278d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f3278d == bVar.f3278d && this.f3275a == bVar.f3275a && this.f3277c == bVar.f3277c && this.f3276b == bVar.f3276b;
    }

    public final int hashCode() {
        return (((((this.f3275a * 31) + this.f3276b) * 31) + this.f3277c) * 31) + this.f3278d;
    }

    public final String toString() {
        return "Insets{left=" + this.f3275a + ", top=" + this.f3276b + ", right=" + this.f3277c + ", bottom=" + this.f3278d + '}';
    }
}
