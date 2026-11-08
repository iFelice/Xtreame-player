package C0;

import O0.C0300y;
import java.util.Objects;
import p094m0.f0;

/* JADX INFO: renamed from: C0.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0077b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f1283a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f0 f1284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0300y f1286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final f0 f1288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C0300y f1290h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f1291i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f1292j;

    public C0077b(long j8, f0 f0Var, int i8, C0300y c0300y, long j9, f0 f0Var2, int i9, C0300y c0300y2, long j10, long j11) {
        this.f1283a = j8;
        this.f1284b = f0Var;
        this.f1285c = i8;
        this.f1286d = c0300y;
        this.f1287e = j9;
        this.f1288f = f0Var2;
        this.f1289g = i9;
        this.f1290h = c0300y2;
        this.f1291i = j10;
        this.f1292j = j11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0077b.class != obj.getClass()) {
            return false;
        }
        C0077b c0077b = (C0077b) obj;
        return this.f1283a == c0077b.f1283a && this.f1285c == c0077b.f1285c && this.f1287e == c0077b.f1287e && this.f1289g == c0077b.f1289g && this.f1291i == c0077b.f1291i && this.f1292j == c0077b.f1292j && Objects.equals(this.f1284b, c0077b.f1284b) && Objects.equals(this.f1286d, c0077b.f1286d) && Objects.equals(this.f1288f, c0077b.f1288f) && Objects.equals(this.f1290h, c0077b.f1290h);
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f1283a), this.f1284b, Integer.valueOf(this.f1285c), this.f1286d, Long.valueOf(this.f1287e), this.f1288f, Integer.valueOf(this.f1289g), this.f1290h, Long.valueOf(this.f1291i), Long.valueOf(this.f1292j));
    }
}
