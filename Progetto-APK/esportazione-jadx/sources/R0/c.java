package R0;

import android.os.SystemClock;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.List;
import p094m0.C3136t;
import p094m0.g0;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final g0 f6125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f6127c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C3136t[] f6128d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f6129e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f6130f;

    public c(g0 g0Var, int[] iArr) {
        int i8 = 0;
        H1.i(iArr.length > 0);
        g0Var.getClass();
        this.f6125a = g0Var;
        int length = iArr.length;
        this.f6126b = length;
        this.f6128d = new C3136t[length];
        for (int i9 = 0; i9 < iArr.length; i9++) {
            this.f6128d[i9] = g0Var.f26860d[iArr[i9]];
        }
        Arrays.sort(this.f6128d, new K.b(3));
        this.f6127c = new int[this.f6126b];
        while (true) {
            int i10 = this.f6126b;
            if (i8 >= i10) {
                this.f6129e = new long[i10];
                return;
            } else {
                this.f6127c[i8] = g0Var.b(this.f6128d[i8]);
                i8++;
            }
        }
    }

    @Override // R0.t
    public int d(long j8, List list) {
        return list.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f6125a.equals(cVar.f6125a) && Arrays.equals(this.f6127c, cVar.f6127c);
    }

    public final int hashCode() {
        if (this.f6130f == 0) {
            this.f6130f = Arrays.hashCode(this.f6127c) + (System.identityHashCode(this.f6125a) * 31);
        }
        return this.f6130f;
    }

    public final boolean i(int i8, long j8) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zP = p(i8, jElapsedRealtime);
        int i9 = 0;
        while (i9 < this.f6126b && !zP) {
            zP = (i9 == i8 || p(i9, jElapsedRealtime)) ? false : true;
            i9++;
        }
        if (!zP) {
            return false;
        }
        long[] jArr = this.f6129e;
        long j9 = jArr[i8];
        String str = M.f28050a;
        long j10 = jElapsedRealtime + j8;
        if (((j8 ^ j10) & (jElapsedRealtime ^ j10)) < 0) {
            j10 = Long.MAX_VALUE;
        }
        jArr[i8] = Math.max(j9, j10);
        return true;
    }

    public final C3136t j(int i8) {
        return this.f6128d[i8];
    }

    public final int k(int i8) {
        return this.f6127c[i8];
    }

    public final C3136t l() {
        return this.f6128d[b()];
    }

    public final g0 m() {
        return this.f6125a;
    }

    public final int n(int i8) {
        for (int i9 = 0; i9 < this.f6126b; i9++) {
            if (this.f6127c[i9] == i8) {
                return i9;
            }
        }
        return -1;
    }

    public final int o(C3136t c3136t) {
        for (int i8 = 0; i8 < this.f6126b; i8++) {
            if (this.f6128d[i8] == c3136t) {
                return i8;
            }
        }
        return -1;
    }

    public final boolean p(int i8, long j8) {
        return this.f6129e[i8] > j8;
    }

    public final int q() {
        return this.f6127c.length;
    }

    @Override // R0.t
    public void c() {
    }

    @Override // R0.t
    public void e() {
    }

    @Override // R0.t
    public void g(float f8) {
    }
}
