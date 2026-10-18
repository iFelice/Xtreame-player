package A1;

import W0.AbstractC0368a;
import W0.L;
import com.google.android.gms.internal.measurement.H1;
import java.util.Objects;
import org.eclipse.paho.client.mqttv3.internal.wire.MqttWireMessage;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;

/* JADX INFO: renamed from: A1.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0027b implements InterfaceC0035j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p117p0.D f317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p117p0.E f318b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f321e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f322f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public L f323g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f324h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f325i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f326j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f327k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public C3136t f328l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f329m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f330n;

    public C0027b(String str) {
        this(null, 0, str);
    }

    @Override // A1.InterfaceC0035j
    public final void a() {
        this.f324h = 0;
        this.f325i = 0;
        this.f326j = false;
        this.f330n = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:127:0x0211  */
    /* JADX WARN: Code duplicated, block: B:130:0x021f  */
    /* JADX WARN: Code duplicated, block: B:132:0x0227  */
    /* JADX WARN: Code duplicated, block: B:139:0x023b  */
    /* JADX WARN: Code duplicated, block: B:141:0x023f  */
    /* JADX WARN: Code duplicated, block: B:142:0x0244  */
    /* JADX WARN: Code duplicated, block: B:144:0x0248  */
    /* JADX WARN: Code duplicated, block: B:146:0x024e  */
    /* JADX WARN: Code duplicated, block: B:148:0x0255  */
    /* JADX WARN: Code duplicated, block: B:265:0x0251 A[SYNTHETIC] */
    @Override // A1.InterfaceC0035j
    public final void b(p117p0.E e8) {
        int i8;
        int iA;
        int i9;
        int i10;
        int i11;
        String str;
        int i12;
        byte b8;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        H1.j(this.f323g);
        while (e8.a() > 0) {
            int i25 = this.f324h;
            p117p0.E e9 = this.f318b;
            if (i25 == 0) {
                while (e8.a() > 0) {
                    if (this.f326j) {
                        int iZ = e8.z();
                        if (iZ == 119) {
                            this.f326j = false;
                            this.f324h = 1;
                            byte[] bArr = e9.f28035a;
                            bArr[0] = MqttWireMessage.MESSAGE_TYPE_UNSUBACK;
                            bArr[1] = 119;
                            this.f325i = 2;
                            break;
                        }
                        this.f326j = iZ == 11;
                    } else {
                        this.f326j = e8.z() == 11;
                    }
                }
            } else if (i25 == 1) {
                byte[] bArr2 = e9.f28035a;
                int iMin = Math.min(e8.a(), 128 - this.f325i);
                e8.j(this.f325i, bArr2, iMin);
                int i26 = this.f325i + iMin;
                this.f325i = i26;
                if (i26 == 128) {
                    p117p0.D d6 = this.f317a;
                    d6.r(0);
                    int iG = d6.g();
                    d6.u(40);
                    boolean z7 = d6.i(5) > 10;
                    d6.r(iG);
                    int[] iArr = AbstractC0368a.f7353f;
                    int[] iArr2 = AbstractC0368a.f7351d;
                    if (z7) {
                        d6.u(16);
                        int i27 = d6.i(2);
                        if (i27 == 0) {
                            b8 = 0;
                        } else if (i27 != 1) {
                            b8 = i27 != 2 ? (byte) -1 : (byte) 2;
                        } else {
                            b8 = 1;
                        }
                        d6.u(3);
                        iA = (d6.i(11) + 1) * 2;
                        int i28 = d6.i(2);
                        if (i28 == 3) {
                            i12 = AbstractC0368a.f7352e[d6.i(2)];
                            i14 = 6;
                            i13 = 3;
                        } else {
                            int i29 = d6.i(2);
                            int i30 = AbstractC0368a.f7350c[i29];
                            i12 = iArr2[i28];
                            i13 = i29;
                            i14 = i30;
                        }
                        i11 = i14 * 256;
                        int i31 = (iA * i12) / (i14 * 32);
                        int i32 = d6.i(3);
                        boolean zH = d6.h();
                        i10 = iArr[i32] + (zH ? 1 : 0);
                        d6.u(10);
                        if (d6.h()) {
                            d6.u(8);
                        }
                        if (i32 == 0) {
                            d6.u(5);
                            if (d6.h()) {
                                d6.u(8);
                            }
                        }
                        if (b8 == 1 && d6.h()) {
                            d6.u(16);
                        }
                        if (d6.h()) {
                            if (i32 > 2) {
                                d6.u(2);
                            }
                            if ((i32 & 1) == 0 || i32 <= 2) {
                                i19 = 6;
                            } else {
                                i19 = 6;
                                d6.u(6);
                            }
                            if ((i32 & 4) != 0) {
                                d6.u(i19);
                            }
                            if (zH && d6.h()) {
                                d6.u(5);
                            }
                            if (b8 != 0) {
                                i15 = i13;
                            } else {
                                if (d6.h()) {
                                    i20 = 6;
                                    d6.u(6);
                                } else {
                                    i20 = 6;
                                }
                                if (i32 == 0 && d6.h()) {
                                    d6.u(i20);
                                }
                                if (d6.h()) {
                                    d6.u(i20);
                                }
                                int i33 = d6.i(2);
                                if (i33 == 1) {
                                    d6.u(5);
                                } else if (i33 == 2) {
                                    d6.u(12);
                                } else {
                                    if (i33 == 3) {
                                        int i34 = d6.i(5);
                                        if (d6.h()) {
                                            d6.u(5);
                                            if (d6.h()) {
                                                i22 = 4;
                                                d6.u(4);
                                            } else {
                                                i22 = 4;
                                            }
                                            if (d6.h()) {
                                                d6.u(i22);
                                            }
                                            if (d6.h()) {
                                                d6.u(i22);
                                            }
                                            if (d6.h()) {
                                                d6.u(i22);
                                            }
                                            if (d6.h()) {
                                                d6.u(i22);
                                            }
                                            if (d6.h()) {
                                                d6.u(i22);
                                            }
                                            if (d6.h()) {
                                                d6.u(i22);
                                            }
                                            if (d6.h()) {
                                                if (d6.h()) {
                                                    d6.u(i22);
                                                }
                                                if (d6.h()) {
                                                    d6.u(i22);
                                                }
                                            }
                                        }
                                        if (d6.h()) {
                                            d6.u(5);
                                            if (d6.h()) {
                                                d6.u(7);
                                                if (d6.h()) {
                                                    d6.u(8);
                                                }
                                            }
                                        }
                                        i21 = 2;
                                        d6.u((i34 + 2) * 8);
                                        d6.c();
                                    }
                                    if (i32 < i21) {
                                        if (d6.h()) {
                                            d6.u(14);
                                        }
                                        if (i32 == 0 && d6.h()) {
                                            d6.u(14);
                                        }
                                    }
                                    if (d6.h()) {
                                        i15 = i13;
                                        if (i15 == 0) {
                                            d6.u(5);
                                        } else {
                                            i23 = 5;
                                            i24 = 0;
                                            while (i24 < i14) {
                                                if (d6.h()) {
                                                    d6.u(i23);
                                                }
                                                i24++;
                                                i23 = 5;
                                            }
                                        }
                                    } else {
                                        i15 = i13;
                                    }
                                }
                                i21 = 2;
                                if (i32 < i21) {
                                    if (d6.h()) {
                                        d6.u(14);
                                    }
                                    if (i32 == 0) {
                                        d6.u(14);
                                    }
                                }
                                if (d6.h()) {
                                    i15 = i13;
                                    if (i15 == 0) {
                                        d6.u(5);
                                    } else {
                                        i23 = 5;
                                        i24 = 0;
                                        while (i24 < i14) {
                                            if (d6.h()) {
                                                d6.u(i23);
                                            }
                                            i24++;
                                            i23 = 5;
                                        }
                                    }
                                } else {
                                    i15 = i13;
                                }
                            }
                        } else {
                            i15 = i13;
                        }
                        if (d6.h()) {
                            d6.u(5);
                            if (i32 == 2) {
                                d6.u(4);
                            }
                            if (i32 >= 6) {
                                d6.u(2);
                            }
                            if (d6.h()) {
                                i18 = 8;
                                d6.u(8);
                            } else {
                                i18 = 8;
                            }
                            if (i32 == 0 && d6.h()) {
                                d6.u(i18);
                            }
                            i16 = 3;
                            if (i28 < 3) {
                                d6.t();
                            }
                        } else {
                            i16 = 3;
                        }
                        if (b8 == 0 && i15 != i16) {
                            d6.t();
                        }
                        if (b8 == 2 && (i15 == i16 || d6.h())) {
                            i17 = 6;
                            d6.u(6);
                        } else {
                            i17 = 6;
                        }
                        str = (d6.h() && d6.i(i17) == 1 && d6.i(8) == 1) ? "audio/eac3-joc" : "audio/eac3";
                        i8 = i31;
                    } else {
                        d6.u(32);
                        int i35 = d6.i(2);
                        String str2 = i35 == 3 ? null : "audio/ac3";
                        int i36 = d6.i(6);
                        i8 = AbstractC0368a.f7354g[i36 / 2] * 1000;
                        iA = AbstractC0368a.a(i35, i36);
                        d6.u(8);
                        int i37 = d6.i(3);
                        if ((i37 & 1) == 0 || i37 == 1) {
                            i9 = 2;
                        } else {
                            i9 = 2;
                            d6.u(2);
                        }
                        if ((i37 & 4) != 0) {
                            d6.u(i9);
                        }
                        if (i37 == i9) {
                            d6.u(i9);
                        }
                        int i38 = i35 < 3 ? iArr2[i35] : -1;
                        i10 = iArr[i37] + (d6.h() ? 1 : 0);
                        i11 = 1536;
                        str = str2;
                        i12 = i38;
                    }
                    C3136t c3136t = this.f328l;
                    if (c3136t == null || i10 != c3136t.f27016G || i12 != c3136t.f27017H || !Objects.equals(str, c3136t.f27041o)) {
                        C3135s c3135s = new C3135s();
                        c3135s.f26983a = this.f322f;
                        c3135s.f26995m = O.p(this.f321e);
                        c3135s.f26996n = O.p(str);
                        c3135s.f26973F = i10;
                        c3135s.f26974G = i12;
                        c3135s.f26986d = this.f319c;
                        c3135s.f26988f = this.f320d;
                        c3135s.f26991i = i8;
                        if ("audio/ac3".equals(str)) {
                            c3135s.f26990h = i8;
                        }
                        C3136t c3136t2 = new C3136t(c3135s);
                        this.f328l = c3136t2;
                        this.f323g.b(c3136t2);
                    }
                    this.f329m = iA;
                    this.f327k = (((long) i11) * 1000000) / ((long) this.f328l.f27017H);
                    e9.L(0);
                    this.f323g.e(128, e9);
                    this.f324h = 2;
                }
            } else if (i25 == 2) {
                int iMin2 = Math.min(e8.a(), this.f329m - this.f325i);
                this.f323g.e(iMin2, e8);
                int i39 = this.f325i + iMin2;
                this.f325i = i39;
                if (i39 == this.f329m) {
                    H1.i(this.f330n != -9223372036854775807L);
                    this.f323g.d(this.f330n, 1, this.f329m, 0, null);
                    this.f330n += this.f327k;
                    this.f324h = 0;
                }
            }
        }
    }

    @Override // A1.InterfaceC0035j
    public final void c(W0.u uVar, I i8) {
        i8.a();
        i8.b();
        this.f322f = i8.f310e;
        i8.b();
        this.f323g = uVar.t(i8.f309d, 1);
    }

    @Override // A1.InterfaceC0035j
    public final void e(int i8, long j8) {
        this.f330n = j8;
    }

    public C0027b(String str, int i8, String str2) {
        p117p0.D d6 = new p117p0.D(new byte[128], 0, (Object) null);
        this.f317a = d6;
        this.f318b = new p117p0.E(d6.f28028b);
        this.f324h = 0;
        this.f330n = -9223372036854775807L;
        this.f319c = str;
        this.f320d = i8;
        this.f321e = str2;
    }

    @Override // A1.InterfaceC0035j
    public final void d(boolean z7) {
    }
}
