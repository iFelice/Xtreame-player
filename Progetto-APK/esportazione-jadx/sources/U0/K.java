package U0;

import android.os.SystemClock;
import java.util.NoSuchElementException;
import p039f.RunnableC3004t;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.w0;

/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final J f6671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final E f6672b;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f6681k;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C f6673c = new C();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p016c.g f6674d = new p016c.g();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p016c.g f6675e = new p016c.g();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p117p0.z f6676f = new p117p0.z(16);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f6677g = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public w0 f6680j = w0.f27062d;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f6678h = -9223372036854775807L;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f6679i = -9223372036854775807L;

    public K(p096m2.l lVar, E e8) {
        this.f6671a = lVar;
        this.f6672b = e8;
    }

    public final void a(long j8, long j9) {
        while (true) {
            p117p0.z zVar = this.f6676f;
            int i8 = zVar.f28131c;
            if (i8 == 0) {
                return;
            }
            if (i8 == 0) {
                throw new NoSuchElementException();
            }
            long j10 = ((long[]) zVar.f28133e)[zVar.f28129a];
            Long l4 = (Long) this.f6675e.k(j10);
            E e8 = this.f6672b;
            if (l4 != null && l4.longValue() != this.f6681k) {
                this.f6681k = l4.longValue();
                e8.f(2);
            }
            int iA = this.f6672b.a(j10, j8, j9, this.f6681k, false, false, this.f6673c);
            final int i9 = 1;
            J j11 = this.f6671a;
            if (iA == 0 || iA == 1) {
                this.f6678h = j10;
                final int i10 = 0;
                boolean z7 = iA == 0;
                long jE = zVar.e();
                w0 w0Var = (w0) this.f6674d.k(jE);
                if (w0Var != null && !w0Var.equals(w0.f27062d) && !w0Var.equals(this.f6680j)) {
                    this.f6680j = w0Var;
                    p096m2.l lVar = (p096m2.l) j11;
                    lVar.getClass();
                    C3135s c3135s = new C3135s();
                    c3135s.f27003u = w0Var.f27063a;
                    c3135s.f27004v = w0Var.f27064b;
                    c3135s.f26996n = p094m0.O.p("video/raw");
                    lVar.f27231H = new C3136t(c3135s);
                    ((C0338d) lVar.f27232I).f6732N.execute(new RunnableC3004t(29, lVar, w0Var));
                }
                long jNanoTime = z7 ? System.nanoTime() : this.f6673c.f6628b;
                i9 = e8.f6633e == 3 ? 0 : 1;
                e8.f6633e = 3;
                ((p117p0.G) e8.f6640l).getClass();
                e8.f6635g = p117p0.M.R(SystemClock.elapsedRealtime());
                final p096m2.l lVar2 = (p096m2.l) j11;
                if (i9 != 0) {
                    C0338d c0338d = (C0338d) lVar2.f27232I;
                    if (c0338d.f6728J != null) {
                        c0338d.f6732N.execute(new Runnable() { // from class: U0.c
                            @Override // java.lang.Runnable
                            public final void run() {
                                int i11 = i10;
                                p096m2.l lVar3 = lVar2;
                                switch (i11) {
                                    case 0:
                                        ((C0338d) lVar3.f27232I).f6731M.k();
                                        break;
                                    default:
                                        ((C0338d) lVar3.f27232I).f6731M.z();
                                        break;
                                }
                            }
                        });
                    }
                }
                C3136t c3136t = (C3136t) lVar2.f27231H;
                ((C0338d) lVar2.f27232I).f6733O.b(jE, jNanoTime, c3136t == null ? new C3136t(new C3135s()) : c3136t, null);
                ((P) ((C0338d) lVar2.f27232I).f6727I.remove()).a(jNanoTime);
            } else if (iA == 2 || iA == 3) {
                this.f6678h = j10;
                zVar.e();
                final p096m2.l lVar3 = (p096m2.l) j11;
                ((C0338d) lVar3.f27232I).f6732N.execute(new Runnable() { // from class: U0.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i11 = i9;
                        p096m2.l lVar4 = lVar3;
                        switch (i11) {
                            case 0:
                                ((C0338d) lVar4.f27232I).f6731M.k();
                                break;
                            default:
                                ((C0338d) lVar4.f27232I).f6731M.z();
                                break;
                        }
                    }
                });
                ((P) ((C0338d) lVar3.f27232I).f6727I.remove()).skip();
            } else {
                if (iA != 4) {
                    if (iA != 5) {
                        throw new IllegalStateException(String.valueOf(iA));
                    }
                    return;
                }
                this.f6678h = j10;
            }
        }
    }
}
