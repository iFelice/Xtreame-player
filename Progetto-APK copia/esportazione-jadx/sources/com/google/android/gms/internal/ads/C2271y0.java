package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.io.StringReader;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.y0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2271y0 implements L {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public N f21971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f21972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f21973d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f21974e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public W0 f21976g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public M f21977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public B0 f21978i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public A1 f21979j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f21970a = new C1534jr(6);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f21975f = -1;

    public final int a(M m7) {
        C1534jr c1534jr = this.f21970a;
        c1534jr.g(2);
        ((F) m7).d(c1534jr.f19515a, 0, 2, false);
        return c1534jr.A();
    }

    public final void b() {
        N n7 = this.f21971b;
        n7.getClass();
        n7.f();
        this.f21971b.g(new P(-9223372036854775807L, 0L));
        this.f21972c = 6;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        String strH;
        A0 a8;
        long j8;
        int i8 = this.f21972c;
        int i9 = 4;
        C1534jr c1534jr = this.f21970a;
        if (i8 == 0) {
            c1534jr.g(2);
            m7.h(0, c1534jr.f19515a, 2);
            int iA = c1534jr.A();
            this.f21973d = iA;
            if (iA == 65498) {
                if (this.f21975f != -1) {
                    this.f21972c = 4;
                    return 0;
                }
                b();
                return 0;
            }
            if ((iA >= 65488 && iA <= 65497) || iA == 65281) {
                return 0;
            }
            this.f21972c = 1;
            return 0;
        }
        if (i8 == 1) {
            c1534jr.g(2);
            m7.h(0, c1534jr.f19515a, 2);
            this.f21974e = c1534jr.A() - 2;
            this.f21972c = 2;
            return 0;
        }
        if (i8 != 2) {
            if (i8 != 4) {
                if (i8 != 5) {
                    if (i8 == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.f21978i == null || m7 != this.f21977h) {
                    this.f21977h = m7;
                    this.f21978i = new B0(m7, this.f21975f);
                }
                A1 a9 = this.f21979j;
                a9.getClass();
                int iC = a9.c(this.f21978i, wVar);
                if (iC == 1) {
                    wVar.f7458a += this.f21975f;
                }
                return iC;
            }
            long jZzf = m7.zzf();
            long j9 = this.f21975f;
            if (jZzf != j9) {
                wVar.f7458a = j9;
                return 1;
            }
            if (m7.d(c1534jr.f19515a, 0, 1, true)) {
                m7.zzj();
                if (this.f21979j == null) {
                    this.f21979j = new A1(8, V1.f16932o);
                }
                B0 b8 = new B0(m7, this.f21975f);
                this.f21978i = b8;
                if (this.f21979j.d(b8)) {
                    A1 a10 = this.f21979j;
                    long j10 = this.f21975f;
                    N n7 = this.f21971b;
                    n7.getClass();
                    a10.f(new D0(j10, n7));
                    W0 w7 = this.f21976g;
                    w7.getClass();
                    N n8 = this.f21971b;
                    n8.getClass();
                    InterfaceC1234e0 interfaceC1234e0H = n8.h(1024, 4);
                    K k8 = new K();
                    k8.f14270k = AbstractC2140va.e("image/jpeg");
                    k8.f14269j = new Q9(-9223372036854775807L, w7);
                    interfaceC1234e0H.d(new C1804p0(k8));
                    this.f21972c = 5;
                } else {
                    b();
                }
            } else {
                b();
            }
            return 0;
        }
        if (this.f21973d == 65505) {
            C1534jr c1534jr2 = new C1534jr(this.f21974e);
            m7.h(0, c1534jr2.f19515a, this.f21974e);
            if (this.f21976g == null && "http://ns.adobe.com/xap/1.0/".equals(c1534jr2.H()) && (strH = c1534jr2.H()) != null) {
                long jZzd = m7.zzd();
                W0 w8 = null;
                if (jZzd != -1) {
                    try {
                        XmlPullParser xmlPullParserNewPullParser = XmlPullParserFactory.newInstance().newPullParser();
                        xmlPullParserNewPullParser.setInput(new StringReader(strH));
                        xmlPullParserNewPullParser.next();
                        if (!U4.a.s(xmlPullParserNewPullParser, "x:xmpmeta")) {
                            throw C0800Ka.a("Couldn't find xmp metadata", null);
                        }
                        C1969sA c1969sA = AbstractC2073uA.f21207H;
                        PA paX = PA.f15340K;
                        long j11 = -9223372036854775807L;
                        loop0: while (true) {
                            xmlPullParserNewPullParser.next();
                            if (U4.a.s(xmlPullParserNewPullParser, "rdf:Description")) {
                                String[] strArr = AbstractC1717nH.f20152z;
                                int i10 = 0;
                                while (true) {
                                    if (i10 < i9) {
                                        String strK = U4.a.k(xmlPullParserNewPullParser, strArr[i10]);
                                        if (strK == null) {
                                            i10++;
                                            i9 = 4;
                                        } else if (Integer.parseInt(strK) == 1) {
                                            String[] strArr2 = AbstractC1717nH.f20082A;
                                            int i11 = 0;
                                            while (true) {
                                                if (i11 < i9) {
                                                    String strK2 = U4.a.k(xmlPullParserNewPullParser, strArr2[i11]);
                                                    if (strK2 != null) {
                                                        j11 = Long.parseLong(strK2);
                                                        if (j11 != -1) {
                                                            break;
                                                        }
                                                        break;
                                                    }
                                                    i11++;
                                                }
                                                j11 = -9223372036854775807L;
                                                break;
                                            }
                                            String[] strArr3 = AbstractC1717nH.f20083B;
                                            int i12 = 0;
                                            while (true) {
                                                if (i12 >= 2) {
                                                    paX = PA.f15340K;
                                                    break;
                                                }
                                                String strK3 = U4.a.k(xmlPullParserNewPullParser, strArr3[i12]);
                                                if (strK3 != null) {
                                                    paX = AbstractC2073uA.x(new C2323z0("image/jpeg", 0L, 0L), new C2323z0("video/mp4", Long.parseLong(strK3), 0L));
                                                    break;
                                                }
                                                i12++;
                                            }
                                        }
                                    }
                                    a8 = null;
                                    break;
                                }
                            }
                            if (U4.a.s(xmlPullParserNewPullParser, "Container:Directory")) {
                                paX = AbstractC1717nH.d(xmlPullParserNewPullParser, "Container", "Item");
                            } else if (U4.a.s(xmlPullParserNewPullParser, "GContainer:Directory")) {
                                paX = AbstractC1717nH.d(xmlPullParserNewPullParser, "GContainer", "GContainerItem");
                            }
                            if (U4.a.q(xmlPullParserNewPullParser, "x:xmpmeta")) {
                                if (!paX.isEmpty()) {
                                    a8 = new A0(j11, paX);
                                    break;
                                }
                                a8 = null;
                                break;
                            }
                            i9 = 4;
                        }
                        if (a8 != null) {
                            List list = (List) a8.f11917H;
                            if (list.size() >= 2) {
                                long j12 = -1;
                                long j13 = -1;
                                long j14 = -1;
                                long j15 = -1;
                                boolean zEquals = false;
                                for (int size = list.size() - 1; size >= 0; size--) {
                                    C2323z0 c2323z0 = (C2323z0) list.get(size);
                                    zEquals |= "video/mp4".equals(c2323z0.f22102a);
                                    if (size == 0) {
                                        jZzd -= c2323z0.f22104c;
                                        j8 = 0;
                                    } else {
                                        j8 = jZzd - c2323z0.f22103b;
                                    }
                                    long j16 = j8;
                                    long j17 = jZzd;
                                    jZzd = j16;
                                    if (zEquals && jZzd != j17) {
                                        j15 = j17 - jZzd;
                                        j14 = jZzd;
                                        zEquals = false;
                                    }
                                    if (size == 0) {
                                        j13 = j17;
                                    }
                                    if (size == 0) {
                                        j12 = jZzd;
                                    }
                                }
                                if (j14 != -1 && j15 != -1 && j12 != -1 && j13 != -1) {
                                    w8 = new W0(j12, j13, a8.f11916G, j14, j15);
                                }
                            }
                        }
                    } catch (C0800Ka | NumberFormatException | XmlPullParserException unused) {
                        Zo.f("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
                    }
                }
                this.f21976g = w8;
                if (w8 != null) {
                    this.f21975f = w8.f17148J;
                }
            }
        } else {
            m7.q(this.f21974e);
        }
        this.f21972c = 0;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        if (a(m7) != 65496) {
            return false;
        }
        int iA = a(m7);
        this.f21973d = iA;
        C1534jr c1534jr = this.f21970a;
        if (iA == 65504) {
            c1534jr.g(2);
            F f8 = (F) m7;
            f8.d(c1534jr.f19515a, 0, 2, false);
            f8.i(c1534jr.A() - 2, false);
            iA = a(m7);
            this.f21973d = iA;
        }
        if (iA == 65505) {
            F f9 = (F) m7;
            f9.i(2, false);
            c1534jr.g(6);
            f9.d(c1534jr.f19515a, 0, 6, false);
            if (c1534jr.E() == 1165519206 && c1534jr.A() == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        if (j8 == 0) {
            this.f21972c = 0;
            this.f21979j = null;
        } else if (this.f21972c == 5) {
            A1 a8 = this.f21979j;
            a8.getClass();
            a8.e(j8, j9);
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f21971b = n7;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
