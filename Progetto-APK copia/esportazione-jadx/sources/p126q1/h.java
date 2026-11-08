package p126q1;

import B0.C0073x;
import F2.G;
import W0.D;
import W0.L;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.E;
import p117p0.M;
import p190y4.k;
import z4.F;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class h implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m f29541a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3136t f29543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ArrayList f29544d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public L f29547g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f29548h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f29549i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long[] f29550j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f29551k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final G f29542b = new G(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f29546f = M.f28051b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final E f29545e = new E();

    public h(m mVar, C3136t c3136t) {
        C3136t c3136t2;
        this.f29541a = mVar;
        if (c3136t != null) {
            C3135s c3135sA = c3136t.a();
            c3135sA.f26996n = O.p("application/x-media3-cues");
            c3135sA.f26992j = c3136t.f27041o;
            c3135sA.f26979L = mVar.g();
            c3136t2 = new C3136t(c3135sA);
        } else {
            c3136t2 = null;
        }
        this.f29543c = c3136t2;
        this.f29544d = new ArrayList();
        this.f29549i = 0;
        this.f29550j = M.f28052c;
        this.f29551k = -9223372036854775807L;
    }

    public final void a(g gVar) {
        H1.j(this.f29547g);
        byte[] bArr = gVar.f29540H;
        int length = bArr.length;
        E e8 = this.f29545e;
        e8.getClass();
        e8.J(bArr.length, bArr);
        this.f29547g.e(length, e8);
        this.f29547g.d(gVar.f29539G, 1, length, 0, null);
    }

    @Override // W0.s
    public final void d(u uVar) {
        H1.i(this.f29549i == 0);
        L lT = uVar.t(0, 3);
        this.f29547g = lT;
        C3136t c3136t = this.f29543c;
        if (c3136t != null) {
            lT.b(c3136t);
            uVar.j();
            uVar.r(new D(-9223372036854775807L, new long[]{0}, new long[]{0}));
        }
        this.f29549i = 1;
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        return true;
    }

    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        int i8 = this.f29549i;
        H1.i((i8 == 0 || i8 == 5) ? false : true);
        if (this.f29549i == 1) {
            int iY = tVar.j() != -1 ? k.y(tVar.j()) : 1024;
            if (iY > this.f29546f.length) {
                this.f29546f = new byte[iY];
            }
            this.f29548h = 0;
            this.f29549i = 2;
        }
        int i9 = this.f29549i;
        ArrayList arrayList = this.f29544d;
        if (i9 == 2) {
            byte[] bArr = this.f29546f;
            if (bArr.length == this.f29548h) {
                this.f29546f = Arrays.copyOf(bArr, bArr.length + 1024);
            }
            byte[] bArr2 = this.f29546f;
            int i10 = this.f29548h;
            int iQ = tVar.q(bArr2, i10, bArr2.length - i10);
            if (iQ != -1) {
                this.f29548h += iQ;
            }
            long j8 = tVar.j();
            if ((j8 != -1 && this.f29548h == j8) || iQ == -1) {
                try {
                    long j9 = this.f29551k;
                    this.f29541a.b(this.f29546f, 0, this.f29548h, j9 != -9223372036854775807L ? new l(j9, true) : l.f29556c, new C0073x(this, 22));
                    Collections.sort(arrayList);
                    this.f29550j = new long[arrayList.size()];
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        this.f29550j[i11] = ((g) arrayList.get(i11)).f29539G;
                    }
                    this.f29546f = M.f28051b;
                    this.f29549i = 4;
                } catch (RuntimeException e8) {
                    throw P.a("SubtitleParser failed.", e8);
                }
            }
        }
        if (this.f29549i == 3) {
            if (tVar.i(tVar.j() != -1 ? k.y(tVar.j()) : 1024) == -1) {
                long j10 = this.f29551k;
                for (int iE = j10 == -9223372036854775807L ? 0 : M.e(this.f29550j, j10, true); iE < arrayList.size(); iE++) {
                    a((g) arrayList.get(iE));
                }
                this.f29549i = 4;
            }
        }
        return this.f29549i == 4 ? -1 : 0;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        int i8 = this.f29549i;
        H1.i((i8 == 0 || i8 == 5) ? false : true);
        this.f29551k = j9;
        if (this.f29549i == 2) {
            this.f29549i = 1;
        }
        if (this.f29549i == 4) {
            this.f29549i = 3;
        }
    }

    @Override // W0.s
    public final List j() {
        F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final void release() {
        if (this.f29549i == 5) {
            return;
        }
        this.f29541a.a();
        this.f29549i = 5;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }
}
