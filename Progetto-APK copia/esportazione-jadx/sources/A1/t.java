package A1;

import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.Collections;
import p086l.C3051s;
import p094m0.C3126i;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.AbstractC3169g;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class t implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.o f523a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public L f525c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s f526d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f527e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f534l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f528f = new boolean[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final x f529g = new x(32, 0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final x f530h = new x(33, 0);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x f531i = new x(34, 0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final x f532j = new x(39, 0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final x f533k = new x(40, 0);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f535m = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final p117p0.E f536n = new p117p0.E();

    public t(p096m2.o oVar) {
        this.f523a = oVar;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f534l = 0L;
        this.f535m = -9223372036854775807L;
        p125q0.p.a(this.f528f);
        this.f529g.c();
        this.f530h.c();
        this.f531i.c();
        this.f532j.c();
        this.f533k.c();
        ((C3051s) this.f523a.f27239J).c(0);
        s sVar = this.f526d;
        if (sVar != null) {
            sVar.f514e = false;
            sVar.f515f = false;
            sVar.f516g = false;
            sVar.f517h = false;
            sVar.f518i = false;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        int i8;
        int i9;
        H1.j(this.f525c);
        String str = M.f28050a;
        while (e8.a() > 0) {
            int i10 = e8.f28036b;
            int i11 = e8.f28037c;
            byte[] bArr = e8.f28035a;
            this.f534l += (long) e8.a();
            this.f525c.e(e8.a(), e8);
            while (i10 < i11) {
                int iB = p125q0.p.b(bArr, i10, i11, this.f528f);
                if (iB == i11) {
                    g(i10, bArr, i11);
                    return;
                }
                int i12 = (bArr[iB + 3] & 126) >> 1;
                if (iB <= 0 || bArr[iB - 1] != 0) {
                    i8 = iB;
                    i9 = 3;
                } else {
                    i8 = iB - 1;
                    i9 = 4;
                }
                int i13 = i8 - i10;
                if (i13 > 0) {
                    g(i10, bArr, i8);
                }
                int i14 = i11 - i8;
                long j8 = this.f534l - ((long) i14);
                f(i14, i13 < 0 ? -i13 : 0, j8, this.f535m);
                h(i14, i12, j8, this.f535m);
                i10 = i8 + i9;
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f524b = i8.f310e;
        i8.b();
        L lT = uVar.t(i8.f309d, 2);
        this.f525c = lT;
        this.f526d = new s(lT);
        this.f523a.f(uVar, i8);
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
        H1.j(this.f525c);
        String str = M.f28050a;
        if (z7) {
            ((C3051s) this.f523a.f27239J).c(0);
            f(0, 0, this.f534l, this.f535m);
            h(0, 48, this.f534l, this.f535m);
        }
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f535m = j8;
    }

    public final void f(int i8, int i9, long j8, long j9) {
        s sVar = this.f526d;
        boolean z7 = this.f527e;
        if (sVar.f518i && sVar.f515f) {
            sVar.f521l = sVar.f511b;
            sVar.f518i = false;
        } else if (sVar.f516g || sVar.f515f) {
            if (z7 && sVar.f517h) {
                sVar.a(i8 + ((int) (j8 - sVar.f510a)));
            }
            sVar.f519j = sVar.f510a;
            sVar.f520k = sVar.f513d;
            sVar.f521l = sVar.f511b;
            sVar.f517h = true;
        }
        boolean z8 = this.f527e;
        p096m2.o oVar = this.f523a;
        if (!z8) {
            x xVar = this.f529g;
            xVar.b(i9);
            x xVar2 = this.f530h;
            xVar2.b(i9);
            x xVar3 = this.f531i;
            xVar3.b(i9);
            if (xVar.f596c && xVar2.f596c && xVar3.f596c) {
                String str = this.f524b;
                int i10 = xVar.f598e;
                byte[] bArr = new byte[xVar2.f598e + i10 + xVar3.f598e];
                System.arraycopy(xVar.f597d, 0, bArr, 0, i10);
                System.arraycopy(xVar2.f597d, 0, bArr, xVar.f598e, xVar2.f598e);
                System.arraycopy(xVar3.f597d, 0, bArr, xVar.f598e + xVar2.f598e, xVar3.f598e);
                String strA = null;
                p125q0.k kVarI = p125q0.p.i(xVar2.f597d, 3, xVar2.f598e, null);
                p125q0.i iVar = kVarI.f29468b;
                if (iVar != null) {
                    strA = AbstractC3169g.a(iVar.f29456a, iVar.f29457b, iVar.f29458c, iVar.f29459d, iVar.f29460e, iVar.f29461f);
                }
                C3135s c3135s = new C3135s();
                c3135s.f26983a = str;
                c3135s.f26995m = O.p("video/mp2t");
                c3135s.f26996n = O.p("video/hevc");
                c3135s.f26992j = strA;
                c3135s.f27003u = kVarI.f29471e;
                c3135s.f27004v = kVarI.f29472f;
                c3135s.f27005w = kVarI.f29473g;
                c3135s.f27006x = kVarI.f29474h;
                c3135s.f26971D = new C3126i(kVarI.f29477k, kVarI.f29478l, kVarI.f29479m, null, kVarI.f29469c + 8, kVarI.f29470d + 8);
                c3135s.f26968A = kVarI.f29475i;
                c3135s.f26998p = kVarI.f29476j;
                c3135s.f26972E = kVarI.f29467a + 1;
                c3135s.f26999q = Collections.singletonList(bArr);
                C3136t c3136t = new C3136t(c3135s);
                this.f525c.b(c3136t);
                int i11 = c3136t.f27043q;
                p190y4.k.w(i11 != -1);
                ((C3051s) oVar.f27239J).j(i11);
                this.f527e = true;
            }
        }
        x xVar4 = this.f532j;
        boolean zB = xVar4.b(i9);
        p117p0.E e8 = this.f536n;
        if (zB) {
            e8.J(p125q0.p.m(xVar4.f598e, xVar4.f597d), xVar4.f597d);
            e8.M(5);
            ((C3051s) oVar.f27239J).a(j9, e8);
        }
        x xVar5 = this.f533k;
        if (xVar5.b(i9)) {
            e8.J(p125q0.p.m(xVar5.f598e, xVar5.f597d), xVar5.f597d);
            e8.M(5);
            ((C3051s) oVar.f27239J).a(j9, e8);
        }
    }

    public final void g(int i8, byte[] bArr, int i9) {
        s sVar = this.f526d;
        if (sVar.f514e) {
            int i10 = sVar.f512c;
            int i11 = (i8 + 2) - i10;
            if (i11 < i9) {
                sVar.f515f = (bArr[i11] & 128) != 0;
                sVar.f514e = false;
            } else {
                sVar.f512c = (i9 - i8) + i10;
            }
        }
        if (!this.f527e) {
            this.f529g.a(i8, bArr, i9);
            this.f530h.a(i8, bArr, i9);
            this.f531i.a(i8, bArr, i9);
        }
        this.f532j.a(i8, bArr, i9);
        this.f533k.a(i8, bArr, i9);
    }

    public final void h(int i8, int i9, long j8, long j9) {
        s sVar = this.f526d;
        boolean z7 = this.f527e;
        sVar.f515f = false;
        sVar.f516g = false;
        sVar.f513d = j9;
        sVar.f512c = 0;
        sVar.f510a = j8;
        if (i9 >= 32 && i9 != 40) {
            if (sVar.f517h && !sVar.f518i) {
                if (z7) {
                    sVar.a(i8);
                }
                sVar.f517h = false;
            }
            if ((32 <= i9 && i9 <= 35) || i9 == 39) {
                sVar.f516g = !sVar.f518i;
                sVar.f518i = true;
            }
        }
        boolean z8 = i9 >= 16 && i9 <= 21;
        sVar.f511b = z8;
        sVar.f514e = z8 || i9 <= 9;
        if (!this.f527e) {
            this.f529g.d(i9);
            this.f530h.d(i9);
            this.f531i.d(i9);
        }
        this.f532j.d(i9);
        this.f533k.d(i9);
    }
}
