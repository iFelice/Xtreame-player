package Q0;

import C0.C0083h;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import z4.C3253q;
import z4.C3260y;
import z4.E;
import z4.H;
import z4.b0;
import z4.d0;
import z4.k0;

/* JADX INFO: loaded from: classes.dex */
public final class c implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final C3260y f6007b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f6008a = new ArrayList();

    static {
        b0 b0Var = b0.f31836G;
        C0083h c0083h = new C0083h(8);
        b0Var.getClass();
        C3253q c3253q = new C3253q(c0083h, b0Var);
        k0 k0Var = k0.f31876G;
        C0083h c0083h2 = new C0083h(9);
        k0Var.getClass();
        f6007b = new C3260y(c3253q, new C3253q(c0083h2, k0Var));
    }

    @Override // Q0.a
    public final long a(long j8) {
        int i8 = 0;
        long jMin = -9223372036854775807L;
        while (true) {
            ArrayList arrayList = this.f6008a;
            if (i8 >= arrayList.size()) {
                break;
            }
            long j9 = ((p126q1.a) arrayList.get(i8)).f29532b;
            long j10 = ((p126q1.a) arrayList.get(i8)).f29534d;
            if (j8 < j9) {
                if (jMin != -9223372036854775807L) {
                    jMin = Math.min(jMin, j9);
                    break;
                }
                jMin = j9;
                break;
            }
            if (j8 < j10) {
                jMin = jMin == -9223372036854775807L ? j10 : Math.min(jMin, j10);
            }
            i8++;
        }
        if (jMin != -9223372036854775807L) {
            return jMin;
        }
        return Long.MIN_VALUE;
    }

    @Override // Q0.a
    public final H b(long j8) {
        ArrayList arrayList = this.f6008a;
        if (!arrayList.isEmpty()) {
            if (j8 >= ((p126q1.a) arrayList.get(0)).f29532b) {
                ArrayList arrayList2 = new ArrayList();
                for (int i8 = 0; i8 < arrayList.size(); i8++) {
                    p126q1.a aVar = (p126q1.a) arrayList.get(i8);
                    if (j8 >= aVar.f29532b && j8 < aVar.f29534d) {
                        arrayList2.add(aVar);
                    }
                    if (j8 < aVar.f29532b) {
                        break;
                    }
                }
                d0 d0VarB = H.B(f6007b, arrayList2);
                E eQ = H.q();
                for (int i9 = 0; i9 < d0VarB.size(); i9++) {
                    eQ.k0(((p126q1.a) d0VarB.get(i9)).f29531a);
                }
                return eQ.m0();
            }
        }
        return H.w();
    }

    @Override // Q0.a
    public final long c(long j8) {
        ArrayList arrayList = this.f6008a;
        if (arrayList.isEmpty()) {
            return -9223372036854775807L;
        }
        if (j8 < ((p126q1.a) arrayList.get(0)).f29532b) {
            return -9223372036854775807L;
        }
        long jMax = ((p126q1.a) arrayList.get(0)).f29532b;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            long j9 = ((p126q1.a) arrayList.get(i8)).f29532b;
            long j10 = ((p126q1.a) arrayList.get(i8)).f29534d;
            if (j10 > j8) {
                if (j9 > j8) {
                    break;
                }
                jMax = Math.max(jMax, j9);
            } else {
                jMax = Math.max(jMax, j10);
            }
        }
        return jMax;
    }

    @Override // Q0.a
    public final void clear() {
        this.f6008a.clear();
    }

    @Override // Q0.a
    public final boolean d(p126q1.a aVar, long j8) {
        long j9 = aVar.f29532b;
        H1.d(j9 != -9223372036854775807L);
        H1.d(aVar.f29533c != -9223372036854775807L);
        boolean z7 = j9 <= j8 && j8 < aVar.f29534d;
        ArrayList arrayList = this.f6008a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (j9 >= ((p126q1.a) arrayList.get(size)).f29532b) {
                arrayList.add(size + 1, aVar);
                return z7;
            }
        }
        arrayList.add(0, aVar);
        return z7;
    }

    @Override // Q0.a
    public final void e(long j8) {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f6008a;
            if (i8 >= arrayList.size()) {
                return;
            }
            long j9 = ((p126q1.a) arrayList.get(i8)).f29532b;
            if (j8 > j9 && j8 > ((p126q1.a) arrayList.get(i8)).f29534d) {
                arrayList.remove(i8);
                i8--;
            } else if (j8 < j9) {
                return;
            }
            i8++;
        }
    }
}
