package p096m2;

import com.google.protobuf.U2;
import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;
import p027d2.d;
import p027d2.e;
import p027d2.n;
import p148t.a;
import p156u.h;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27242a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f27243b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27244c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f27245d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f27246e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e f27247f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f27248g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f27249h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f27250i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d f27251j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f27252k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f27253l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f27254m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f27255n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f27256o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final long f27257p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f27258q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final int f27259r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f27260s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f27261t;

    static {
        q0.g(n.f("WorkSpec"), "tagWithPrefix(\"WorkSpec\")");
    }

    public q(String str, int i8, String str2, String str3, e eVar, e eVar2, long j8, long j9, long j10, d dVar, int i9, int i10, long j11, long j12, long j13, long j14, boolean z7, int i11, int i12, int i13) {
        q0.h(str, "id");
        a.f(i8, "state");
        q0.h(str2, "workerClassName");
        q0.h(eVar, "input");
        q0.h(eVar2, "output");
        q0.h(dVar, "constraints");
        a.f(i10, "backoffPolicy");
        a.f(i11, "outOfQuotaPolicy");
        this.f27242a = str;
        this.f27243b = i8;
        this.f27244c = str2;
        this.f27245d = str3;
        this.f27246e = eVar;
        this.f27247f = eVar2;
        this.f27248g = j8;
        this.f27249h = j9;
        this.f27250i = j10;
        this.f27251j = dVar;
        this.f27252k = i9;
        this.f27253l = i10;
        this.f27254m = j11;
        this.f27255n = j12;
        this.f27256o = j13;
        this.f27257p = j14;
        this.f27258q = z7;
        this.f27259r = i11;
        this.f27260s = i12;
        this.f27261t = i13;
    }

    public final long a() {
        int i8;
        if (this.f27243b == 1 && (i8 = this.f27252k) > 0) {
            long j8 = this.f27254m;
            long jScalb = this.f27253l == 2 ? j8 * ((long) i8) : (long) Math.scalb(j8, i8 - 1);
            long j9 = this.f27255n;
            if (jScalb > 18000000) {
                jScalb = 18000000;
            }
            return jScalb + j9;
        }
        boolean zC = c();
        long j10 = this.f27248g;
        long j11 = 0;
        if (!zC) {
            long jCurrentTimeMillis = this.f27255n;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = System.currentTimeMillis();
            }
            return jCurrentTimeMillis + j10;
        }
        int i9 = this.f27260s;
        long j12 = this.f27255n;
        if (i9 == 0) {
            j12 += j10;
        }
        long j13 = this.f27250i;
        long j14 = this.f27249h;
        if (j13 != j14) {
            j11 = i9 == 0 ? ((long) (-1)) * j13 : 0L;
            j12 += j14;
        } else if (i9 != 0) {
            j11 = j14;
        }
        return j12 + j11;
    }

    public final boolean b() {
        return !q0.c(d.f24619i, this.f27251j);
    }

    public final boolean c() {
        return this.f27249h != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return q0.c(this.f27242a, qVar.f27242a) && this.f27243b == qVar.f27243b && q0.c(this.f27244c, qVar.f27244c) && q0.c(this.f27245d, qVar.f27245d) && q0.c(this.f27246e, qVar.f27246e) && q0.c(this.f27247f, qVar.f27247f) && this.f27248g == qVar.f27248g && this.f27249h == qVar.f27249h && this.f27250i == qVar.f27250i && q0.c(this.f27251j, qVar.f27251j) && this.f27252k == qVar.f27252k && this.f27253l == qVar.f27253l && this.f27254m == qVar.f27254m && this.f27255n == qVar.f27255n && this.f27256o == qVar.f27256o && this.f27257p == qVar.f27257p && this.f27258q == qVar.f27258q && this.f27259r == qVar.f27259r && this.f27260s == qVar.f27260s && this.f27261t == qVar.f27261t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v30, types: [int] */
    /* JADX WARN: Type inference failed for: r2v32, types: [int] */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r2v42 */
    public final int hashCode() {
        int iE = U2.e(this.f27244c, (h.b(this.f27243b) + (this.f27242a.hashCode() * 31)) * 31, 31);
        String str = this.f27245d;
        int iHashCode = (this.f27247f.hashCode() + ((this.f27246e.hashCode() + ((iE + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31;
        long j8 = this.f27248g;
        int i8 = (iHashCode + ((int) (j8 ^ (j8 >>> 32)))) * 31;
        long j9 = this.f27249h;
        int i9 = (i8 + ((int) (j9 ^ (j9 >>> 32)))) * 31;
        long j10 = this.f27250i;
        int iB = (h.b(this.f27253l) + ((((this.f27251j.hashCode() + ((i9 + ((int) (j10 ^ (j10 >>> 32)))) * 31)) * 31) + this.f27252k) * 31)) * 31;
        long j11 = this.f27254m;
        int i10 = (iB + ((int) (j11 ^ (j11 >>> 32)))) * 31;
        long j12 = this.f27255n;
        int i11 = (i10 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
        long j13 = this.f27256o;
        int i12 = (i11 + ((int) (j13 ^ (j13 >>> 32)))) * 31;
        long j14 = this.f27257p;
        int i13 = (i12 + ((int) (j14 ^ (j14 >>> 32)))) * 31;
        boolean z7 = this.f27258q;
        ?? r7 = z7;
        if (z7) {
            r7 = 1;
        }
        return ((((h.b(this.f27259r) + ((i13 + r7) * 31)) * 31) + this.f27260s) * 31) + this.f27261t;
    }

    public final String toString() {
        return "{WorkSpec: " + this.f27242a + '}';
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ q(String str, int i8, String str2, String str3, e eVar, e eVar2, long j8, long j9, long j10, d dVar, int i9, int i10, long j11, long j12, long j13, long j14, boolean z7, int i11, int i12, int i13, int i14) {
        e eVar3;
        e eVar4;
        int i15 = (i13 & 2) != 0 ? 1 : i8;
        String str4 = (i13 & 8) != 0 ? null : str3;
        if ((i13 & 16) != 0) {
            e eVar5 = e.f24629c;
            q0.g(eVar5, "EMPTY");
            eVar3 = eVar5;
        } else {
            eVar3 = eVar;
        }
        if ((i13 & 32) != 0) {
            e eVar6 = e.f24629c;
            q0.g(eVar6, "EMPTY");
            eVar4 = eVar6;
        } else {
            eVar4 = eVar2;
        }
        this(str, i15, str2, str4, eVar3, eVar4, (i13 & 64) != 0 ? 0L : j8, (i13 & 128) != 0 ? 0L : j9, (i13 & 256) != 0 ? 0L : j10, (i13 & IMediaList.Event.ItemAdded) != 0 ? d.f24619i : dVar, (i13 & 1024) != 0 ? 0 : i9, (i13 & 2048) != 0 ? 1 : i10, (i13 & 4096) != 0 ? 30000L : j11, (i13 & 8192) != 0 ? 0L : j12, (i13 & Http2.INITIAL_MAX_FRAME_SIZE) != 0 ? 0L : j13, (32768 & i13) != 0 ? -1L : j14, (65536 & i13) != 0 ? false : z7, (131072 & i13) != 0 ? 1 : i11, (i13 & 262144) != 0 ? 0 : i12, 0);
    }
}
