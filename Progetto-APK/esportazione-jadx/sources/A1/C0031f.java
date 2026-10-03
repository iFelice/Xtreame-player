package A1;

import W0.AbstractC0368a;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.Arrays;
import java.util.Collections;
import org.videolan.libvlc.interfaces.IMediaList;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p094m0.P;
import p117p0.M;

/* JADX INFO: renamed from: A1.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0031f implements InterfaceC0035j {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final byte[] f360x = {73, 68, 51};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f361a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f366f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f367g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public L f368h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public L f369i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f373m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f374n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f377q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f378r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f380t;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public L f382v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f383w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.D f362b = new p117p0.D(new byte[7], 0, (Object) null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p117p0.E f363c = new p117p0.E(Arrays.copyOf(f360x, 10));

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f375o = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f376p = -1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f379s = -9223372036854775807L;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f381u = -9223372036854775807L;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f370j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f371k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f372l = 256;

    public C0031f(String str, int i8, String str2, boolean z7) {
        this.f361a = z7;
        this.f364d = str;
        this.f365e = i8;
        this.f366f = str2;
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f381u = -9223372036854775807L;
        this.f374n = false;
        this.f370j = 0;
        this.f371k = 0;
        this.f372l = 256;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:115:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:118:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:119:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:121:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:124:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:126:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:128:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:130:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:132:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:133:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:135:0x02f7  */
    /* JADX WARN: Code duplicated, block: B:136:0x0301  */
    /* JADX WARN: Code duplicated, block: B:137:0x030b  */
    /* JADX WARN: Code duplicated, block: B:171:0x02e7 A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v0, types: [p0.E] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) throws P {
        byte[] bArr;
        int i8;
        int i9;
        boolean z7;
        int i10;
        int i11;
        int i12;
        boolean z8 = false;
        int i13 = 7;
        int i14 = 2;
        this.f368h.getClass();
        String str = M.f28050a;
        while (e8.a() > 0) {
            int i15 = this.f370j;
            int i16 = 4;
            p117p0.E e9 = this.f363c;
            p117p0.D d6 = this.f362b;
            if (i15 == 0) {
                byte[] bArr2 = e8.f28035a;
                int i17 = e8.f28036b;
                int i18 = e8.f28037c;
                ?? r7 = z8;
                while (true) {
                    if (i17 < i18) {
                        int i19 = i17 + 1;
                        byte b8 = bArr2[i17];
                        int i20 = b8 & 255;
                        if (this.f372l == 512 && ((65280 | (((byte) i20) & 255)) & 65526) == 65520) {
                            if (!this.f374n) {
                                int i21 = i17 - 1;
                                e8.L(i17);
                                byte[] bArr3 = d6.f28028b;
                                if (e8.a() < 1) {
                                    bArr = bArr2;
                                } else {
                                    e8.j(r7, bArr3, 1);
                                    d6.r(i16);
                                    int i22 = d6.i(1);
                                    int i23 = this.f375o;
                                    if (i23 == -1 || i22 == i23) {
                                        if (this.f376p != -1) {
                                            byte[] bArr4 = d6.f28028b;
                                            if (e8.a() >= 1) {
                                                e8.j(r7, bArr4, 1);
                                                d6.r(i14);
                                                i10 = 4;
                                                if (d6.i(4) != this.f376p) {
                                                    bArr = bArr2;
                                                } else {
                                                    e8.L(i19);
                                                }
                                            }
                                        } else {
                                            i10 = 4;
                                        }
                                        byte[] bArr5 = d6.f28028b;
                                        if (e8.a() >= i10) {
                                            e8.j(r7, bArr5, i10);
                                            d6.r(14);
                                            int i24 = d6.i(13);
                                            if (i24 < 7) {
                                                bArr = bArr2;
                                            } else {
                                                byte[] bArr6 = e8.f28035a;
                                                int i25 = e8.f28037c;
                                                int i26 = i21 + i24;
                                                if (i26 < i25) {
                                                    byte b9 = bArr6[i26];
                                                    bArr = bArr2;
                                                    if (b9 == -1) {
                                                        int i27 = i26 + 1;
                                                        if (i27 != i25) {
                                                            byte b10 = bArr6[i27];
                                                            if (((65280 | (b10 & 255)) & 65526) != 65520 || ((b10 & 8) >> 3) != i22) {
                                                            }
                                                        }
                                                    } else if (b9 == 73 && ((i11 = i26 + 1) == i25 || (bArr6[i11] == 68 && ((i12 = i26 + 2) == i25 || bArr6[i12] == 51)))) {
                                                    }
                                                }
                                                this.f377q = (b8 & 8) >> 3;
                                                if ((b8 & 1) == 0) {
                                                    z7 = true;
                                                } else {
                                                    z7 = false;
                                                }
                                                this.f373m = z7;
                                                if (this.f374n) {
                                                    this.f370j = 3;
                                                    this.f371k = 0;
                                                } else {
                                                    this.f370j = 1;
                                                    this.f371k = 0;
                                                }
                                                e8.L(i19);
                                            }
                                        }
                                    } else {
                                        bArr = bArr2;
                                    }
                                }
                                i8 = this.f372l;
                                i9 = i8 | i20;
                                if (i9 != 329) {
                                    this.f372l = 768;
                                } else if (i9 != 511) {
                                    this.f372l = IMediaList.Event.ItemAdded;
                                } else if (i9 != 836) {
                                    this.f372l = 1024;
                                } else if (i9 != 1075) {
                                    if (i8 != 256) {
                                        this.f372l = 256;
                                    }
                                    bArr2 = bArr;
                                    r7 = 0;
                                    i14 = 2;
                                    i16 = 4;
                                } else {
                                    this.f370j = 2;
                                    this.f371k = 3;
                                    this.f380t = 0;
                                    e9.L(0);
                                    e8.L(i19);
                                }
                                i17 = i19;
                                bArr2 = bArr;
                                r7 = 0;
                                i14 = 2;
                                i16 = 4;
                            }
                            this.f377q = (b8 & 8) >> 3;
                            if ((b8 & 1) == 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                            this.f373m = z7;
                            if (this.f374n) {
                                this.f370j = 1;
                                this.f371k = 0;
                            } else {
                                this.f370j = 3;
                                this.f371k = 0;
                            }
                            e8.L(i19);
                        } else {
                            bArr = bArr2;
                            i8 = this.f372l;
                            i9 = i8 | i20;
                            if (i9 != 329) {
                                this.f372l = 768;
                            } else if (i9 != 511) {
                                this.f372l = IMediaList.Event.ItemAdded;
                            } else if (i9 != 836) {
                                this.f372l = 1024;
                            } else if (i9 != 1075) {
                                if (i8 != 256) {
                                    this.f372l = 256;
                                }
                                bArr2 = bArr;
                                r7 = 0;
                                i14 = 2;
                                i16 = 4;
                            } else {
                                this.f370j = 2;
                                this.f371k = 3;
                                this.f380t = 0;
                                e9.L(0);
                                e8.L(i19);
                            }
                            i17 = i19;
                            bArr2 = bArr;
                            r7 = 0;
                            i14 = 2;
                            i16 = 4;
                        }
                    } else {
                        e8.L(i17);
                    }
                    z8 = false;
                    i13 = 7;
                    i14 = 2;
                }
            } else if (i15 != 1) {
                if (i15 == i14) {
                    byte[] bArr7 = e9.f28035a;
                    int iMin = Math.min(e8.a(), 10 - this.f371k);
                    e8.j(this.f371k, bArr7, iMin);
                    int i28 = this.f371k + iMin;
                    this.f371k = i28;
                    if (i28 == 10) {
                        this.f369i.e(10, e9);
                        e9.L(6);
                        L l4 = this.f369i;
                        int iY = e9.y() + 10;
                        this.f370j = 4;
                        this.f371k = 10;
                        this.f382v = l4;
                        this.f383w = 0L;
                        this.f380t = iY;
                    }
                } else if (i15 == 3) {
                    int i29 = this.f373m ? 7 : 5;
                    byte[] bArr8 = d6.f28028b;
                    int iMin2 = Math.min(e8.a(), i29 - this.f371k);
                    e8.j(this.f371k, bArr8, iMin2);
                    int i30 = this.f371k + iMin2;
                    this.f371k = i30;
                    if (i30 == i29) {
                        d6.r(z8 ? 1 : 0);
                        if (this.f378r) {
                            d6.u(10);
                        } else {
                            int i31 = d6.i(i14) + 1;
                            if (i31 != i14) {
                                p117p0.x.f("AdtsReader", "Detected audio object type: " + i31 + ", but assuming AAC LC.");
                                i31 = 2;
                            }
                            d6.u(5);
                            int i32 = d6.i(3);
                            int i33 = this.f376p;
                            byte b11 = (byte) (((i31 << 3) & 248) | ((i33 >> 1) & i13));
                            byte b12 = (byte) (((i32 << 3) & 120) | ((i33 << i13) & 128));
                            byte[] bArr9 = new byte[i14];
                            bArr9[z8 ? 1 : 0] = b11;
                            bArr9[1] = b12;
                            W0.r rVarG = AbstractC0368a.g(new p117p0.D(bArr9, z8 ? 1 : 0, (Object) null), z8);
                            C3135s c3135s = new C3135s();
                            c3135s.f26983a = this.f367g;
                            c3135s.f26995m = O.p(this.f366f);
                            c3135s.f26996n = O.p("audio/mp4a-latm");
                            c3135s.f26992j = rVarG.f7454a;
                            c3135s.f26973F = rVarG.f7456c;
                            c3135s.f26974G = rVarG.f7455b;
                            c3135s.f26999q = Collections.singletonList(bArr9);
                            c3135s.f26986d = this.f364d;
                            c3135s.f26988f = this.f365e;
                            C3136t c3136t = new C3136t(c3135s);
                            this.f379s = 1024000000 / ((long) c3136t.f27017H);
                            this.f368h.b(c3136t);
                            this.f378r = true;
                        }
                        d6.u(4);
                        int i34 = d6.i(13);
                        int i35 = i34 - 7;
                        if (this.f373m) {
                            i35 = i34 - 9;
                        }
                        L l8 = this.f368h;
                        long j8 = this.f379s;
                        this.f370j = 4;
                        this.f371k = z8 ? 1 : 0;
                        this.f382v = l8;
                        this.f383w = j8;
                        this.f380t = i35;
                    }
                } else {
                    if (i15 != 4) {
                        throw new IllegalStateException();
                    }
                    int iMin3 = Math.min(e8.a(), this.f380t - this.f371k);
                    this.f382v.e(iMin3, e8);
                    int i36 = this.f371k + iMin3;
                    this.f371k = i36;
                    if (i36 == this.f380t) {
                        H1.i(this.f381u != -9223372036854775807L);
                        this.f382v.d(this.f381u, 1, this.f380t, 0, null);
                        this.f381u += this.f383w;
                        this.f370j = z8 ? 1 : 0;
                        this.f371k = z8 ? 1 : 0;
                        this.f372l = 256;
                    }
                }
            } else if (e8.a() != 0) {
                d6.f28028b[z8 ? 1 : 0] = e8.f28035a[e8.f28036b];
                d6.r(i14);
                int i37 = d6.i(4);
                int i38 = this.f376p;
                if (i38 == -1 || i37 == i38) {
                    if (!this.f374n) {
                        this.f374n = true;
                        this.f375o = this.f377q;
                        this.f376p = i37;
                    }
                    this.f370j = 3;
                    this.f371k = z8 ? 1 : 0;
                } else {
                    this.f374n = z8;
                    this.f370j = z8 ? 1 : 0;
                    this.f371k = z8 ? 1 : 0;
                    this.f372l = 256;
                }
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f367g = i8.f310e;
        i8.b();
        L lT = uVar.t(i8.f309d, 1);
        this.f368h = lT;
        this.f382v = lT;
        if (!this.f361a) {
            this.f369i = new W0.q();
            return;
        }
        i8.a();
        i8.b();
        L lT2 = uVar.t(i8.f309d, 5);
        this.f369i = lT2;
        C3135s c3135s = new C3135s();
        i8.b();
        c3135s.f26983a = i8.f310e;
        c3135s.f26995m = O.p(this.f366f);
        c3135s.f26996n = O.p("application/id3");
        lT2.b(new C3136t(c3135s));
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f381u = j8;
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
