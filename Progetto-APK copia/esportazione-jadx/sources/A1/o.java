package A1;

import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.Collections;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class o implements InterfaceC0035j {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final float[] f448l = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final K f449a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.E f450b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean[] f451c = new boolean[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m f452d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x f453e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public n f454f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f455g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f456h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public L f457i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f458j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f459k;

    public o(K k8) {
        this.f449a = k8;
        m mVar = new m();
        mVar.f439e = new byte[128];
        this.f452d = mVar;
        this.f459k = -9223372036854775807L;
        this.f453e = new x(178, 0);
        this.f450b = new p117p0.E();
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        p125q0.p.a(this.f451c);
        m mVar = this.f452d;
        mVar.f435a = false;
        mVar.f437c = 0;
        mVar.f436b = 0;
        n nVar = this.f454f;
        if (nVar != null) {
            nVar.f440a = false;
            nVar.f441b = false;
            nVar.f442c = false;
            nVar.f443d = -1;
        }
        x xVar = this.f453e;
        if (xVar != null) {
            xVar.c();
        }
        this.f455g = 0L;
        this.f459k = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:95:0x0236  */
    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        int i8;
        int i9;
        int i10;
        float f8;
        p117p0.E e9 = e8;
        H1.j(this.f454f);
        H1.j(this.f457i);
        int i11 = e9.f28036b;
        int i12 = e9.f28037c;
        byte[] bArr = e9.f28035a;
        this.f455g += (long) e8.a();
        this.f457i.e(e8.a(), e9);
        while (true) {
            int iB = p125q0.p.b(bArr, i11, i12, this.f451c);
            m mVar = this.f452d;
            x xVar = this.f453e;
            if (iB == i12) {
                if (!this.f458j) {
                    mVar.a(i11, bArr, i12);
                }
                this.f454f.a(i11, bArr, i12);
                if (xVar != null) {
                    xVar.a(i11, bArr, i12);
                    return;
                }
                return;
            }
            int i13 = iB + 3;
            byte b8 = e9.f28035a[i13];
            int i14 = b8 & 255;
            int i15 = iB - i11;
            if (this.f458j) {
                i8 = i12;
                i9 = i13;
            } else {
                if (i15 > 0) {
                    mVar.a(i11, bArr, iB);
                }
                int i16 = i15 < 0 ? -i15 : 0;
                int i17 = mVar.f436b;
                if (i17 != 0) {
                    i9 = i13;
                    if (i17 == 1) {
                        i8 = i12;
                        if (i14 != 181) {
                            p117p0.x.f("H263Reader", "Unexpected start code value");
                            mVar.f435a = false;
                            mVar.f437c = 0;
                            mVar.f436b = 0;
                        } else {
                            mVar.f436b = 2;
                        }
                    } else if (i17 != 2) {
                        i8 = i12;
                        if (i17 != 3) {
                            if (i17 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i14 == 179 || i14 == 181) {
                                mVar.f437c -= i16;
                                mVar.f435a = false;
                                L l4 = this.f457i;
                                int i18 = mVar.f438d;
                                String str = this.f456h;
                                str.getClass();
                                byte[] bArrCopyOf = Arrays.copyOf(mVar.f439e, mVar.f437c);
                                p117p0.D d6 = new p117p0.D(bArrCopyOf, 0, (Object) null);
                                d6.v(i18);
                                d6.v(4);
                                d6.t();
                                d6.u(8);
                                if (d6.h()) {
                                    d6.u(4);
                                    d6.u(3);
                                }
                                int i19 = d6.i(4);
                                if (i19 == 15) {
                                    int i20 = d6.i(8);
                                    int i21 = d6.i(8);
                                    if (i21 == 0) {
                                        p117p0.x.f("H263Reader", "Invalid aspect ratio");
                                        f8 = 1.0f;
                                    } else {
                                        f8 = i20 / i21;
                                    }
                                } else if (i19 < 7) {
                                    f8 = f448l[i19];
                                } else {
                                    p117p0.x.f("H263Reader", "Invalid aspect ratio");
                                    f8 = 1.0f;
                                }
                                if (d6.h()) {
                                    d6.u(2);
                                    d6.u(1);
                                    if (d6.h()) {
                                        d6.u(15);
                                        d6.t();
                                        d6.u(15);
                                        d6.t();
                                        d6.u(15);
                                        d6.t();
                                        d6.u(3);
                                        d6.u(11);
                                        d6.t();
                                        d6.u(15);
                                        d6.t();
                                    }
                                }
                                if (d6.i(2) != 0) {
                                    p117p0.x.f("H263Reader", "Unhandled video object layer shape");
                                }
                                d6.t();
                                int i22 = d6.i(16);
                                d6.t();
                                if (d6.h()) {
                                    if (i22 == 0) {
                                        p117p0.x.f("H263Reader", "Invalid vop_increment_time_resolution");
                                    } else {
                                        int i23 = 0;
                                        for (int i24 = i22 - 1; i24 > 0; i24 >>= 1) {
                                            i23++;
                                        }
                                        d6.u(i23);
                                    }
                                }
                                d6.t();
                                int i25 = d6.i(13);
                                d6.t();
                                int i26 = d6.i(13);
                                d6.t();
                                d6.t();
                                C3135s c3135s = new C3135s();
                                c3135s.f26983a = str;
                                c3135s.f26995m = O.p("video/mp2t");
                                c3135s.f26996n = O.p("video/mp4v-es");
                                c3135s.f27003u = i25;
                                c3135s.f27004v = i26;
                                c3135s.f26968A = f8;
                                c3135s.f26999q = Collections.singletonList(bArrCopyOf);
                                l4.b(new C3136t(c3135s));
                                this.f458j = true;
                            }
                        } else if ((b8 & 240) != 32) {
                            p117p0.x.f("H263Reader", "Unexpected start code value");
                            mVar.f435a = false;
                            mVar.f437c = 0;
                            mVar.f436b = 0;
                        } else {
                            mVar.f438d = mVar.f437c;
                            mVar.f436b = 4;
                        }
                    } else {
                        i8 = i12;
                        if (i14 > 31) {
                            p117p0.x.f("H263Reader", "Unexpected start code value");
                            mVar.f435a = false;
                            mVar.f437c = 0;
                            mVar.f436b = 0;
                        } else {
                            mVar.f436b = 3;
                        }
                    }
                } else {
                    i8 = i12;
                    i9 = i13;
                    if (i14 == 176) {
                        mVar.f436b = 1;
                        mVar.f435a = true;
                    }
                }
                mVar.a(0, m.f434f, 3);
            }
            this.f454f.a(i11, bArr, iB);
            if (xVar == null) {
                e9 = e8;
            } else {
                if (i15 > 0) {
                    xVar.a(i11, bArr, iB);
                    i10 = 0;
                } else {
                    i10 = -i15;
                }
                if (xVar.b(i10)) {
                    int iM = p125q0.p.m(xVar.f598e, xVar.f597d);
                    String str2 = M.f28050a;
                    byte[] bArr2 = xVar.f597d;
                    p117p0.E e10 = this.f450b;
                    e10.J(iM, bArr2);
                    this.f449a.a(this.f459k, e10);
                }
                if (i14 == 178) {
                    e9 = e8;
                    if (e9.f28035a[iB + 2] == 1) {
                        xVar.d(i14);
                    }
                } else {
                    e9 = e8;
                }
            }
            int i27 = i8 - iB;
            this.f454f.b(i27, this.f455g - ((long) i27), this.f458j);
            n nVar = this.f454f;
            long j8 = this.f459k;
            nVar.f443d = i14;
            nVar.f442c = false;
            nVar.f440a = i14 == 182 || i14 == 179;
            nVar.f441b = i14 == 182;
            nVar.f444e = 0;
            nVar.f446g = j8;
            i11 = i9;
            i12 = i8;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f456h = i8.f310e;
        i8.b();
        L lT = uVar.t(i8.f309d, 2);
        this.f457i = lT;
        this.f454f = new n(lT);
        K k8 = this.f449a;
        if (k8 != null) {
            k8.b(uVar, i8);
        }
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
        H1.j(this.f454f);
        if (z7) {
            this.f454f.b(0, this.f455g, this.f458j);
            n nVar = this.f454f;
            nVar.f440a = false;
            nVar.f441b = false;
            nVar.f442c = false;
            nVar.f443d = -1;
        }
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f459k = j8;
    }
}
