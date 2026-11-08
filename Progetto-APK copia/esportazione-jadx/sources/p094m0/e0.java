package p094m0;

import android.net.Uri;
import com.google.protobuf.U2;
import java.util.Objects;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final Object f26832q = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final I f26833r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f26835b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f26837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f26838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f26839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f26840g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f26841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f26842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public D f26843j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f26844k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f26845l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f26846m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f26847n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f26848o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f26849p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f26834a = f26832q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public I f26836c = f26833r;

    static {
        C3140x c3140x = new C3140x();
        c3140x.f27066a = "androidx.media3.common.Timeline";
        c3140x.f27067b = Uri.EMPTY;
        f26833r = c3140x.a();
        U2.r(1, 2, 3, 4, 5);
        U2.r(6, 7, 8, 9, 10);
        M.L(11);
        M.L(12);
        M.L(13);
    }

    public final boolean a() {
        return this.f26843j != null;
    }

    public final void b(I i8, Object obj, long j8, long j9, long j10, boolean z7, boolean z8, D d6, long j11, long j12, int i9, long j13) {
        E e8;
        this.f26834a = f26832q;
        this.f26836c = i8 != null ? i8 : f26833r;
        this.f26835b = (i8 == null || (e8 = i8.f26702b) == null) ? null : e8.f26681g;
        this.f26837d = obj;
        this.f26838e = j8;
        this.f26839f = j9;
        this.f26840g = j10;
        this.f26841h = z7;
        this.f26842i = z8;
        this.f26843j = d6;
        this.f26845l = j11;
        this.f26846m = j12;
        this.f26847n = 0;
        this.f26848o = i9;
        this.f26849p = j13;
        this.f26844k = false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !e0.class.equals(obj.getClass())) {
            return false;
        }
        e0 e0Var = (e0) obj;
        return Objects.equals(this.f26834a, e0Var.f26834a) && Objects.equals(this.f26836c, e0Var.f26836c) && Objects.equals(this.f26837d, e0Var.f26837d) && Objects.equals(this.f26843j, e0Var.f26843j) && this.f26838e == e0Var.f26838e && this.f26839f == e0Var.f26839f && this.f26840g == e0Var.f26840g && this.f26841h == e0Var.f26841h && this.f26842i == e0Var.f26842i && this.f26844k == e0Var.f26844k && this.f26845l == e0Var.f26845l && this.f26846m == e0Var.f26846m && this.f26847n == e0Var.f26847n && this.f26848o == e0Var.f26848o && this.f26849p == e0Var.f26849p;
    }

    public final int hashCode() {
        int iHashCode = (this.f26836c.hashCode() + ((this.f26834a.hashCode() + 217) * 31)) * 31;
        Object obj = this.f26837d;
        int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
        D d6 = this.f26843j;
        int iHashCode3 = (iHashCode2 + (d6 != null ? d6.hashCode() : 0)) * 31;
        long j8 = this.f26838e;
        int i8 = (iHashCode3 + ((int) (j8 ^ (j8 >>> 32)))) * 31;
        long j9 = this.f26839f;
        int i9 = (i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31;
        long j10 = this.f26840g;
        int i10 = (((((((i9 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.f26841h ? 1 : 0)) * 31) + (this.f26842i ? 1 : 0)) * 31) + (this.f26844k ? 1 : 0)) * 31;
        long j11 = this.f26845l;
        int i11 = (i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f26846m;
        int i12 = (((((i11 + ((int) (j12 ^ (j12 >>> 32)))) * 31) + this.f26847n) * 31) + this.f26848o) * 31;
        long j13 = this.f26849p;
        return i12 + ((int) (j13 ^ (j13 >>> 32)));
    }
}
