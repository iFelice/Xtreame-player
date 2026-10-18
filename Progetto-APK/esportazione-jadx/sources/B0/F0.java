package B0;

import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class F0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC0051h f706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractC0051h f708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f709d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f710e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f711f = false;

    public F0(AbstractC0051h abstractC0051h, AbstractC0051h abstractC0051h2, int i8) {
        this.f706a = abstractC0051h;
        this.f707b = i8;
        this.f708c = abstractC0051h2;
    }

    public static C3136t[] c(R0.t tVar) {
        int length = tVar != null ? ((R0.c) tVar).f6127c.length : 0;
        C3136t[] c3136tArr = new C3136t[length];
        for (int i8 = 0; i8 < length; i8++) {
            tVar.getClass();
            c3136tArr[i8] = ((R0.c) tVar).f6128d[i8];
        }
        return c3136tArr;
    }

    public static boolean h(AbstractC0051h abstractC0051h) {
        return abstractC0051h.getState() != 0;
    }

    public static void l(AbstractC0051h abstractC0051h, long j8) {
        abstractC0051h.setCurrentStreamFinal();
        if (abstractC0051h instanceof Q0.g) {
            Q0.g gVar = (Q0.g) abstractC0051h;
            H1.i(gVar.isCurrentStreamFinal());
            gVar.f6029Y = j8;
        }
    }

    public final void a(AbstractC0051h abstractC0051h, C0065o c0065o) {
        H1.i(this.f706a == abstractC0051h || this.f708c == abstractC0051h);
        if (h(abstractC0051h)) {
            if (abstractC0051h == c0065o.f1041I) {
                c0065o.f1042J = null;
                c0065o.f1041I = null;
                c0065o.f1043K = true;
            }
            if (abstractC0051h.getState() == 2) {
                abstractC0051h.stop();
            }
            abstractC0051h.disable();
        }
    }

    public final int b() {
        boolean zH = h(this.f706a);
        AbstractC0051h abstractC0051h = this.f708c;
        return (zH ? 1 : 0) + ((abstractC0051h == null || !h(abstractC0051h)) ? 0 : 1);
    }

    public final AbstractC0051h d(C0048f0 c0048f0) {
        if (c0048f0 != null) {
            O0.U[] uArr = c0048f0.f928c;
            int i8 = this.f707b;
            if (uArr[i8] != null) {
                AbstractC0051h abstractC0051h = this.f706a;
                if (abstractC0051h.getStream() == uArr[i8]) {
                    return abstractC0051h;
                }
                AbstractC0051h abstractC0051h2 = this.f708c;
                if (abstractC0051h2 != null && abstractC0051h2.getStream() == uArr[i8]) {
                    return abstractC0051h2;
                }
            }
        }
        return null;
    }

    public final boolean e(AbstractC0051h abstractC0051h, C0048f0 c0048f0) {
        if (abstractC0051h == null) {
            return true;
        }
        O0.U[] uArr = c0048f0.f928c;
        int i8 = this.f707b;
        O0.U u7 = uArr[i8];
        if (abstractC0051h.getStream() == null) {
            return true;
        }
        if (abstractC0051h.getStream() == u7) {
            if (u7 == null || abstractC0051h.hasReadStreamToEnd()) {
                return true;
            }
            C0048f0 c0048f1 = c0048f0.f938m;
            if (c0048f0.f932g.f956g && c0048f1 != null && c0048f1.f930e && ((abstractC0051h instanceof Q0.g) || (abstractC0051h instanceof L0.b) || abstractC0051h.getReadingPositionUs() >= c0048f1.e())) {
                return true;
            }
        }
        C0048f0 c0048f2 = c0048f0.f938m;
        return c0048f2 != null && c0048f2.f928c[i8] == abstractC0051h.getStream();
    }

    public final boolean f() {
        int i8 = this.f709d;
        return i8 == 2 || i8 == 4 || i8 == 3;
    }

    public final boolean g() {
        int i8 = this.f709d;
        if (i8 == 0 || i8 == 2 || i8 == 4) {
            return h(this.f706a);
        }
        AbstractC0051h abstractC0051h = this.f708c;
        abstractC0051h.getClass();
        return abstractC0051h.getState() != 0;
    }

    public final void i(boolean z7) {
        if (z7) {
            if (this.f710e) {
                this.f706a.reset();
                this.f710e = false;
                return;
            }
            return;
        }
        if (this.f711f) {
            AbstractC0051h abstractC0051h = this.f708c;
            abstractC0051h.getClass();
            abstractC0051h.reset();
            this.f711f = false;
        }
    }

    public final int j(AbstractC0051h abstractC0051h, C0048f0 c0048f0, R0.y yVar, C0065o c0065o) {
        AbstractC0051h abstractC0051h2;
        int i8;
        if (abstractC0051h == null || abstractC0051h.getState() == 0 || ((abstractC0051h == (abstractC0051h2 = this.f706a) && ((i8 = this.f709d) == 2 || i8 == 4)) || (abstractC0051h == this.f708c && this.f709d == 3))) {
            return 1;
        }
        O0.U stream = abstractC0051h.getStream();
        O0.U[] uArr = c0048f0.f928c;
        int i9 = this.f707b;
        boolean z7 = stream != uArr[i9];
        boolean zB = yVar.b(i9);
        if (zB && !z7) {
            return 1;
        }
        if (!abstractC0051h.isCurrentStreamFinal()) {
            C3136t[] c3136tArrC = c(yVar.f6254c[i9]);
            O0.U u7 = uArr[i9];
            u7.getClass();
            abstractC0051h.replaceStream(c3136tArrC, u7, c0048f0.e(), c0048f0.f941p, c0048f0.f932g.f950a);
            return 3;
        }
        if (!abstractC0051h.isEnded()) {
            return 0;
        }
        a(abstractC0051h, c0065o);
        if (!zB || f()) {
            i(abstractC0051h == abstractC0051h2);
        }
        return 1;
    }

    public final void k() {
        if (!h(this.f706a)) {
            i(true);
        }
        AbstractC0051h abstractC0051h = this.f708c;
        if (abstractC0051h == null || abstractC0051h.getState() != 0) {
            return;
        }
        i(false);
    }

    public final void m() {
        AbstractC0051h abstractC0051h = this.f706a;
        if (abstractC0051h.getState() == 1 && this.f709d != 4) {
            abstractC0051h.start();
            return;
        }
        AbstractC0051h abstractC0051h2 = this.f708c;
        if (abstractC0051h2 == null || abstractC0051h2.getState() != 1 || this.f709d == 3) {
            return;
        }
        abstractC0051h2.start();
    }
}
