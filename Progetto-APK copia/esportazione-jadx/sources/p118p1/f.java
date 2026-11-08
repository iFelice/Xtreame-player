package p118p1;

import W0.t;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.M;
import com.google.android.gms.internal.ads.N1;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f28156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f28157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f28158c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f28159d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f28160e;

    public f(int i8) {
        if (i8 != 1) {
            this.f28159d = new g();
            this.f28160e = new E(new byte[65025], 0);
            this.f28156a = -1;
        } else {
            this.f28159d = new N1();
            this.f28160e = new C1534jr(new byte[65025], 0);
            this.f28156a = -1;
        }
    }

    public final int a(int i8) {
        int i9;
        int i10 = 0;
        this.f28157b = 0;
        do {
            int i11 = this.f28157b;
            int i12 = i8 + i11;
            Object obj = this.f28159d;
            if (i12 >= ((g) obj).f28163c) {
                break;
            }
            int[] iArr = ((g) obj).f28166f;
            this.f28157b = i11 + 1;
            i9 = iArr[i11 + i8];
            i10 += i9;
        } while (i9 == 255);
        return i10;
    }

    public final boolean b(t tVar) {
        int i8;
        H1.i(tVar != null);
        boolean z7 = this.f28158c;
        Object obj = this.f28160e;
        if (z7) {
            this.f28158c = false;
            ((E) obj).I(0);
        }
        while (!this.f28158c) {
            int i9 = this.f28156a;
            Object obj2 = this.f28159d;
            if (i9 < 0) {
                g gVar = (g) obj2;
                if (gVar.b(tVar, -1L) && gVar.a(tVar, true)) {
                    int iA = gVar.f28164d;
                    if ((gVar.f28161a & 1) == 1 && ((E) obj).f28037c == 0) {
                        iA += a(0);
                        i8 = this.f28157b;
                    } else {
                        i8 = 0;
                    }
                    try {
                        tVar.n(iA);
                        this.f28156a = i8;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int iA2 = a(this.f28156a);
            int i10 = this.f28156a + this.f28157b;
            if (iA2 > 0) {
                E e8 = (E) obj;
                e8.c(e8.f28037c + iA2);
                try {
                    tVar.readFully(e8.f28035a, e8.f28037c, iA2);
                    e8.K(e8.f28037c + iA2);
                    this.f28158c = ((g) obj2).f28166f[i10 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i10 == ((g) obj2).f28163c) {
                i10 = -1;
            }
            this.f28156a = i10;
        }
        return true;
    }

    public final boolean c(M m7) {
        boolean z7 = this.f28158c;
        Object obj = this.f28160e;
        if (z7) {
            this.f28158c = false;
            ((C1534jr) obj).g(0);
        }
        while (true) {
            if (this.f28158c) {
                return true;
            }
            int i8 = this.f28156a;
            Object obj2 = this.f28159d;
            if (i8 < 0) {
                N1 n7 = (N1) obj2;
                if (n7.b(m7, -1L) && n7.a(m7, true)) {
                    int iD = n7.f14843d;
                    if ((n7.f14840a & 1) == 1 && ((C1534jr) obj).f19517c == 0) {
                        iD += d(0);
                        i8 = this.f28157b;
                    } else {
                        i8 = 0;
                    }
                    try {
                        m7.q(iD);
                        this.f28156a = i8;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int iD2 = d(i8);
            int i9 = this.f28156a + this.f28157b;
            if (iD2 > 0) {
                C1534jr c1534jr = (C1534jr) obj;
                c1534jr.e(c1534jr.f19517c + iD2);
                try {
                    m7.h(c1534jr.f19517c, c1534jr.f19515a, iD2);
                    c1534jr.i(c1534jr.f19517c + iD2);
                    this.f28158c = ((N1) obj2).f14845f[i9 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i9 == ((N1) obj2).f14842c) {
                i9 = -1;
            }
            this.f28156a = i9;
        }
    }

    public final int d(int i8) {
        int i9;
        int i10 = 0;
        this.f28157b = 0;
        do {
            int i11 = this.f28157b;
            int i12 = i8 + i11;
            N1 n7 = (N1) this.f28159d;
            if (i12 >= n7.f14842c) {
                break;
            }
            this.f28157b = i11 + 1;
            i9 = n7.f14845f[i12];
            i10 += i9;
        } while (i9 == 255);
        return i10;
    }
}
