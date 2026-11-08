package O0;

import android.net.Uri;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3120c;
import p094m0.C3140x;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;

/* JADX INFO: loaded from: classes.dex */
public final class Y extends f0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Object f5168n = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f5169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f5170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f5171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f5172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f5173f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f5174g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f5175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f5176i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f5177j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f5178k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final p094m0.I f5179l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p094m0.D f5180m;

    static {
        C3140x c3140x = new C3140x();
        c3140x.f27066a = "SinglePeriodTimeline";
        c3140x.f27067b = Uri.EMPTY;
        c3140x.a();
    }

    public Y(long j8, long j9, long j10, long j11, long j12, long j13, boolean z7, boolean z8, boolean z9, F.i iVar, p094m0.I i8, p094m0.D d6) {
        this.f5169b = j8;
        this.f5170c = j9;
        this.f5171d = j10;
        this.f5172e = j11;
        this.f5173f = j12;
        this.f5174g = j13;
        this.f5175h = z7;
        this.f5176i = z8;
        this.f5177j = z9;
        this.f5178k = iVar;
        i8.getClass();
        this.f5179l = i8;
        this.f5180m = d6;
    }

    @Override // p094m0.f0
    public final int b(Object obj) {
        return f5168n.equals(obj) ? 0 : -1;
    }

    @Override // p094m0.f0
    public final d0 g(int i8, d0 d0Var, boolean z7) {
        H1.e(i8, 1);
        Object obj = z7 ? f5168n : null;
        long j8 = -this.f5173f;
        d0Var.getClass();
        C3120c c3120c = C3120c.f26819c;
        d0Var.f26825a = null;
        d0Var.f26826b = obj;
        d0Var.f26827c = 0;
        d0Var.f26828d = this.f5171d;
        d0Var.f26829e = j8;
        d0Var.f26831g = c3120c;
        d0Var.f26830f = false;
        return d0Var;
    }

    @Override // p094m0.f0
    public final int i() {
        return 1;
    }

    @Override // p094m0.f0
    public final Object m(int i8) {
        H1.e(i8, 1);
        return f5168n;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[PHI: r1
      0x002c: PHI (r1v2 long) = (r1v1 long), (r1v1 long), (r1v1 long), (r1v6 long) binds: [B:3:0x000c, B:5:0x0010, B:7:0x0016, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p094m0.f0
    public final e0 n(int i8, e0 e0Var, long j8) {
        long j9;
        H1.e(i8, 1);
        long j10 = this.f5174g;
        boolean z7 = this.f5176i;
        if (!z7 || this.f5177j || j8 == 0) {
            j9 = j10;
        } else {
            long j11 = this.f5172e;
            if (j11 != -9223372036854775807L) {
                j10 += j8;
                if (j10 <= j11) {
                    j9 = j10;
                }
            }
            j9 = -9223372036854775807L;
        }
        Object obj = e0.f26832q;
        e0Var.b(this.f5179l, this.f5178k, this.f5169b, this.f5170c, -9223372036854775807L, this.f5175h, z7, this.f5180m, j9, this.f5172e, 0, this.f5173f);
        return e0Var;
    }

    @Override // p094m0.f0
    public final int p() {
        return 1;
    }
}
