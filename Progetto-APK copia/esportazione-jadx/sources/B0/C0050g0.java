package B0;

import O0.C0300y;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;

/* JADX INFO: renamed from: B0.g0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0050g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0300y f950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f952c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f954e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f955f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f956g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f957h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f958i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f959j;

    public C0050g0(C0300y c0300y, long j8, long j9, long j10, long j11, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11) {
        boolean z12 = false;
        H1.d(!z11 || z9);
        H1.d(!z10 || z9);
        if (!z8 || (!z9 && !z10 && !z11)) {
            z12 = true;
        }
        H1.d(z12);
        this.f950a = c0300y;
        this.f951b = j8;
        this.f952c = j9;
        this.f953d = j10;
        this.f954e = j11;
        this.f955f = z7;
        this.f956g = z8;
        this.f957h = z9;
        this.f958i = z10;
        this.f959j = z11;
    }

    public final C0050g0 a(long j8) {
        if (j8 == this.f952c) {
            return this;
        }
        return new C0050g0(this.f950a, this.f951b, j8, this.f953d, this.f954e, this.f955f, this.f956g, this.f957h, this.f958i, this.f959j);
    }

    public final C0050g0 b(long j8) {
        if (j8 == this.f951b) {
            return this;
        }
        return new C0050g0(this.f950a, j8, this.f952c, this.f953d, this.f954e, this.f955f, this.f956g, this.f957h, this.f958i, this.f959j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0050g0.class != obj.getClass()) {
            return false;
        }
        C0050g0 c0050g0 = (C0050g0) obj;
        return this.f951b == c0050g0.f951b && this.f952c == c0050g0.f952c && this.f953d == c0050g0.f953d && this.f954e == c0050g0.f954e && this.f955f == c0050g0.f955f && this.f956g == c0050g0.f956g && this.f957h == c0050g0.f957h && this.f958i == c0050g0.f958i && this.f959j == c0050g0.f959j && Objects.equals(this.f950a, c0050g0.f950a);
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f950a.hashCode() + 527) * 31) + ((int) this.f951b)) * 31) + ((int) this.f952c)) * 31) + ((int) this.f953d)) * 31) + ((int) this.f954e)) * 31) + (this.f955f ? 1 : 0)) * 31) + (this.f956g ? 1 : 0)) * 31) + (this.f957h ? 1 : 0)) * 31) + (this.f958i ? 1 : 0)) * 31) + (this.f959j ? 1 : 0);
    }
}
