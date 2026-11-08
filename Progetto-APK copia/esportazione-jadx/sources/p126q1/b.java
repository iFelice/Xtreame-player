package p126q1;

import C0.C0083h;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p117p0.M;
import p117p0.x;
import p190y4.k;
import z4.C3253q;
import z4.H;
import z4.b0;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class b implements d {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public static final C3253q f29535I;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final H f29536G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long[] f29537H;

    static {
        b0 b0Var = b0.f31836G;
        C0083h c0083h = new C0083h(13);
        b0Var.getClass();
        f29535I = new C3253q(c0083h, b0Var);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00b9  */
    public b(d0 d0Var) {
        int i8 = 0;
        long j8 = -9223372036854775807L;
        if (d0Var.size() == 1) {
            a aVar = (a) k.H(d0Var);
            long j9 = aVar.f29532b;
            long j10 = j9 == -9223372036854775807L ? 0L : j9;
            H h8 = aVar.f29531a;
            long j11 = aVar.f29533c;
            if (j11 == -9223372036854775807L) {
                this.f29536G = H.x(h8);
                this.f29537H = new long[]{j10};
                return;
            } else {
                this.f29536G = H.y(h8, H.w());
                this.f29537H = new long[]{j10, j11 + j10};
                return;
            }
        }
        long[] jArr = new long[d0Var.size() * 2];
        this.f29537H = jArr;
        Arrays.fill(jArr, Long.MAX_VALUE);
        ArrayList arrayList = new ArrayList();
        d0 d0VarB = H.B(f29535I, d0Var);
        int i9 = 0;
        while (i8 < d0VarB.size()) {
            a aVar2 = (a) d0VarB.get(i8);
            long j12 = aVar2.f29532b;
            j12 = j12 == j8 ? 0L : j12;
            long j13 = aVar2.f29533c;
            long j14 = j12 + j13;
            H h9 = aVar2.f29531a;
            if (i9 != 0) {
                int i10 = i9 - 1;
                long j15 = this.f29537H[i10];
                if (j15 < j12) {
                    this.f29537H[i9] = j12;
                    arrayList.add(h9);
                    i9++;
                } else if (j15 == j12 && ((H) arrayList.get(i10)).isEmpty()) {
                    arrayList.set(i10, h9);
                } else {
                    x.f("CuesWithTimingSubtitle", "Truncating unsupported overlapping cues.");
                    this.f29537H[i10] = j12;
                    arrayList.set(i10, h9);
                }
            } else {
                this.f29537H[i9] = j12;
                arrayList.add(h9);
                i9++;
            }
            if (j13 != -9223372036854775807L) {
                this.f29537H[i9] = j14;
                arrayList.add(H.w());
                i9++;
            }
            i8++;
            j8 = -9223372036854775807L;
        }
        this.f29536G = H.s(arrayList);
    }

    @Override // p126q1.d
    public final int a(long j8) {
        int iA = M.a(this.f29537H, j8, false);
        if (iA < this.f29536G.size()) {
            return iA;
        }
        return -1;
    }

    @Override // p126q1.d
    public final long b(int i8) {
        H1.d(i8 < this.f29536G.size());
        return this.f29537H[i8];
    }

    @Override // p126q1.d
    public final List c(long j8) {
        int iE = M.e(this.f29537H, j8, false);
        return iE == -1 ? H.w() : (H) this.f29536G.get(iE);
    }

    @Override // p126q1.d
    public final int d() {
        return this.f29536G.size();
    }
}
