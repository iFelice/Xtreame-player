package X0;

import W0.C0380m;
import W0.D;
import W0.F;
import W0.L;
import W0.q;
import W0.s;
import W0.t;
import W0.u;
import W0.w;
import W0.x;
import com.google.android.gms.internal.measurement.H1;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.M;
import p117p0.y;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public final class a implements s {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int[] f7505s = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int[] f7506t = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final byte[] f7507u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final byte[] f7508v;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final q f7511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f7513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f7514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f7515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f7516h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f7518j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f7519k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public u f7520l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public L f7521m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public L f7522n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public F f7523o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f7524p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f7525q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f7526r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7510b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f7509a = new byte[1];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f7517i = -1;

    static {
        String str = M.f28050a;
        Charset charset = StandardCharsets.UTF_8;
        f7507u = "#!AMR\n".getBytes(charset);
        f7508v = "#!AMR-WB\n".getBytes(charset);
    }

    public a() {
        q qVar = new q();
        this.f7511c = qVar;
        this.f7522n = qVar;
    }

    public final int a(t tVar) throws P {
        boolean z7;
        tVar.m();
        byte[] bArr = this.f7509a;
        tVar.c(0, bArr, 1);
        byte b8 = bArr[0];
        if ((b8 & 131) > 0) {
            throw P.a("Invalid padding bits for frame header " + ((int) b8), null);
        }
        int i8 = (b8 >> 3) & 15;
        if (i8 >= 0 && i8 <= 15 && (((z7 = this.f7512d) && (i8 < 10 || i8 > 13)) || (!z7 && (i8 < 12 || i8 > 14)))) {
            return z7 ? f7506t[i8] : f7505s[i8];
        }
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(this.f7512d ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i8);
        throw P.a(sb.toString(), null);
    }

    public final boolean c(t tVar) {
        tVar.m();
        byte[] bArr = f7507u;
        byte[] bArr2 = new byte[bArr.length];
        tVar.c(0, bArr2, bArr.length);
        if (Arrays.equals(bArr2, bArr)) {
            this.f7512d = false;
            tVar.n(bArr.length);
            return true;
        }
        tVar.m();
        byte[] bArr3 = f7508v;
        byte[] bArr4 = new byte[bArr3.length];
        tVar.c(0, bArr4, bArr3.length);
        if (!Arrays.equals(bArr4, bArr3)) {
            return false;
        }
        this.f7512d = true;
        tVar.n(bArr3.length);
        return true;
    }

    @Override // W0.s
    public final void d(u uVar) {
        this.f7520l = uVar;
        L lT = uVar.t(0, 1);
        this.f7521m = lT;
        this.f7522n = lT;
        uVar.j();
    }

    @Override // W0.s
    public final boolean g(t tVar) {
        return c(tVar);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00de  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f6  */
    @Override // W0.s
    public final int h(t tVar, w wVar) throws P {
        int i8;
        int i9;
        int iF;
        int i10;
        H1.j(this.f7521m);
        String str = M.f28050a;
        if (tVar.r() == 0 && !c(tVar)) {
            throw P.a("Could not find AMR header.", null);
        }
        if (!this.f7526r) {
            this.f7526r = true;
            boolean z7 = this.f7512d;
            String str2 = z7 ? "audio/amr-wb" : "audio/amr";
            String str3 = z7 ? "audio/amr-wb" : "audio/3gpp";
            int i11 = z7 ? 16000 : 8000;
            int i12 = z7 ? f7506t[8] : f7505s[7];
            L l4 = this.f7521m;
            C3135s c3135s = new C3135s();
            c3135s.f26995m = O.p(str2);
            c3135s.f26996n = O.p(str3);
            c3135s.f26997o = i12;
            c3135s.f26973F = 1;
            c3135s.f26974G = i11;
            l4.b(new C3136t(c3135s));
        }
        if (this.f7515g == 0) {
            try {
                int iA = a(tVar);
                this.f7514f = iA;
                this.f7515g = iA;
                if (this.f7517i == -1) {
                    this.f7516h = tVar.r();
                    this.f7517i = this.f7514f;
                }
                if (this.f7517i == this.f7514f) {
                    this.f7518j++;
                }
                F f8 = this.f7523o;
                if (f8 instanceof D) {
                    D d6 = (D) f8;
                    long j8 = this.f7519k + this.f7513e + 20000;
                    long jR = tVar.r() + ((long) this.f7514f);
                    y yVar = d6.f7322b;
                    int i13 = yVar.f28127a;
                    if (i13 == 0 || j8 - yVar.c(i13 - 1) >= 100000) {
                        d6.b(j8, jR);
                    }
                    if (this.f7524p && Math.abs(this.f7525q - j8) < 20000) {
                        this.f7524p = false;
                        this.f7522n = this.f7521m;
                    }
                }
                iF = this.f7522n.f(tVar, this.f7515g, true);
                if (iF == -1) {
                    i8 = -1;
                } else {
                    i10 = this.f7515g - iF;
                    this.f7515g = i10;
                    if (i10 <= 0) {
                        this.f7522n.d(this.f7519k + this.f7513e, 1, this.f7514f, 0, null);
                        this.f7513e += 20000;
                    }
                    i8 = 0;
                }
            } catch (EOFException unused) {
            }
        } else {
            iF = this.f7522n.f(tVar, this.f7515g, true);
            if (iF == -1) {
                i8 = -1;
            } else {
                i10 = this.f7515g - iF;
                this.f7515g = i10;
                if (i10 <= 0) {
                    this.f7522n.d(this.f7519k + this.f7513e, 1, this.f7514f, 0, null);
                    this.f7513e += 20000;
                }
                i8 = 0;
            }
        }
        long j9 = tVar.j();
        if (this.f7523o == null) {
            int i14 = this.f7510b;
            if ((i14 & 4) != 0) {
                this.f7523o = new D(-9223372036854775807L, new long[]{this.f7516h}, new long[]{0});
            } else if ((i14 & 1) == 0 || !((i9 = this.f7517i) == -1 || i9 == this.f7514f)) {
                this.f7523o = new x(-9223372036854775807L);
            } else if (this.f7518j >= 20 || i8 == -1) {
                this.f7523o = new C0380m((int) ((((long) i9) * 8000000) / 20000), i9, j9, this.f7516h, (i14 & 2) != 0);
                this.f7521m.getClass();
            }
            F f9 = this.f7523o;
            if (f9 != null) {
                this.f7520l.r(f9);
            }
        }
        if (i8 == -1) {
            F f10 = this.f7523o;
            if (f10 instanceof D) {
                ((D) f10).f7323c = this.f7519k + this.f7513e;
                this.f7520l.r(f10);
                this.f7521m.getClass();
            }
        }
        return i8;
    }

    @Override // W0.s
    public final void i(long j8, long j9) {
        this.f7513e = 0L;
        this.f7514f = 0;
        this.f7515g = 0;
        this.f7525q = j9;
        F f8 = this.f7523o;
        if (!(f8 instanceof D)) {
            if (j8 == 0 || !(f8 instanceof C0380m)) {
                this.f7519k = 0L;
                return;
            } else {
                C0380m c0380m = (C0380m) f8;
                this.f7519k = (Math.max(0L, j8 - c0380m.f7435b) * 8000000) / ((long) c0380m.f7438e);
                return;
            }
        }
        D d6 = (D) f8;
        y yVar = d6.f7322b;
        long jC = yVar.f28127a == 0 ? -9223372036854775807L : yVar.c(M.b(d6.f7321a, j8));
        this.f7519k = jC;
        if (Math.abs(this.f7525q - jC) < 20000) {
            return;
        }
        this.f7524p = true;
        this.f7522n = this.f7511c;
    }

    @Override // W0.s
    public final List j() {
        z4.F f8 = H.f31804H;
        return d0.f31844K;
    }

    @Override // W0.s
    public final s b() {
        return this;
    }

    @Override // W0.s
    public final void release() {
    }
}
