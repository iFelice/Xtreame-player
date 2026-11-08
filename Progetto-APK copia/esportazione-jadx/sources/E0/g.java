package E0;

import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import p094m0.C3120c;
import p094m0.D;
import p094m0.I;
import p094m0.d0;
import p094m0.e0;
import p094m0.f0;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class g extends f0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2481c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f2482d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2483e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f2484f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f2485g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f2486h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final F0.c f2487i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final I f2488j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final D f2489k;

    public g(long j8, long j9, long j10, int i8, long j11, long j12, long j13, F0.c cVar, I i9, D d6) {
        H1.i(cVar.f3017d == (d6 != null));
        this.f2480b = j8;
        this.f2481c = j9;
        this.f2482d = j10;
        this.f2483e = i8;
        this.f2484f = j11;
        this.f2485g = j12;
        this.f2486h = j13;
        this.f2487i = cVar;
        this.f2488j = i9;
        this.f2489k = d6;
    }

    @Override // p094m0.f0
    public final int b(Object obj) {
        int iIntValue;
        if ((obj instanceof Integer) && (iIntValue = ((Integer) obj).intValue() - this.f2483e) >= 0 && iIntValue < i()) {
            return iIntValue;
        }
        return -1;
    }

    @Override // p094m0.f0
    public final d0 g(int i8, d0 d0Var, boolean z7) {
        H1.e(i8, i());
        F0.c cVar = this.f2487i;
        String str = z7 ? cVar.b(i8).f3049a : null;
        Integer numValueOf = z7 ? Integer.valueOf(this.f2483e + i8) : null;
        long jD = cVar.d(i8);
        long jR = M.R(cVar.b(i8).f3050b - cVar.b(0).f3050b) - this.f2484f;
        d0Var.getClass();
        C3120c c3120c = C3120c.f26819c;
        d0Var.f26825a = str;
        d0Var.f26826b = numValueOf;
        d0Var.f26827c = 0;
        d0Var.f26828d = jD;
        d0Var.f26829e = jR;
        d0Var.f26831g = c3120c;
        d0Var.f26830f = false;
        return d0Var;
    }

    @Override // p094m0.f0
    public final int i() {
        return this.f2487i.f3026m.size();
    }

    @Override // p094m0.f0
    public final Object m(int i8) {
        H1.e(i8, i());
        return Integer.valueOf(this.f2483e + i8);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0027 A[PHI: r7
      0x0027: PHI (r7v6 long) = (r7v0 long), (r7v1 long), (r7v1 long), (r7v1 long) binds: [B:11:0x0025, B:32:0x007a, B:35:0x0091, B:37:0x009b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:18:0x003b A[PHI: r7
      0x003b: PHI (r7v1 long) = (r7v0 long), (r7v2 long) binds: [B:14:0x002e, B:16:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x0066  */
    /* JADX WARN: Code duplicated, block: B:30:0x0074 A[LOOP:1: B:25:0x0063->B:30:0x0074, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x007a A[EDGE_INSN: B:53:0x007a->B:32:0x007a BREAK  A[LOOP:1: B:25:0x0063->B:30:0x0074], SYNTHETIC] */
    @Override // p094m0.f0
    public final e0 n(int i8, e0 e0Var, long j8) {
        long j9;
        long jD;
        int i9;
        List list;
        int size;
        int i10;
        k kVarL;
        long jA;
        H1.e(i8, 1);
        F0.c cVar = this.f2487i;
        boolean z7 = cVar.f3017d && cVar.f3018e != -9223372036854775807L && cVar.f3015b == -9223372036854775807L;
        long j10 = this.f2486h;
        if (!z7) {
            jA = j10;
        } else if (j8 > 0) {
            j10 += j8;
            if (j10 > this.f2485g) {
                jA = -9223372036854775807L;
            } else {
                j9 = this.f2484f + j10;
                jD = cVar.d(0);
                i9 = 0;
                while (i9 < cVar.f3026m.size() - 1 && j9 >= jD) {
                    j9 -= jD;
                    i9++;
                    jD = cVar.d(i9);
                }
                F0.h hVarB = cVar.b(i9);
                list = hVarB.f3051c;
                size = list.size();
                i10 = 0;
                while (true) {
                    if (i10 < size) {
                        i10 = -1;
                        break;
                    }
                    if (((F0.a) list.get(i10)).f3005b == 2) {
                        break;
                    }
                    i10++;
                }
                if (i10 != -1 || (kVarL = ((F0.m) ((F0.a) hVarB.f3051c.get(i10)).f3006c.get(0)).l()) == null || kVarL.i(jD) == 0) {
                    jA = j10;
                } else {
                    jA = (kVarL.a(kVarL.f(j9, jD)) + j10) - j9;
                }
            }
        } else {
            j9 = this.f2484f + j10;
            jD = cVar.d(0);
            i9 = 0;
            while (i9 < cVar.f3026m.size() - 1) {
                j9 -= jD;
                i9++;
                jD = cVar.d(i9);
            }
            F0.h hVarB2 = cVar.b(i9);
            list = hVarB2.f3051c;
            size = list.size();
            i10 = 0;
            while (true) {
                if (i10 < size) {
                    i10 = -1;
                    break;
                }
                if (((F0.a) list.get(i10)).f3005b == 2) {
                    break;
                    break;
                }
                i10++;
            }
            if (i10 != -1) {
                jA = j10;
            } else {
                jA = (kVarL.a(kVarL.f(j9, jD)) + j10) - j9;
            }
        }
        Object obj = e0.f26832q;
        e0Var.b(this.f2488j, cVar, this.f2480b, this.f2481c, this.f2482d, true, cVar.f3017d && cVar.f3018e != -9223372036854775807L && cVar.f3015b == -9223372036854775807L, this.f2489k, jA, this.f2485g, i() - 1, this.f2484f);
        return e0Var;
    }

    @Override // p094m0.f0
    public final int p() {
        return 1;
    }
}
