package O0;

import B0.C0044d0;
import com.google.android.gms.internal.measurement.H1;
import java.util.List;
import z4.d0;

/* JADX INFO: renamed from: O0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0286j implements W {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final d0 f5215G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f5216H;

    public C0286j(List list, List list2) {
        z4.E eQ = z4.H.q();
        H1.d(list.size() == list2.size());
        for (int i8 = 0; i8 < list.size(); i8++) {
            eQ.g0(new C0285i((W) list.get(i8), (List) list2.get(i8)));
        }
        this.f5215G = eQ.m0();
        this.f5216H = -9223372036854775807L;
    }

    @Override // O0.W
    public final long e() {
        int i8 = 0;
        long jMin = Long.MAX_VALUE;
        while (true) {
            d0 d0Var = this.f5215G;
            if (i8 >= d0Var.size()) {
                break;
            }
            long jE = ((C0285i) d0Var.get(i8)).e();
            if (jE != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jE);
            }
            i8++;
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // O0.W
    public final boolean g(C0044d0 c0044d0) {
        boolean zG;
        boolean z7 = false;
        do {
            long jE = e();
            if (jE == Long.MIN_VALUE) {
                break;
            }
            int i8 = 0;
            zG = false;
            while (true) {
                d0 d0Var = this.f5215G;
                if (i8 >= d0Var.size()) {
                    break;
                }
                long jE2 = ((C0285i) d0Var.get(i8)).e();
                boolean z8 = jE2 != Long.MIN_VALUE && jE2 <= c0044d0.f921a;
                if (jE2 == jE || z8) {
                    zG |= ((C0285i) d0Var.get(i8)).g(c0044d0);
                }
                i8++;
            }
            z7 |= zG;
        } while (zG);
        return z7;
    }

    @Override // O0.W
    public final boolean k() {
        int i8 = 0;
        while (true) {
            d0 d0Var = this.f5215G;
            if (i8 >= d0Var.size()) {
                return false;
            }
            if (((C0285i) d0Var.get(i8)).k()) {
                return true;
            }
            i8++;
        }
    }

    @Override // O0.W
    public final long u() {
        int i8 = 0;
        long jMin = Long.MAX_VALUE;
        long jMin2 = Long.MAX_VALUE;
        while (true) {
            d0 d0Var = this.f5215G;
            if (i8 >= d0Var.size()) {
                break;
            }
            C0285i c0285i = (C0285i) d0Var.get(i8);
            long jU = c0285i.u();
            if ((c0285i.b().contains(1) || c0285i.b().contains(2) || c0285i.b().contains(4)) && jU != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jU);
            }
            if (jU != Long.MIN_VALUE) {
                jMin2 = Math.min(jMin2, jU);
            }
            i8++;
        }
        if (jMin != Long.MAX_VALUE) {
            this.f5216H = jMin;
            return jMin;
        }
        if (jMin2 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j8 = this.f5216H;
        return j8 != -9223372036854775807L ? j8 : jMin2;
    }

    @Override // O0.W
    public final void w(long j8) {
        int i8 = 0;
        while (true) {
            d0 d0Var = this.f5215G;
            if (i8 >= d0Var.size()) {
                return;
            }
            ((C0285i) d0Var.get(i8)).w(j8);
            i8++;
        }
    }
}
