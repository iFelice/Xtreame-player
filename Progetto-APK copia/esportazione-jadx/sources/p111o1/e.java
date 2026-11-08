package p111o1;

import D0.C0117g;
import D0.U;
import E3.f;
import U0.C;
import W0.A;
import W0.AbstractC0368a;
import W0.B;
import W0.C0370c;
import W0.C0372e;
import W0.r;
import android.util.Pair;
import com.google.android.gms.internal.ads.C1288f2;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import okhttp3.HttpUrl;
import org.videolan.libvlc.MediaPlayer;
import p016c.g;
import p065i1.l;
import p065i1.o;
import p094m0.C3126i;
import p094m0.C3131n;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.N;
import p094m0.O;
import p094m0.P;
import p117p0.AbstractC3169g;
import p117p0.D;
import p117p0.E;
import p117p0.M;
import p117p0.x;
import p117p0.z;
import p125q0.a;
import p125q0.b;
import p125q0.c;
import p125q0.d;
import p125q0.m;
import p190y4.h;
import p190y4.k;
import z4.H;
import z4.d0;

/* JADX INFO: loaded from: classes.dex */
public abstract class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f27689a;

    static {
        String str = M.f28050a;
        f27689a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static void a(E e8) {
        int i8 = e8.f28036b;
        e8.M(4);
        if (e8.l() != 1751411826) {
            i8 += 4;
        }
        e8.L(i8);
    }

    /* JADX WARN: Code duplicated, block: B:201:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:272:0x05ab  */
    /* JADX WARN: Code duplicated, block: B:284:0x05d2  */
    /* JADX WARN: Code duplicated, block: B:291:0x05e0  */
    /* JADX WARN: Code duplicated, block: B:350:0x069c  */
    /* JADX WARN: Code duplicated, block: B:352:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:354:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:357:0x06b5  */
    /* JADX WARN: Code duplicated, block: B:360:0x06bd  */
    /* JADX WARN: Code duplicated, block: B:362:0x06d1 A[LOOP:3: B:361:0x06cf->B:362:0x06d1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:364:0x06e1  */
    /* JADX WARN: Code duplicated, block: B:365:0x06e4  */
    /* JADX WARN: Code duplicated, block: B:368:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:370:0x06f8  */
    /* JADX WARN: Code duplicated, block: B:39:0x0097  */
    /* JADX WARN: Code duplicated, block: B:495:0x0a07 A[LOOP:15: B:495:0x0a07->B:625:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:500:0x0a25  */
    /* JADX WARN: Code duplicated, block: B:502:0x0a41  */
    /* JADX WARN: Code duplicated, block: B:594:0x06ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:595:0x06fd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:619:? A[LOOP:12: B:483:0x09ce->B:619:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:621:? A[LOOP:13: B:487:0x09e8->B:621:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:623:? A[LOOP:14: B:490:0x09f0->B:623:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:625:? A[LOOP:15: B:495:0x0a07->B:625:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:96:0x016c  */
    public static void b(E e8, int i8, int i9, int i10, int i11, String str, boolean z7, C3131n c3131n, g gVar, int i12) throws P {
        int i13;
        int iF;
        int iL;
        int iRound;
        int i14;
        C3131n c3131nA;
        String str2;
        String str3;
        E e9;
        int i15;
        int i16;
        int i17;
        String str4;
        int i18;
        int i19;
        int i20;
        int i21;
        int iA;
        int i22;
        E e10;
        String strX;
        D d6;
        int i23;
        int i24;
        int i25;
        int i26;
        boolean zH;
        int i27;
        int i28;
        int i29;
        int i30;
        boolean z8;
        int i31;
        int i32;
        int iB;
        int i33;
        int i34;
        String str5;
        int i35;
        E e11 = e8;
        int iIntValue = i8;
        int i36 = i9;
        int i37 = i10;
        String str6 = str;
        g gVar2 = gVar;
        e11.L(i36 + 16);
        if (z7) {
            int iF2 = e8.F();
            e11.M(6);
            i13 = iF2;
        } else {
            e11.M(8);
            i13 = 0;
        }
        int i38 = 268435456;
        if (i13 == 0 || i13 == 1) {
            iF = e8.F();
            e11.M(6);
            int iA2 = e8.A();
            e11.L(e11.f28036b - 4);
            iL = e8.l();
            if (i13 == 1) {
                e11.M(16);
            }
            iRound = iA2;
            i14 = -1;
        } else {
            if (i13 != 2) {
                return;
            }
            e11.M(16);
            iRound = (int) Math.round(Double.longBitsToDouble(e8.t()));
            iF = e8.D();
            e11.M(4);
            int iD = e8.D();
            int iD2 = e8.D();
            boolean z9 = (iD2 & 1) != 0;
            boolean z10 = (iD2 & 2) != 0;
            if (z9) {
                if (iD == 32) {
                    i14 = 4;
                } else {
                    i14 = -1;
                }
            } else if (iD == 8) {
                i14 = 3;
            } else if (iD == 16) {
                i14 = z10 ? 268435456 : 2;
            } else if (iD == 24) {
                i14 = z10 ? 1342177280 : 21;
            } else if (iD == 32) {
                i14 = z10 ? 1610612736 : 22;
            } else {
                i14 = -1;
            }
            e11.M(8);
            iL = 0;
        }
        if (iIntValue == 1767992678) {
            iRound = -1;
            iF = -1;
        } else {
            if (iIntValue != 1935764850) {
                iRound = iIntValue == 1935767394 ? 16000 : 8000;
            }
            iF = 1;
        }
        int i39 = e11.f28036b;
        if (iIntValue == 1701733217) {
            Pair pairH = h(i36, i37, e11);
            if (pairH != null) {
                iIntValue = ((Integer) pairH.first).intValue();
                c3131nA = c3131n == null ? null : c3131n.a(((q) pairH.second).f27811b);
                ((q[]) gVar2.f10556J)[i12] = (q) pairH.second;
            } else {
                c3131nA = c3131n;
            }
            e11.L(i39);
        } else {
            c3131nA = c3131n;
        }
        String str7 = "audio/mhm1";
        if (iIntValue == 1633889587) {
            i38 = i14;
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            i38 = i14;
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            i38 = i14;
            str2 = "audio/ac4";
        } else {
            if (iIntValue == 1685353315) {
                str2 = "audio/vnd.dts";
            } else if (iIntValue == 1685353320 || iIntValue == 1685353324) {
                str2 = "audio/vnd.dts.hd";
            } else if (iIntValue == 1685353317) {
                str2 = "audio/vnd.dts.hd;profile=lbr";
            } else if (iIntValue == 1685353336) {
                str2 = "audio/vnd.dts.uhd;profile=p2";
            } else if (iIntValue == 1935764850) {
                str2 = "audio/3gpp";
            } else if (iIntValue == 1935767394) {
                str2 = "audio/amr-wb";
            } else if (iIntValue == 1936684916) {
                str2 = "audio/raw";
                i38 = 2;
            } else if (iIntValue == 1953984371) {
                str2 = "audio/raw";
            } else if (iIntValue == 1819304813) {
                if (i14 == -1) {
                    str2 = "audio/raw";
                    i38 = 2;
                } else {
                    i38 = i14;
                    str2 = "audio/raw";
                }
            } else if (iIntValue == 778924082 || iIntValue == 778924083) {
                str2 = "audio/mpeg";
            } else if (iIntValue == 1835557169) {
                str2 = "audio/mha1";
            } else if (iIntValue == 1835560241) {
                str2 = "audio/mhm1";
            } else if (iIntValue == 1634492771) {
                str2 = "audio/alac";
            } else if (iIntValue == 1634492791) {
                str2 = "audio/g711-alaw";
            } else if (iIntValue == 1970037111) {
                str2 = "audio/g711-mlaw";
            } else if (iIntValue == 1332770163) {
                str2 = "audio/opus";
            } else if (iIntValue == 1716281667) {
                str2 = "audio/flac";
            } else if (iIntValue == 1835823201) {
                str2 = "audio/true-hd";
            } else if (iIntValue == 1767992678) {
                str2 = "audio/iamf";
            } else {
                i38 = i14;
                str2 = null;
            }
            i38 = i14;
        }
        String str8 = null;
        List listX = null;
        c cVar = null;
        C c8 = null;
        while (i39 - i36 < i37) {
            e11.L(i39);
            int iL2 = e8.l();
            f.c("childAtomSize must be positive", iL2 > 0);
            int iL3 = e8.l();
            String str9 = str8;
            if (iL3 == 1835557187) {
                e11.L(i39 + 8);
                e11.M(1);
                int iZ = e8.z();
                e11.M(1);
                if (Objects.equals(str2, str7)) {
                    i35 = 0;
                    str8 = String.format("mhm1.%02X", Integer.valueOf(iZ));
                } else {
                    i35 = 0;
                    str8 = String.format("mha1.%02X", Integer.valueOf(iZ));
                }
                int iF3 = e8.F();
                byte[] bArr = new byte[iF3];
                e11.j(i35, bArr, iF3);
                listX = listX == null ? H.x(bArr) : H.y(bArr, (byte[]) listX.get(i35));
                iIntValue = iIntValue;
                gVar2 = gVar2;
            } else {
                str7 = str7;
                if (iL3 == 1835557200) {
                    e11.L(i39 + 8);
                    int iZ2 = e8.z();
                    if (iZ2 > 0) {
                        byte[] bArr2 = new byte[iZ2];
                        e11.j(0, bArr2, iZ2);
                        listX = listX == null ? H.x(bArr2) : H.y((byte[]) listX.get(0), bArr2);
                    }
                } else {
                    if (iL3 == 1702061171 || (z7 && iL3 == 2002876005)) {
                        String str10 = str2;
                        int i40 = i39;
                        int i41 = iL2;
                        int i42 = iF;
                        List list = listX;
                        str3 = str6;
                        int i43 = iRound;
                        e9 = e11;
                        int i44 = iIntValue;
                        gVar2 = gVar2;
                        c3131nA = c3131nA;
                        if (iL3 == 1702061171) {
                            i15 = i40;
                            i39 = i15;
                            i16 = i41;
                        } else {
                            i15 = e9.f28036b;
                            i39 = i40;
                            f.c(null, i15 >= i39);
                            while (true) {
                                i16 = i41;
                                if (i15 - i39 < i16) {
                                    e9.L(i15);
                                    int iL4 = e8.l();
                                    f.c("childAtomSize must be positive", iL4 > 0);
                                    if (e8.l() != 1702061171) {
                                        i15 += iL4;
                                        i41 = i16;
                                    }
                                } else {
                                    i15 = -1;
                                }
                            }
                        }
                        if (i15 != -1) {
                            c cVarC = c(i15, e9);
                            String str11 = cVarC.f27685a;
                            byte[] bArr3 = cVarC.f27686b;
                            if (bArr3 == null) {
                                iIntValue = i44;
                                cVar = cVarC;
                                listX = list;
                                i17 = i42;
                                str2 = str11;
                                str8 = str9;
                            } else if ("audio/vorbis".equals(str11)) {
                                E e12 = new E(bArr3);
                                e12.M(1);
                                int i45 = 0;
                                while (true) {
                                    if (e12.a() > 0) {
                                        iIntValue = i44;
                                        if ((e12.f28035a[e12.f28036b] & 255) == 255) {
                                            i45 += 255;
                                            e12.M(1);
                                            i44 = iIntValue;
                                        }
                                    } else {
                                        iIntValue = i44;
                                    }
                                }
                                int iZ3 = e12.z() + i45;
                                int i46 = 0;
                                while (true) {
                                    if (e12.a() > 0) {
                                        cVar = cVarC;
                                        if ((e12.f28035a[e12.f28036b] & 255) == 255) {
                                            i46 += 255;
                                            e12.M(1);
                                            cVarC = cVar;
                                        }
                                    } else {
                                        cVar = cVarC;
                                    }
                                }
                                int iZ4 = e12.z() + i46;
                                byte[] bArr4 = new byte[iZ3];
                                int i47 = e12.f28036b;
                                System.arraycopy(bArr3, i47, bArr4, 0, iZ3);
                                int i48 = i47 + iZ3 + iZ4;
                                int length = bArr3.length - i48;
                                byte[] bArr5 = new byte[length];
                                System.arraycopy(bArr3, i48, bArr5, 0, length);
                                listX = H.y(bArr4, bArr5);
                                i17 = i42;
                                str2 = str11;
                                str8 = str9;
                            } else {
                                iIntValue = i44;
                                cVar = cVarC;
                                if ("audio/mp4a-latm".equals(str11)) {
                                    r rVarG = AbstractC0368a.g(new D(bArr3, 0, (Object) null), false);
                                    i43 = rVarG.f7455b;
                                    i42 = rVarG.f7456c;
                                    str8 = rVarG.f7454a;
                                } else {
                                    str8 = str9;
                                }
                                listX = H.x(bArr3);
                                i17 = i42;
                                str2 = str11;
                            }
                        } else {
                            iIntValue = i44;
                            listX = list;
                            i17 = i42;
                            str8 = str9;
                            str2 = str10;
                        }
                        iF = i17;
                        iRound = i43;
                    } else if (iL3 == 1651798644) {
                        e11.L(i39 + 8);
                        e11.M(4);
                        long jB = e8.B();
                        long jB2 = e8.B();
                        C c9 = new C();
                        c9.f6627a = jB2;
                        c9.f6628b = jB;
                        listX = listX;
                        c8 = c9;
                    } else {
                        List list2 = listX;
                        int[] iArr = AbstractC0368a.f7353f;
                        int[] iArr2 = AbstractC0368a.f7351d;
                        if (iL3 == 1684103987) {
                            e11.L(i39 + 8);
                            String string = Integer.toString(i11);
                            D d8 = new D();
                            d8.q(e11);
                            int i49 = iArr2[d8.i(2)];
                            d8.u(8);
                            int i50 = iArr[d8.i(3)];
                            if (d8.i(1) != 0) {
                                i50++;
                            }
                            int i51 = AbstractC0368a.f7354g[d8.i(5)] * 1000;
                            d8.c();
                            e11.L(d8.f());
                            C3135s c3135s = new C3135s();
                            c3135s.f26983a = string;
                            c3135s.f26996n = O.p("audio/ac3");
                            c3135s.f26973F = i50;
                            c3135s.f26974G = i49;
                            c3135s.f27000r = c3131nA;
                            c3135s.f26986d = str6;
                            c3135s.f26990h = i51;
                            c3135s.f26991i = i51;
                            gVar2.f10557K = new C3136t(c3135s);
                            str4 = str2;
                            i18 = i39;
                            iL2 = iL2;
                            i20 = iF;
                            str3 = str6;
                            i21 = iRound;
                            e9 = e11;
                            i19 = iIntValue;
                            gVar2 = gVar2;
                            c3131nA = c3131nA;
                        } else if (iL3 == 1684366131) {
                            e11.L(i39 + 8);
                            String string2 = Integer.toString(i11);
                            D d9 = new D();
                            d9.q(e11);
                            int i52 = iRound;
                            int i53 = d9.i(13) * 1000;
                            d9.u(3);
                            int i54 = iArr2[d9.i(2)];
                            d9.u(10);
                            int i55 = iArr[d9.i(3)];
                            if (d9.i(1) != 0) {
                                i55++;
                            }
                            d9.u(3);
                            int i56 = d9.i(4);
                            d9.u(1);
                            int i57 = iF;
                            if (i56 > 0) {
                                d9.u(6);
                                if (d9.i(1) != 0) {
                                    i55 += 2;
                                }
                                d9.u(1);
                            }
                            if (d9.b() > 7) {
                                d9.u(7);
                                if (d9.i(1) != 0) {
                                    str5 = "audio/eac3-joc";
                                } else {
                                    str5 = "audio/eac3";
                                }
                            } else {
                                str5 = "audio/eac3";
                            }
                            d9.c();
                            e11.L(d9.f());
                            C3135s c3135s2 = new C3135s();
                            c3135s2.f26983a = string2;
                            c3135s2.f26996n = O.p(str5);
                            c3135s2.f26973F = i55;
                            c3135s2.f26974G = i54;
                            c3135s2.f27000r = c3131nA;
                            c3135s2.f26986d = str6;
                            c3135s2.f26991i = i53;
                            gVar2.f10557K = new C3136t(c3135s2);
                            e9 = e11;
                            i19 = iIntValue;
                            str4 = str2;
                            gVar2 = gVar2;
                            c3131nA = c3131nA;
                            i18 = i39;
                            iL2 = iL2;
                            i20 = i57;
                            str3 = str6;
                            i21 = i52;
                        } else {
                            iRound = iRound;
                            iF = iF;
                            if (iL3 == 1684103988) {
                                e11.L(i39 + 8);
                                String string3 = Integer.toString(i11);
                                D d10 = new D();
                                d10.q(e11);
                                int iB2 = d10.b();
                                int i58 = d10.i(3);
                                if (i58 > 1) {
                                    throw P.c("Unsupported AC-4 DSI version: " + i58);
                                }
                                int i59 = d10.i(7);
                                int i60 = d10.h() ? 48000 : 44100;
                                d10.u(4);
                                str4 = str2;
                                int i61 = d10.i(9);
                                int i62 = 1;
                                if (i59 > 1) {
                                    if (i58 == 0) {
                                        throw P.c("Invalid AC-4 DSI version: " + i58);
                                    }
                                    if (d10.h()) {
                                        d10.u(16);
                                        if (d10.h()) {
                                            d10.u(128);
                                        }
                                    }
                                    i62 = 1;
                                }
                                if (i58 == i62) {
                                    if (d10.b() < 66) {
                                        throw P.c("Invalid AC-4 DSI bitrate.");
                                    }
                                    d10.u(66);
                                    d10.c();
                                }
                                C0370c c0370c = new C0370c();
                                c0370c.f7380a = true;
                                c0370c.f7381b = -1;
                                c0370c.f7382c = -1;
                                c0370c.f7383d = true;
                                c0370c.f7384e = 2;
                                c0370c.f7385f = 1;
                                c0370c.f7386g = 0;
                                int i63 = 0;
                                while (true) {
                                    if (i63 < i61) {
                                        if (i58 == 0) {
                                            zH = d10.h();
                                            i27 = d10.i(5);
                                            i28 = d10.i(5);
                                            i29 = 0;
                                            i30 = 0;
                                            i18 = i39;
                                            z8 = false;
                                        } else {
                                            int i64 = i61;
                                            int i65 = d10.i(8);
                                            i18 = i39;
                                            int i66 = d10.i(8);
                                            int i67 = i66 == 255 ? d10.i(16) + i66 : i66;
                                            if (i65 > 2) {
                                                d10.u(i67 * 8);
                                                i63++;
                                                i61 = i64;
                                                i39 = i18;
                                            } else {
                                                int iB3 = (iB2 - d10.b()) / 8;
                                                int i68 = d10.i(5);
                                                z8 = i68 == 31;
                                                i28 = i65;
                                                i30 = iB3;
                                                i29 = i67;
                                                i27 = i68;
                                                zH = false;
                                            }
                                        }
                                        c0370c.f7385f = i28;
                                        if (zH || z8 || i27 != 6) {
                                            c0370c.f7386g = d10.i(3);
                                            if (d10.h()) {
                                                d10.u(5);
                                            }
                                            d10.u(2);
                                            if (i58 == 1 && (i28 == 1 || i28 == 2)) {
                                                d10.u(2);
                                            }
                                            d10.u(5);
                                            d10.u(10);
                                            if (i58 == 1) {
                                                if (i28 > 0) {
                                                    c0370c.f7380a = d10.h();
                                                }
                                                if (c0370c.f7380a) {
                                                    if (i28 != 1) {
                                                        i31 = 2;
                                                        if (i28 == 2) {
                                                            i32 = d10.i(5);
                                                            if (i32 >= 0 && i32 <= 15) {
                                                                c0370c.f7381b = i32;
                                                            }
                                                            if (i32 >= 11 || i32 > 14) {
                                                                i31 = 2;
                                                            } else {
                                                                c0370c.f7383d = d10.h();
                                                                i31 = 2;
                                                                c0370c.f7384e = d10.i(2);
                                                            }
                                                        }
                                                    } else {
                                                        i32 = d10.i(5);
                                                        if (i32 >= 0) {
                                                            c0370c.f7381b = i32;
                                                        }
                                                        if (i32 >= 11) {
                                                            i31 = 2;
                                                        } else {
                                                            i31 = 2;
                                                        }
                                                    }
                                                    d10.u(24);
                                                } else {
                                                    i31 = 2;
                                                }
                                                if (i28 == 1 || i28 == i31) {
                                                    if (d10.h() && d10.h()) {
                                                        d10.u(i31);
                                                    }
                                                    if (d10.h()) {
                                                        d10.t();
                                                        int i69 = 8;
                                                        int i70 = d10.i(8);
                                                        int i71 = 0;
                                                        while (i71 < i70) {
                                                            d10.u(i69);
                                                            i71++;
                                                            i69 = 8;
                                                        }
                                                    }
                                                }
                                            }
                                            if (!zH && !z8) {
                                                d10.t();
                                                if (i27 == 0 || i27 == 1 || i27 == 2) {
                                                    if (i28 == 0) {
                                                        for (int i72 = 0; i72 < 2; i72++) {
                                                            AbstractC0368a.h(d10, c0370c);
                                                        }
                                                    } else {
                                                        int i73 = 0;
                                                        for (int i74 = 2; i73 < i74; i74 = 2) {
                                                            AbstractC0368a.i(d10, c0370c);
                                                            i73++;
                                                        }
                                                    }
                                                } else if (i27 == 3 || i27 == 4) {
                                                    if (i28 == 0) {
                                                        for (int i75 = 0; i75 < 3; i75++) {
                                                            AbstractC0368a.h(d10, c0370c);
                                                        }
                                                    } else {
                                                        int i76 = 0;
                                                        for (int i77 = 3; i76 < i77; i77 = 3) {
                                                            AbstractC0368a.i(d10, c0370c);
                                                            i76++;
                                                        }
                                                    }
                                                } else if (i27 != 5) {
                                                    int i78 = d10.i(7);
                                                    for (int i79 = 0; i79 < i78; i79++) {
                                                        d10.u(8);
                                                    }
                                                } else if (i28 == 0) {
                                                    AbstractC0368a.h(d10, c0370c);
                                                } else {
                                                    int i80 = d10.i(3);
                                                    for (int i81 = 0; i81 < i80 + 2; i81++) {
                                                        AbstractC0368a.i(d10, c0370c);
                                                    }
                                                }
                                            } else if (i28 == 0) {
                                                AbstractC0368a.h(d10, c0370c);
                                            } else {
                                                AbstractC0368a.i(d10, c0370c);
                                            }
                                            d10.t();
                                            if (d10.h()) {
                                            }
                                            if (i28 <= 0) {
                                                if (!d10.h()) {
                                                    if (d10.b() >= 66) {
                                                        throw P.c("Can't parse bitrate DSI.");
                                                    }
                                                    d10.u(66);
                                                }
                                                if (d10.h()) {
                                                    d10.c();
                                                    d10.v(d10.i(16));
                                                    i33 = d10.i(5);
                                                    for (i34 = 0; i34 < i33; i34++) {
                                                        d10.u(3);
                                                        d10.u(8);
                                                    }
                                                }
                                            }
                                            d10.c();
                                            if (i58 == 1) {
                                                iB = ((iB2 - d10.b()) / 8) - i30;
                                                if (i29 >= iB) {
                                                    throw P.c("pres_bytes is smaller than presentation bytes read.");
                                                }
                                                d10.v(i29 - iB);
                                            }
                                            if (c0370c.f7380a && c0370c.f7381b == -1) {
                                                throw P.c("Can't determine channel mode of presentation " + i63);
                                            }
                                        } else {
                                            c3131nA = c3131nA;
                                        }
                                        int i82 = d10.i(7);
                                        for (int i83 = 0; i83 < i82; i83++) {
                                            d10.u(15);
                                        }
                                        if (i28 <= 0) {
                                            if (!d10.h()) {
                                                if (d10.b() >= 66) {
                                                    throw P.c("Can't parse bitrate DSI.");
                                                }
                                                d10.u(66);
                                            }
                                            if (d10.h()) {
                                                d10.c();
                                                d10.v(d10.i(16));
                                                i33 = d10.i(5);
                                                while (i34 < i33) {
                                                    d10.u(3);
                                                    d10.u(8);
                                                }
                                            }
                                        }
                                        d10.c();
                                        if (i58 == 1) {
                                            iB = ((iB2 - d10.b()) / 8) - i30;
                                            if (i29 >= iB) {
                                                throw P.c("pres_bytes is smaller than presentation bytes read.");
                                            }
                                            d10.v(i29 - iB);
                                        }
                                        if (c0370c.f7380a) {
                                            throw P.c("Can't determine channel mode of presentation " + i63);
                                        }
                                    } else {
                                        c3131nA = c3131nA;
                                        i18 = i39;
                                        iL2 = iL2;
                                        iL = iL;
                                    }
                                    if (c0370c.f7380a) {
                                        int i84 = c0370c.f7381b;
                                        boolean z11 = c0370c.f7383d;
                                        int i85 = c0370c.f7384e;
                                        switch (i84) {
                                            case 0:
                                                i25 = 11;
                                                i26 = 1;
                                                break;
                                            case 1:
                                                i25 = 11;
                                                i26 = 2;
                                                break;
                                            case 2:
                                                i25 = 11;
                                                i26 = 3;
                                                break;
                                            case 3:
                                                i25 = 11;
                                                i26 = 5;
                                                break;
                                            case 4:
                                                i25 = 11;
                                                i26 = 6;
                                                break;
                                            case 5:
                                            case 7:
                                            case 9:
                                                i25 = 11;
                                                i26 = 7;
                                                break;
                                            case 6:
                                            case 8:
                                            case 10:
                                                i25 = 11;
                                                i26 = 8;
                                                break;
                                            case 11:
                                                i25 = 11;
                                                i26 = 11;
                                                break;
                                            case 12:
                                                i25 = 11;
                                                i26 = 12;
                                                break;
                                            case 13:
                                                i25 = 11;
                                                i26 = 13;
                                                break;
                                            case 14:
                                                i25 = 11;
                                                i26 = 14;
                                                break;
                                            case 15:
                                                i25 = 11;
                                                i26 = 24;
                                                break;
                                            default:
                                                i25 = 11;
                                                i26 = -1;
                                                break;
                                        }
                                        if (i84 != i25 && i84 != 12) {
                                            if (i84 == 13 || i84 == 14) {
                                            }
                                            i24 = i26;
                                        }
                                        if (!z11) {
                                            i26 -= 2;
                                        }
                                        if (i85 == 0) {
                                            i26 -= 4;
                                        } else if (i85 == 1) {
                                            i26 -= 2;
                                        }
                                        i24 = i26;
                                    } else {
                                        int i86 = c0370c.f7382c;
                                        if (i86 > 0) {
                                            i24 = i86 + 1;
                                            if (c0370c.f7386g == 4 && i24 == 17) {
                                                i24 = 21;
                                            }
                                        } else {
                                            int i87 = c0370c.f7386g;
                                            if (i87 == 0) {
                                                i24 = 2;
                                            } else if (i87 == 1) {
                                                i24 = 6;
                                            } else if (i87 == 2) {
                                                i24 = 8;
                                            } else if (i87 == 3) {
                                                i24 = 10;
                                            } else if (i87 != 4) {
                                                x.f("Ac4Util", "AC-4 level " + c0370c.f7386g + " has not been defined.");
                                                i24 = 2;
                                            } else {
                                                i24 = 12;
                                            }
                                        }
                                    }
                                    if (i24 <= 0) {
                                        throw P.c("Cannot determine channel count of presentation.");
                                    }
                                    Object[] objArr = {Integer.valueOf(i59), Integer.valueOf(c0370c.f7385f), Integer.valueOf(c0370c.f7386g)};
                                    String str12 = M.f28050a;
                                    String str13 = String.format(Locale.US, "ac-4.%02d.%02d.%02d", objArr);
                                    C3135s c3135s3 = new C3135s();
                                    c3135s3.f26983a = string3;
                                    c3135s3.f26996n = O.p("audio/ac4");
                                    c3135s3.f26973F = i24;
                                    c3135s3.f26974G = i60;
                                    c3131nA = c3131nA;
                                    c3135s3.f27000r = c3131nA;
                                    str3 = str;
                                    c3135s3.f26986d = str3;
                                    c3135s3.f26992j = str13;
                                    C3136t c3136t = new C3136t(c3135s3);
                                    gVar2 = gVar;
                                    gVar2.f10557K = c3136t;
                                    i21 = iRound;
                                    i20 = iF;
                                    i19 = iIntValue;
                                    iL = iL;
                                    e9 = e8;
                                }
                            } else {
                                iIntValue = iIntValue;
                                str4 = str2;
                                gVar2 = gVar2;
                                c3131nA = c3131nA;
                                i18 = i39;
                                iL2 = iL2;
                                int i88 = iL;
                                str3 = str6;
                                if (iL3 != 1684892784) {
                                    iL = i88;
                                    if (iL3 == 1684305011 || iL3 == 1969517683) {
                                        i19 = iIntValue;
                                        e9 = e8;
                                        C3135s c3135s4 = new C3135s();
                                        c3135s4.f26983a = Integer.toString(i11);
                                        c3135s4.f26996n = O.p(str4);
                                        i20 = iF;
                                        c3135s4.f26973F = i20;
                                        i21 = iRound;
                                        c3135s4.f26974G = i21;
                                        c3135s4.f27000r = c3131nA;
                                        c3135s4.f26986d = str3;
                                        gVar2.f10557K = new C3136t(c3135s4);
                                    } else {
                                        if (iL3 == 1682927731) {
                                            int i89 = iL2 - 8;
                                            byte[] bArr6 = f27689a;
                                            byte[] bArrCopyOf = Arrays.copyOf(bArr6, bArr6.length + i89);
                                            e9 = e8;
                                            e9.L(i18 + 8);
                                            e9.j(bArr6.length, bArrCopyOf, i89);
                                            listX = Z3.H.c(bArrCopyOf);
                                        } else {
                                            e9 = e8;
                                            if (iL3 == 1684425825) {
                                                byte[] bArr7 = new byte[iL2 - 8];
                                                bArr7[0] = 102;
                                                bArr7[1] = 76;
                                                bArr7[2] = 97;
                                                bArr7[3] = 67;
                                                e9.L(i18 + 12);
                                                e9.j(4, bArr7, iL2 - 12);
                                                listX = H.x(bArr7);
                                            } else {
                                                if (iL3 == 1634492771) {
                                                    int i90 = iL2 - 12;
                                                    byte[] bArr8 = new byte[i90];
                                                    e9.L(i18 + 12);
                                                    e9.j(0, bArr8, i90);
                                                    byte[] bArr9 = AbstractC3169g.f28081a;
                                                    E e13 = new E(bArr8);
                                                    e13.L(9);
                                                    int iZ5 = e13.z();
                                                    e13.L(20);
                                                    Pair pairCreate = Pair.create(Integer.valueOf(e13.D()), Integer.valueOf(iZ5));
                                                    int iIntValue2 = ((Integer) pairCreate.first).intValue();
                                                    int iIntValue3 = ((Integer) pairCreate.second).intValue();
                                                    listX = H.x(bArr8);
                                                    iF = iIntValue3;
                                                    iRound = iIntValue2;
                                                } else {
                                                    if (iL3 == 1767990114) {
                                                        e9.L(i18 + 9);
                                                        long j8 = 0;
                                                        int i91 = 0;
                                                        for (int i92 = 9; i91 < i92; i92 = 9) {
                                                            if (e9.f28036b == e9.f28037c) {
                                                                throw new IllegalStateException("Attempting to read a byte over the limit.");
                                                            }
                                                            long jZ = e8.z();
                                                            j8 |= (jZ & 127) << (i91 * 7);
                                                            if ((jZ & 128) == 0) {
                                                                int iY = k.y(j8);
                                                                byte[] bArr10 = new byte[iY];
                                                                e9.j(0, bArr10, iY);
                                                                byte[] bArr11 = AbstractC3169g.f28081a;
                                                                e10 = new E(bArr10);
                                                                while ((e10.z() & 128) != 0) {
                                                                }
                                                                e10.M(4);
                                                                int iZ6 = e10.z();
                                                                int iZ7 = e10.z();
                                                                e10.M(1);
                                                                while ((e10.z() & 128) != 0) {
                                                                }
                                                                while ((e10.z() & 128) != 0) {
                                                                }
                                                                strX = e10.x(4, StandardCharsets.UTF_8);
                                                                if (strX.equals("mp4a")) {
                                                                    while ((e10.z() & 128) != 0) {
                                                                    }
                                                                    e10.M(2);
                                                                    d6 = new D();
                                                                    d6.q(e10);
                                                                    i23 = d6.i(5);
                                                                    if (i23 == 31) {
                                                                        i23 = d6.i(6) + 32;
                                                                    }
                                                                    strX = strX + ".40." + i23;
                                                                }
                                                                Object[] objArr2 = {Integer.valueOf(iZ6), Integer.valueOf(iZ7), strX};
                                                                String str14 = M.f28050a;
                                                                str8 = String.format(Locale.US, "iamf.%03X.%03X.%s", objArr2);
                                                                listX = H.x(bArr10);
                                                            } else {
                                                                i91++;
                                                            }
                                                        }
                                                        int iY2 = k.y(j8);
                                                        byte[] bArr12 = new byte[iY2];
                                                        e9.j(0, bArr12, iY2);
                                                        byte[] bArr13 = AbstractC3169g.f28081a;
                                                        e10 = new E(bArr12);
                                                        while ((e10.z() & 128) != 0) {
                                                        }
                                                        e10.M(4);
                                                        int iZ8 = e10.z();
                                                        int iZ9 = e10.z();
                                                        e10.M(1);
                                                        while ((e10.z() & 128) != 0) {
                                                        }
                                                        while ((e10.z() & 128) != 0) {
                                                        }
                                                        strX = e10.x(4, StandardCharsets.UTF_8);
                                                        if (strX.equals("mp4a")) {
                                                            while ((e10.z() & 128) != 0) {
                                                            }
                                                            e10.M(2);
                                                            d6 = new D();
                                                            d6.q(e10);
                                                            i23 = d6.i(5);
                                                            if (i23 == 31) {
                                                                i23 = d6.i(6) + 32;
                                                            }
                                                            strX = strX + ".40." + i23;
                                                        }
                                                        Object[] objArr3 = {Integer.valueOf(iZ8), Integer.valueOf(iZ9), strX};
                                                        String str15 = M.f28050a;
                                                        str8 = String.format(Locale.US, "iamf.%03X.%03X.%s", objArr3);
                                                        listX = H.x(bArr12);
                                                    } else if (iL3 == 1885564227) {
                                                        e9.L(i18 + 12);
                                                        ByteOrder byteOrder = (e8.z() & 1) != 0 ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
                                                        int iZ10 = e8.z();
                                                        if (iIntValue == 1768973165) {
                                                            iA = M.A(iZ10, byteOrder);
                                                            i22 = -1;
                                                        } else {
                                                            iA = (iIntValue == 1718641517 && iZ10 == 32 && byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) ? 4 : i38;
                                                            i22 = -1;
                                                        }
                                                        listX = list2;
                                                        iIntValue = iIntValue;
                                                        i38 = iA;
                                                        str8 = str9;
                                                        if (iA != i22) {
                                                            str2 = "audio/raw";
                                                        }
                                                    } else {
                                                        i19 = iIntValue;
                                                        i21 = iRound;
                                                        i20 = iF;
                                                    }
                                                    str2 = str4;
                                                }
                                                i39 = i18;
                                                i16 = iL2;
                                            }
                                        }
                                        str8 = str9;
                                        str2 = str4;
                                        i39 = i18;
                                        i16 = iL2;
                                    }
                                } else {
                                    if (i88 <= 0) {
                                        throw P.a("Invalid sample rate for Dolby TrueHD MLP stream: " + i88, null);
                                    }
                                    e9 = e8;
                                    listX = list2;
                                    str8 = str9;
                                    str2 = str4;
                                    i39 = i18;
                                    i16 = iL2;
                                    iL = i88;
                                    iRound = iL;
                                    iF = 2;
                                }
                            }
                        }
                        listX = list2;
                        iIntValue = i19;
                        iF = i20;
                        iRound = i21;
                        str8 = str9;
                        str2 = str4;
                        i39 = i18;
                        i16 = iL2;
                    }
                    int i93 = i39 + i16;
                    i36 = i9;
                    i37 = i10;
                    str7 = str7;
                    c3131nA = c3131nA;
                    str6 = str3;
                    iF = iF;
                    i39 = i93;
                    gVar2 = gVar2;
                    e11 = e9;
                    iRound = iRound;
                    iIntValue = iIntValue;
                }
                str8 = str9;
            }
            e9 = e11;
            str3 = str6;
            i16 = iL2;
            int i94 = i39 + i16;
            i36 = i9;
            i37 = i10;
            str7 = str7;
            c3131nA = c3131nA;
            str6 = str3;
            iF = iF;
            i39 = i94;
            gVar2 = gVar2;
            e11 = e9;
            iRound = iRound;
            iIntValue = iIntValue;
        }
        String str16 = str6;
        String str17 = str2;
        g gVar3 = gVar2;
        C3131n c3131n2 = c3131nA;
        int i95 = iRound;
        int i96 = iF;
        String str18 = str8;
        List list3 = listX;
        if (((C3136t) gVar3.f10557K) != null || str17 == null) {
            return;
        }
        C3135s c3135s5 = new C3135s();
        c3135s5.f26983a = Integer.toString(i11);
        c3135s5.f26996n = O.p(str17);
        c3135s5.f26992j = str18;
        c3135s5.f26973F = i96;
        c3135s5.f26974G = i95;
        c3135s5.f26975H = i38;
        c3135s5.f26999q = list3;
        c3135s5.f27000r = c3131n2;
        c3135s5.f26986d = str16;
        c cVar2 = cVar;
        if (cVar2 != null) {
            c3135s5.f26990h = k.d0(cVar2.f27687c);
            c3135s5.f26991i = k.d0(cVar2.f27688d);
        } else {
            C c10 = c8;
            if (c10 != null) {
                c3135s5.f26990h = k.d0(c10.f6627a);
                c3135s5.f26991i = k.d0(c10.f6628b);
            }
        }
        gVar3.f10557K = new C3136t(c3135s5);
    }

    public static c c(int i8, E e8) {
        e8.L(i8 + 12);
        e8.M(1);
        d(e8);
        e8.M(2);
        int iZ = e8.z();
        if ((iZ & 128) != 0) {
            e8.M(2);
        }
        if ((iZ & 64) != 0) {
            e8.M(e8.z());
        }
        if ((iZ & 32) != 0) {
            e8.M(2);
        }
        e8.M(1);
        d(e8);
        String strF = O.f(e8.z());
        if ("audio/mpeg".equals(strF) || "audio/vnd.dts".equals(strF) || "audio/vnd.dts.hd".equals(strF)) {
            return new c(strF, null, -1L, -1L);
        }
        e8.M(4);
        long jB = e8.B();
        long jB2 = e8.B();
        e8.M(1);
        int iD = d(e8);
        byte[] bArr = new byte[iD];
        e8.j(0, bArr, iD);
        return new c(strF, bArr, jB2 > 0 ? jB2 : -1L, jB > 0 ? jB : -1L);
    }

    public static int d(E e8) {
        int iZ = e8.z();
        int i8 = iZ & 127;
        while ((iZ & 128) == 128) {
            iZ = e8.z();
            i8 = (i8 << 7) | (iZ & 127);
        }
        return i8;
    }

    public static int e(int i8) {
        return (i8 >> 24) & 255;
    }

    public static N f(c cVar) {
        a aVar;
        d dVarF = cVar.f(1751411826);
        d dVarF2 = cVar.f(1801812339);
        d dVarF3 = cVar.f(1768715124);
        if (dVarF == null || dVarF2 == null || dVarF3 == null) {
            return null;
        }
        E e8 = dVarF.f29446c;
        e8.L(16);
        if (e8.l() != 1835299937) {
            return null;
        }
        E e9 = dVarF2.f29446c;
        e9.L(12);
        int iL = e9.l();
        String[] strArr = new String[iL];
        for (int i8 = 0; i8 < iL; i8++) {
            int iL2 = e9.l();
            e9.M(4);
            strArr[i8] = e9.x(iL2 - 8, StandardCharsets.UTF_8);
        }
        E e10 = dVarF3.f29446c;
        e10.L(8);
        ArrayList arrayList = new ArrayList();
        while (e10.a() > 8) {
            int i9 = e10.f28036b;
            int iL3 = e10.l();
            int iL4 = e10.l() - 1;
            if (iL4 < 0 || iL4 >= iL) {
                U2.v("Skipped metadata with unknown key index: ", iL4, "BoxParsers");
            } else {
                String str = strArr[iL4];
                int i10 = i9 + iL3;
                while (true) {
                    int i11 = e10.f28036b;
                    if (i11 >= i10) {
                        aVar = null;
                        break;
                    }
                    int iL5 = e10.l();
                    if (e10.l() == 1684108385) {
                        int iL6 = e10.l();
                        int iL7 = e10.l();
                        int i12 = iL5 - 16;
                        byte[] bArr = new byte[i12];
                        e10.j(0, bArr, i12);
                        aVar = new a(str, bArr, iL7, iL6);
                        break;
                    }
                    e10.L(i11 + iL5);
                }
                if (aVar != null) {
                    arrayList.add(aVar);
                }
            }
            e10.L(i9 + iL3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new N(arrayList);
    }

    public static p125q0.g g(E e8) {
        long jT;
        long jT2;
        e8.L(8);
        if (e(e8.l()) == 0) {
            jT = e8.B();
            jT2 = e8.B();
        } else {
            jT = e8.t();
            jT2 = e8.t();
        }
        return new p125q0.g(jT, jT2, e8.B());
    }

    public static Pair h(int i8, int i9, E e8) throws P {
        q qVar;
        Pair pairCreate;
        int i10;
        int i11;
        byte[] bArr;
        int i12 = e8.f28036b;
        while (i12 - i8 < i9) {
            e8.L(i12);
            int iL = e8.l();
            f.c("childAtomSize must be positive", iL > 0);
            if (e8.l() == 1936289382) {
                int i13 = i12 + 8;
                int i14 = -1;
                int i15 = 0;
                String strX = null;
                Integer numValueOf = null;
                while (i13 - i12 < iL) {
                    e8.L(i13);
                    int iL2 = e8.l();
                    int iL3 = e8.l();
                    if (iL3 == 1718775137) {
                        numValueOf = Integer.valueOf(e8.l());
                    } else if (iL3 == 1935894637) {
                        e8.M(4);
                        strX = e8.x(4, StandardCharsets.UTF_8);
                    } else if (iL3 == 1935894633) {
                        i14 = i13;
                        i15 = iL2;
                    }
                    i13 += iL2;
                }
                if ("cenc".equals(strX) || "cbc1".equals(strX) || "cens".equals(strX) || "cbcs".equals(strX)) {
                    f.c("frma atom is mandatory", numValueOf != null);
                    f.c("schi atom is mandatory", i14 != -1);
                    int i16 = i14 + 8;
                    while (true) {
                        if (i16 - i14 >= i15) {
                            qVar = null;
                            break;
                        }
                        e8.L(i16);
                        int iL4 = e8.l();
                        if (e8.l() == 1952804451) {
                            int iE = e(e8.l());
                            e8.M(1);
                            if (iE == 0) {
                                e8.M(1);
                                i10 = 0;
                                i11 = 0;
                            } else {
                                int iZ = e8.z();
                                int i17 = (iZ & 240) >> 4;
                                i10 = iZ & 15;
                                i11 = i17;
                            }
                            boolean z7 = e8.z() == 1;
                            int iZ2 = e8.z();
                            byte[] bArr2 = new byte[16];
                            e8.j(0, bArr2, 16);
                            if (z7 && iZ2 == 0) {
                                int iZ3 = e8.z();
                                byte[] bArr3 = new byte[iZ3];
                                e8.j(0, bArr3, iZ3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            qVar = new q(z7, strX, iZ2, bArr2, i11, i10, bArr);
                            break;
                        }
                        i16 += iL4;
                    }
                    f.c("tenc atom is mandatory", qVar != null);
                    String str = M.f28050a;
                    pairCreate = Pair.create(numValueOf, qVar);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i12 += iL;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:155:0x0330  */
    /* JADX WARN: Code duplicated, block: B:315:0x06f7  */
    /* JADX WARN: Code duplicated, block: B:380:0x08b2  */
    /* JADX WARN: Code duplicated, block: B:382:0x08d8  */
    /* JADX WARN: Code duplicated, block: B:384:0x08de  */
    /* JADX WARN: Code duplicated, block: B:385:0x08f5  */
    /* JADX WARN: Code duplicated, block: B:390:0x091f  */
    /* JADX WARN: Code duplicated, block: B:392:0x092d  */
    /* JADX WARN: Code duplicated, block: B:393:0x0944  */
    /* JADX WARN: Code duplicated, block: B:395:0x094a  */
    /* JADX WARN: Code duplicated, block: B:396:0x0962  */
    /* JADX WARN: Code duplicated, block: B:398:0x0968  */
    /* JADX WARN: Code duplicated, block: B:399:0x0980  */
    /* JADX WARN: Code duplicated, block: B:401:0x0988  */
    /* JADX WARN: Code duplicated, block: B:403:0x0992  */
    /* JADX WARN: Code duplicated, block: B:407:0x09b0  */
    /* JADX WARN: Code duplicated, block: B:408:0x09b5  */
    /* JADX WARN: Code duplicated, block: B:411:0x09bf  */
    /* JADX WARN: Code duplicated, block: B:414:0x09c9  */
    /* JADX WARN: Code duplicated, block: B:415:0x09cb  */
    /* JADX WARN: Code duplicated, block: B:419:0x09d8  */
    /* JADX WARN: Code duplicated, block: B:421:0x09dd  */
    /* JADX WARN: Code duplicated, block: B:422:0x09e2  */
    /* JADX WARN: Code duplicated, block: B:425:0x09ed A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:429:0x09f5  */
    /* JADX WARN: Code duplicated, block: B:432:0x09fd  */
    /* JADX WARN: Code duplicated, block: B:435:0x0a04  */
    /* JADX WARN: Code duplicated, block: B:437:0x0a14  */
    /* JADX WARN: Code duplicated, block: B:439:0x0a17  */
    /* JADX WARN: Code duplicated, block: B:443:0x0a1f  */
    /* JADX WARN: Code duplicated, block: B:447:0x0a2a  */
    /* JADX WARN: Code duplicated, block: B:448:0x0a2c  */
    /* JADX WARN: Code duplicated, block: B:450:0x0a38  */
    /* JADX WARN: Code duplicated, block: B:613:0x0995 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:380:0x08b2, please report this as an issue */
    public static g i(E e8, C1288f2 c1288f2, String str, C3131n c3131n, boolean z7) throws P {
        int i8;
        int i9;
        int i10;
        int i11;
        C3131n c3131nA;
        byte[] bArr;
        List list;
        C1288f2 c1288f3;
        String str2;
        int i12;
        List listX;
        boolean z8;
        int i13;
        String str3;
        int i14;
        g gVar;
        int i15;
        List listM0;
        d0 d0VarX;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean zH;
        int i20;
        int i21;
        int i22;
        int i23;
        boolean zH2;
        int i24;
        int i25;
        boolean z9;
        int i26;
        int i27;
        int i28;
        C3126i c3126i;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        boolean z10;
        String str4;
        List listM1;
        d0 d0VarX2;
        String str5;
        long j8;
        C1288f2 c1288f4 = c1288f2;
        String str6 = str;
        e8.L(12);
        int iL = e8.l();
        g gVar2 = new g(iL, 7);
        int i35 = 0;
        while (i35 < iL) {
            int i36 = e8.f28036b;
            int iL2 = e8.l();
            String str7 = "childAtomSize must be positive";
            f.c("childAtomSize must be positive", iL2 > 0);
            int iL3 = e8.l();
            int i37 = c1288f4.f18711a;
            if (iL3 == 1635148593 || iL3 == 1635148595 || iL3 == 1701733238 || iL3 == 1831958048 || iL3 == 1836070006 || iL3 == 1752589105 || iL3 == 1751479857 || iL3 == 1932670515 || iL3 == 1211250227 || iL3 == 1748121139 || iL3 == 1987063864 || iL3 == 1987063865 || iL3 == 1635135537 || iL3 == 1685479798 || iL3 == 1685479729 || iL3 == 1685481573 || iL3 == 1685481521 || iL3 == 1634760241) {
                i8 = iL;
                i9 = i35;
                i10 = i36;
                i11 = iL2;
                e8.L(i10 + 16);
                e8.M(16);
                int iF = e8.F();
                int iF2 = e8.F();
                e8.M(50);
                int i38 = e8.f28036b;
                if (iL3 == 1701733238) {
                    Pair pairH = h(i10, i11, e8);
                    if (pairH != null) {
                        iL3 = ((Integer) pairH.first).intValue();
                        c3131nA = c3131n == 0 ? null : c3131n.a(((q) pairH.second).f27811b);
                        ((q[]) gVar2.f10556J)[i9] = (q) pairH.second;
                    } else {
                        c3131nA = c3131n;
                    }
                    e8.L(i38);
                } else {
                    c3131nA = c3131n;
                }
                String str8 = iL3 == 1831958048 ? "video/mpeg" : iL3 == 1211250227 ? "video/3gpp" : null;
                int i39 = iL3;
                C3131n c3131n2 = c3131nA;
                int i40 = i38;
                m mVar = null;
                int i41 = -1;
                int i42 = 8;
                int i43 = -1;
                boolean z11 = false;
                List list2 = null;
                int i44 = 8;
                int i45 = -1;
                float fD = 1.0f;
                ByteBuffer byteBufferOrder = null;
                int i46 = -1;
                String str9 = null;
                byte[] bArrCopyOfRange = null;
                int i47 = -1;
                int i48 = -1;
                int i49 = -1;
                int i50 = -1;
                C c8 = null;
                c cVar = null;
                while (true) {
                    if (i40 - i10 >= i11) {
                        bArr = null;
                        list = list2;
                        break;
                    }
                    e8.L(i40);
                    int i51 = e8.f28036b;
                    int i52 = i40;
                    int iL4 = e8.l();
                    List list3 = list2;
                    if (iL4 == 0 && e8.f28036b - i10 == i11) {
                        list = list3;
                        bArr = null;
                        break;
                    }
                    f.c(str7, iL4 > 0);
                    int iL5 = e8.l();
                    int i53 = i11;
                    if (iL5 == 1635148611) {
                        f.c(null, str8 == null);
                        e8.L(i51 + 8);
                        C0372e c0372eA = C0372e.a(e8);
                        gVar2.f10554H = c0372eA.f7394b;
                        float f8 = !z11 ? c0372eA.f7403k : fD;
                        List list4 = c0372eA.f7393a;
                        String str10 = c0372eA.f7404l;
                        int i54 = c0372eA.f7402j;
                        int i55 = c0372eA.f7399g;
                        int i56 = c0372eA.f7400h;
                        int i57 = c0372eA.f7401i;
                        int i58 = c0372eA.f7397e;
                        i13 = c0372eA.f7398f;
                        str9 = str10;
                        i47 = i54;
                        i41 = i55;
                        z8 = z11;
                        str3 = str7;
                        i14 = i56;
                        i43 = i57;
                        gVar = gVar2;
                        i12 = i10;
                        str8 = "video/avc";
                        i15 = i46;
                        i44 = i58;
                        listX = list4;
                        fD = f8;
                    } else {
                        i12 = i10;
                        if (iL5 == 1752589123) {
                            f.c(null, str8 == null);
                            e8.L(i51 + 8);
                            B bA = B.a(e8, false, null);
                            gVar2.f10554H = bA.f7306b;
                            float f9 = !z11 ? bA.f7316l : fD;
                            int i59 = bA.f7315k;
                            if (i59 != -1) {
                                i46 = i59;
                            }
                            List list5 = bA.f7305a;
                            int i60 = bA.f7317m;
                            int i61 = bA.f7307c;
                            String str11 = bA.f7318n;
                            int i62 = bA.f7308d;
                            int i63 = bA.f7309e;
                            int i64 = bA.f7312h;
                            int i65 = bA.f7313i;
                            int i66 = bA.f7314j;
                            int i67 = bA.f7310f;
                            i13 = bA.f7311g;
                            i48 = i61;
                            str9 = str11;
                            i49 = i62;
                            i50 = i63;
                            str3 = str7;
                            i41 = i64;
                            i14 = i65;
                            gVar = gVar2;
                            str8 = "video/hevc";
                            i47 = i60;
                            i43 = i66;
                            i44 = i67;
                            z8 = z11;
                            listX = list5;
                            fD = f9;
                            i15 = i46;
                            i39 = i39;
                            mVar = bA.f7319o;
                        } else if (iL5 == 1818785347) {
                            f.c("lhvC must follow hvcC atom", "video/hevc".equals(str8));
                            f.c("must have at least two layers", mVar != null && mVar.f29483a.size() >= 2);
                            e8.L(i51 + 8);
                            mVar.getClass();
                            B bA2 = B.a(e8, true, mVar);
                            f.c("nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms", gVar2.f10554H == bA2.f7306b);
                            int i68 = bA2.f7312h;
                            if (i68 != -1) {
                                f.c("colorSpace must be the same for both views", i41 == i68);
                            }
                            int i69 = bA2.f7313i;
                            if (i69 != -1) {
                                f.c("colorRange must be the same for both views", i45 == i69);
                            }
                            int i70 = bA2.f7314j;
                            if (i70 != -1) {
                                f.c("colorTransfer must be the same for both views", i43 == i70);
                            }
                            f.c("bitdepthLuma must be the same for both views", i44 == bA2.f7310f);
                            f.c("bitdepthChroma must be the same for both views", i42 == bA2.f7311g);
                            if (list3 != null) {
                                z4.E eQ = H.q();
                                eQ.j0(list3);
                                eQ.j0(bA2.f7305a);
                                listM1 = eQ.m0();
                            } else {
                                f.c("initializationData must be already set from hvcC atom", false);
                                listM1 = list3;
                            }
                            str8 = "video/mv-hevc";
                            str9 = bA2.f7318n;
                            i13 = i42;
                            z8 = z11;
                            str3 = str7;
                            listX = listM1;
                            i14 = i45;
                            gVar = gVar2;
                            i15 = i46;
                        } else {
                            listX = list3;
                            z8 = z11;
                            if (iL5 == 1986361461) {
                                e8.L(i51 + 8);
                                int i71 = e8.f28036b;
                                U u7 = null;
                                while (i71 - i51 < iL4) {
                                    e8.L(i71);
                                    int iL6 = e8.l();
                                    g gVar3 = gVar2;
                                    f.c(str7, iL6 > 0);
                                    int i72 = i42;
                                    if (e8.l() == 1702454643) {
                                        e8.L(i71 + 8);
                                        int i73 = e8.f28036b;
                                        while (true) {
                                            if (i73 - i71 >= iL6) {
                                                str4 = str7;
                                                u7 = null;
                                                break;
                                            }
                                            e8.L(i73);
                                            int iL7 = e8.l();
                                            f.c(str7, iL7 > 0);
                                            str4 = str7;
                                            if (e8.l() == 1937011305) {
                                                e8.M(4);
                                                int iZ = e8.z();
                                                boolean z12 = (iZ & 1) == 1;
                                                boolean z13 = (iZ & 2) == 2;
                                                boolean z14 = (iZ & 8) == 8;
                                                C0117g c0117g = new C0117g();
                                                c0117g.f1935a = z12;
                                                c0117g.f1936b = z13;
                                                c0117g.f1937c = z14;
                                                u7 = new U(c0117g, 12);
                                                break;
                                            }
                                            i73 += iL7;
                                            str7 = str4;
                                        }
                                    } else {
                                        str4 = str7;
                                    }
                                    i71 += iL6;
                                    i42 = i72;
                                    gVar2 = gVar3;
                                    str7 = str4;
                                    i44 = i44;
                                    i45 = i45;
                                }
                                i13 = i42;
                                str3 = str7;
                                int i74 = i44;
                                i14 = i45;
                                gVar = gVar2;
                                U u8 = u7 == null ? null : new U(u7, 13);
                                if (u8 == null || ((U) u8.f1868H) == null) {
                                    i33 = i46;
                                } else if (mVar == null || mVar.f29483a.size() < 2) {
                                    i33 = i46;
                                    i34 = i33 == -1 ? ((C0117g) ((U) u8.f1868H).f1868H).f1937c ? 5 : 4 : i33;
                                } else {
                                    U u9 = (U) u8.f1868H;
                                    if (u9 != null) {
                                        C0117g c0117g2 = (C0117g) u9.f1868H;
                                        if (c0117g2.f1935a && c0117g2.f1936b) {
                                            z10 = true;
                                        } else {
                                            z10 = false;
                                        }
                                    } else {
                                        z10 = false;
                                    }
                                    f.c("both eye views must be marked as available", z10);
                                    f.c("for MV-HEVC, eye_views_reversed must be set to false", !((C0117g) ((U) u8.f1868H).f1868H).f1937c);
                                    i33 = i46;
                                }
                                i15 = i34;
                                i44 = i74;
                            } else {
                                i13 = i42;
                                str3 = str7;
                                i44 = i44;
                                i14 = i45;
                                gVar = gVar2;
                                i15 = i46;
                                if (iL5 == 1685480259 || iL5 == 1685485123 || iL5 == 1685485379) {
                                    int i75 = iL4 - 8;
                                    byte[] bArr2 = new byte[i75];
                                    e8.j(0, bArr2, i75);
                                    if (listX != null) {
                                        z4.E eQ2 = H.q();
                                        eQ2.j0(listX);
                                        eQ2.g0(bArr2);
                                        listM0 = eQ2.m0();
                                    } else {
                                        f.c("initializationData must already be set from hvcC or avcC atom", false);
                                        listM0 = listX;
                                    }
                                    e8.L(i51 + 8);
                                    r rVarA = r.a(e8);
                                    if (rVarA != null) {
                                        str9 = rVarA.f7454a;
                                        str8 = "video/dolby-vision";
                                    }
                                    listX = listM0;
                                    i44 = i44;
                                } else if (iL5 == 1987076931) {
                                    f.c(null, str8 == null);
                                    int i76 = i39;
                                    String str12 = i76 == 1987063864 ? "video/x-vnd.on2.vp8" : "video/x-vnd.on2.vp9";
                                    e8.L(i51 + 12);
                                    byte bZ = (byte) e8.z();
                                    byte bZ2 = (byte) e8.z();
                                    int iZ2 = e8.z();
                                    int i77 = iZ2 >> 4;
                                    byte b8 = (byte) ((iZ2 >> 1) & 7);
                                    if (str12.equals("video/x-vnd.on2.vp9")) {
                                        byte[] bArr3 = AbstractC3169g.f28081a;
                                        listX = H.x(new byte[]{1, 1, bZ, 2, 1, bZ2, 3, 1, (byte) i77, 4, 1, b8});
                                    }
                                    boolean z15 = (iZ2 & 1) != 0;
                                    int iZ3 = e8.z();
                                    int iZ4 = e8.z();
                                    int iH = C3126i.h(iZ3);
                                    mVar = mVar;
                                    i14 = z15 ? 1 : 2;
                                    i15 = i15;
                                    i43 = C3126i.i(iZ4);
                                    i39 = i76;
                                    i44 = i77;
                                    i13 = i44;
                                    String str13 = str12;
                                    i41 = iH;
                                    str8 = str13;
                                } else {
                                    i39 = i39;
                                    if (iL5 == 1635135811) {
                                        int i78 = iL4 - 8;
                                        byte[] bArr4 = new byte[i78];
                                        e8.j(0, bArr4, i78);
                                        d0VarX = H.x(bArr4);
                                        e8.L(i51 + 8);
                                        D d6 = new D(e8.f28035a, 0, (Object) null);
                                        d6.r(e8.f28036b * 8);
                                        d6.v(1);
                                        int i79 = d6.i(3);
                                        d6.u(6);
                                        boolean zH3 = d6.h();
                                        boolean zH4 = d6.h();
                                        if (i79 == 2 && zH3) {
                                            i17 = zH4 ? 12 : 10;
                                            i18 = zH4 ? 12 : 10;
                                        } else {
                                            if (i79 <= 2) {
                                                int i80 = zH3 ? 10 : 8;
                                                i18 = zH3 ? 10 : 8;
                                                i17 = i80;
                                            } else {
                                                i16 = 13;
                                                i17 = -1;
                                                i18 = -1;
                                            }
                                            d6.u(i16);
                                            d6.t();
                                            i19 = d6.i(4);
                                            if (i19 != 1) {
                                                x.e("BoxParsers", "Unsupported obu_type: " + i19);
                                                c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                            } else if (d6.h()) {
                                                x.e("BoxParsers", "Unsupported obu_extension_flag");
                                                c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                            } else {
                                                zH = d6.h();
                                                d6.t();
                                                if (zH || d6.i(8) <= 127) {
                                                    i20 = d6.i(3);
                                                    d6.t();
                                                    if (d6.h()) {
                                                        x.e("BoxParsers", "Unsupported reduced_still_picture_header");
                                                        c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                    } else if (d6.h()) {
                                                        x.e("BoxParsers", "Unsupported timing_info_present_flag");
                                                        c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                    } else {
                                                        if (d6.h()) {
                                                            x.e("BoxParsers", "Unsupported initial_display_delay_present_flag");
                                                            c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                        } else {
                                                            i21 = d6.i(5);
                                                            for (i22 = 0; i22 <= i21; i22++) {
                                                                d6.u(12);
                                                                if (d6.i(5) > 7) {
                                                                    d6.t();
                                                                }
                                                            }
                                                            int i81 = d6.i(4);
                                                            int i82 = d6.i(4);
                                                            d6.u(i81 + 1);
                                                            d6.u(i82 + 1);
                                                            if (d6.h()) {
                                                                i23 = 7;
                                                                d6.u(7);
                                                            } else {
                                                                i23 = 7;
                                                            }
                                                            d6.u(i23);
                                                            zH2 = d6.h();
                                                            if (zH2) {
                                                                d6.u(2);
                                                            }
                                                            if (d6.h()) {
                                                                i24 = 1;
                                                            } else {
                                                                i24 = 1;
                                                                if (d6.i(1) > 0) {
                                                                }
                                                                if (zH2) {
                                                                    i25 = 3;
                                                                    d6.u(3);
                                                                } else {
                                                                    i25 = 3;
                                                                }
                                                                d6.u(i25);
                                                                boolean zH5 = d6.h();
                                                                if (i20 == 2 && zH5) {
                                                                    d6.t();
                                                                }
                                                                if (i20 == 1 && d6.h()) {
                                                                    z9 = true;
                                                                } else {
                                                                    z9 = false;
                                                                }
                                                                if (d6.h()) {
                                                                    i29 = d6.i(8);
                                                                    int i83 = d6.i(8);
                                                                    int i84 = d6.i(8);
                                                                    if (z9) {
                                                                        i30 = 1;
                                                                    } else {
                                                                        i30 = 1;
                                                                        if (i29 != 1 && i83 == 13 && i84 == 0) {
                                                                            i31 = 1;
                                                                        }
                                                                        int iH2 = C3126i.h(i29);
                                                                        if (i31 == i30) {
                                                                            i32 = 1;
                                                                        } else {
                                                                            i32 = 2;
                                                                        }
                                                                        i28 = C3126i.i(i83);
                                                                        i27 = i32;
                                                                        i26 = iH2;
                                                                    }
                                                                    i31 = d6.i(i30);
                                                                    int iH3 = C3126i.h(i29);
                                                                    if (i31 == i30) {
                                                                        i32 = 1;
                                                                    } else {
                                                                        i32 = 2;
                                                                    }
                                                                    i28 = C3126i.i(i83);
                                                                    i27 = i32;
                                                                    i26 = iH3;
                                                                } else {
                                                                    i26 = -1;
                                                                    i27 = -1;
                                                                    i28 = -1;
                                                                }
                                                                c3126i = new C3126i(i26, i27, i28, null, i17, i18);
                                                            }
                                                            if (!d6.h()) {
                                                                d6.u(i24);
                                                            }
                                                            if (zH2) {
                                                                i25 = 3;
                                                                d6.u(3);
                                                            } else {
                                                                i25 = 3;
                                                            }
                                                            d6.u(i25);
                                                            boolean zH6 = d6.h();
                                                            if (i20 == 2) {
                                                                d6.t();
                                                            }
                                                            if (i20 == 1) {
                                                                z9 = false;
                                                            } else {
                                                                z9 = false;
                                                            }
                                                            if (d6.h()) {
                                                                i29 = d6.i(8);
                                                                int i85 = d6.i(8);
                                                                int i86 = d6.i(8);
                                                                if (z9) {
                                                                    i30 = 1;
                                                                    if (i29 != 1) {
                                                                    }
                                                                    int iH4 = C3126i.h(i29);
                                                                    if (i31 == i30) {
                                                                        i32 = 1;
                                                                    } else {
                                                                        i32 = 2;
                                                                    }
                                                                    i28 = C3126i.i(i85);
                                                                    i27 = i32;
                                                                    i26 = iH4;
                                                                } else {
                                                                    i30 = 1;
                                                                }
                                                                i31 = d6.i(i30);
                                                                int iH5 = C3126i.h(i29);
                                                                if (i31 == i30) {
                                                                    i32 = 1;
                                                                } else {
                                                                    i32 = 2;
                                                                }
                                                                i28 = C3126i.i(i85);
                                                                i27 = i32;
                                                                i26 = iH5;
                                                            } else {
                                                                i26 = -1;
                                                                i27 = -1;
                                                                i28 = -1;
                                                            }
                                                            c3126i = new C3126i(i26, i27, i28, null, i17, i18);
                                                        }
                                                        int i87 = c3126i.f26876e;
                                                        int i88 = c3126i.f26877f;
                                                        int i89 = c3126i.f26872a;
                                                        mVar = mVar;
                                                        i14 = c3126i.f26873b;
                                                        i15 = i15;
                                                        i39 = i39;
                                                        i13 = i88;
                                                        i44 = i87;
                                                        i43 = c3126i.f26874c;
                                                        str8 = "video/av01";
                                                        i41 = i89;
                                                    }
                                                } else {
                                                    x.e("BoxParsers", "Excessive obu_size");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                }
                                            }
                                            int i810 = c3126i.f26876e;
                                            int i811 = c3126i.f26877f;
                                            int i812 = c3126i.f26872a;
                                            mVar = mVar;
                                            i14 = c3126i.f26873b;
                                            i15 = i15;
                                            i39 = i39;
                                            i13 = i811;
                                            i44 = i810;
                                            i43 = c3126i.f26874c;
                                            str8 = "video/av01";
                                            i41 = i812;
                                        }
                                        i16 = 13;
                                        d6.u(i16);
                                        d6.t();
                                        i19 = d6.i(4);
                                        if (i19 != 1) {
                                            x.e("BoxParsers", "Unsupported obu_type: " + i19);
                                            c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                        } else if (d6.h()) {
                                            x.e("BoxParsers", "Unsupported obu_extension_flag");
                                            c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                        } else {
                                            zH = d6.h();
                                            d6.t();
                                            if (zH) {
                                                i20 = d6.i(3);
                                                d6.t();
                                                if (d6.h()) {
                                                    x.e("BoxParsers", "Unsupported reduced_still_picture_header");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                } else if (d6.h()) {
                                                    x.e("BoxParsers", "Unsupported timing_info_present_flag");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                } else if (d6.h()) {
                                                    x.e("BoxParsers", "Unsupported initial_display_delay_present_flag");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                } else {
                                                    i21 = d6.i(5);
                                                    while (i22 <= i21) {
                                                        d6.u(12);
                                                        if (d6.i(5) > 7) {
                                                            d6.t();
                                                        }
                                                    }
                                                    int i813 = d6.i(4);
                                                    int i814 = d6.i(4);
                                                    d6.u(i813 + 1);
                                                    d6.u(i814 + 1);
                                                    if (d6.h()) {
                                                        i23 = 7;
                                                        d6.u(7);
                                                    } else {
                                                        i23 = 7;
                                                    }
                                                    d6.u(i23);
                                                    zH2 = d6.h();
                                                    if (zH2) {
                                                        d6.u(2);
                                                    }
                                                    if (d6.h()) {
                                                        i24 = 1;
                                                    } else {
                                                        i24 = 1;
                                                        if (d6.i(1) > 0) {
                                                        }
                                                        if (zH2) {
                                                            i25 = 3;
                                                            d6.u(3);
                                                        } else {
                                                            i25 = 3;
                                                        }
                                                        d6.u(i25);
                                                        boolean zH7 = d6.h();
                                                        if (i20 == 2) {
                                                            d6.t();
                                                        }
                                                        if (i20 == 1) {
                                                            z9 = false;
                                                        } else {
                                                            z9 = false;
                                                        }
                                                        if (d6.h()) {
                                                            i29 = d6.i(8);
                                                            int i815 = d6.i(8);
                                                            int i816 = d6.i(8);
                                                            if (z9) {
                                                                i30 = 1;
                                                                if (i29 != 1) {
                                                                }
                                                                int iH6 = C3126i.h(i29);
                                                                if (i31 == i30) {
                                                                    i32 = 1;
                                                                } else {
                                                                    i32 = 2;
                                                                }
                                                                i28 = C3126i.i(i815);
                                                                i27 = i32;
                                                                i26 = iH6;
                                                            } else {
                                                                i30 = 1;
                                                            }
                                                            i31 = d6.i(i30);
                                                            int iH7 = C3126i.h(i29);
                                                            if (i31 == i30) {
                                                                i32 = 1;
                                                            } else {
                                                                i32 = 2;
                                                            }
                                                            i28 = C3126i.i(i815);
                                                            i27 = i32;
                                                            i26 = iH7;
                                                        } else {
                                                            i26 = -1;
                                                            i27 = -1;
                                                            i28 = -1;
                                                        }
                                                        c3126i = new C3126i(i26, i27, i28, null, i17, i18);
                                                    }
                                                    if (!d6.h()) {
                                                        d6.u(i24);
                                                    }
                                                    if (zH2) {
                                                        i25 = 3;
                                                        d6.u(3);
                                                    } else {
                                                        i25 = 3;
                                                    }
                                                    d6.u(i25);
                                                    boolean zH8 = d6.h();
                                                    if (i20 == 2) {
                                                        d6.t();
                                                    }
                                                    if (i20 == 1) {
                                                        z9 = false;
                                                    } else {
                                                        z9 = false;
                                                    }
                                                    if (d6.h()) {
                                                        i29 = d6.i(8);
                                                        int i817 = d6.i(8);
                                                        int i818 = d6.i(8);
                                                        if (z9) {
                                                            i30 = 1;
                                                            if (i29 != 1) {
                                                            }
                                                            int iH8 = C3126i.h(i29);
                                                            if (i31 == i30) {
                                                                i32 = 1;
                                                            } else {
                                                                i32 = 2;
                                                            }
                                                            i28 = C3126i.i(i817);
                                                            i27 = i32;
                                                            i26 = iH8;
                                                        } else {
                                                            i30 = 1;
                                                        }
                                                        i31 = d6.i(i30);
                                                        int iH9 = C3126i.h(i29);
                                                        if (i31 == i30) {
                                                            i32 = 1;
                                                        } else {
                                                            i32 = 2;
                                                        }
                                                        i28 = C3126i.i(i817);
                                                        i27 = i32;
                                                        i26 = iH9;
                                                    } else {
                                                        i26 = -1;
                                                        i27 = -1;
                                                        i28 = -1;
                                                    }
                                                    c3126i = new C3126i(i26, i27, i28, null, i17, i18);
                                                }
                                            } else {
                                                i20 = d6.i(3);
                                                d6.t();
                                                if (d6.h()) {
                                                    x.e("BoxParsers", "Unsupported reduced_still_picture_header");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                } else if (d6.h()) {
                                                    x.e("BoxParsers", "Unsupported timing_info_present_flag");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                } else if (d6.h()) {
                                                    x.e("BoxParsers", "Unsupported initial_display_delay_present_flag");
                                                    c3126i = new C3126i(-1, -1, -1, null, i17, i18);
                                                } else {
                                                    i21 = d6.i(5);
                                                    while (i22 <= i21) {
                                                        d6.u(12);
                                                        if (d6.i(5) > 7) {
                                                            d6.t();
                                                        }
                                                    }
                                                    int i819 = d6.i(4);
                                                    int i8110 = d6.i(4);
                                                    d6.u(i819 + 1);
                                                    d6.u(i8110 + 1);
                                                    if (d6.h()) {
                                                        i23 = 7;
                                                        d6.u(7);
                                                    } else {
                                                        i23 = 7;
                                                    }
                                                    d6.u(i23);
                                                    zH2 = d6.h();
                                                    if (zH2) {
                                                        d6.u(2);
                                                    }
                                                    if (d6.h()) {
                                                        i24 = 1;
                                                    } else {
                                                        i24 = 1;
                                                        if (d6.i(1) > 0) {
                                                        }
                                                        if (zH2) {
                                                            i25 = 3;
                                                            d6.u(3);
                                                        } else {
                                                            i25 = 3;
                                                        }
                                                        d6.u(i25);
                                                        boolean zH9 = d6.h();
                                                        if (i20 == 2) {
                                                            d6.t();
                                                        }
                                                        if (i20 == 1) {
                                                            z9 = false;
                                                        } else {
                                                            z9 = false;
                                                        }
                                                        if (d6.h()) {
                                                            i29 = d6.i(8);
                                                            int i8111 = d6.i(8);
                                                            int i8112 = d6.i(8);
                                                            if (z9) {
                                                                i30 = 1;
                                                                if (i29 != 1) {
                                                                }
                                                                int iH10 = C3126i.h(i29);
                                                                if (i31 == i30) {
                                                                    i32 = 1;
                                                                } else {
                                                                    i32 = 2;
                                                                }
                                                                i28 = C3126i.i(i8111);
                                                                i27 = i32;
                                                                i26 = iH10;
                                                            } else {
                                                                i30 = 1;
                                                            }
                                                            i31 = d6.i(i30);
                                                            int iH11 = C3126i.h(i29);
                                                            if (i31 == i30) {
                                                                i32 = 1;
                                                            } else {
                                                                i32 = 2;
                                                            }
                                                            i28 = C3126i.i(i8111);
                                                            i27 = i32;
                                                            i26 = iH11;
                                                        } else {
                                                            i26 = -1;
                                                            i27 = -1;
                                                            i28 = -1;
                                                        }
                                                        c3126i = new C3126i(i26, i27, i28, null, i17, i18);
                                                    }
                                                    if (!d6.h()) {
                                                        d6.u(i24);
                                                    }
                                                    if (zH2) {
                                                        i25 = 3;
                                                        d6.u(3);
                                                    } else {
                                                        i25 = 3;
                                                    }
                                                    d6.u(i25);
                                                    boolean zH10 = d6.h();
                                                    if (i20 == 2) {
                                                        d6.t();
                                                    }
                                                    if (i20 == 1) {
                                                        z9 = false;
                                                    } else {
                                                        z9 = false;
                                                    }
                                                    if (d6.h()) {
                                                        i29 = d6.i(8);
                                                        int i8113 = d6.i(8);
                                                        int i8114 = d6.i(8);
                                                        if (z9) {
                                                            i30 = 1;
                                                            if (i29 != 1) {
                                                            }
                                                            int iH12 = C3126i.h(i29);
                                                            if (i31 == i30) {
                                                                i32 = 1;
                                                            } else {
                                                                i32 = 2;
                                                            }
                                                            i28 = C3126i.i(i8113);
                                                            i27 = i32;
                                                            i26 = iH12;
                                                        } else {
                                                            i30 = 1;
                                                        }
                                                        i31 = d6.i(i30);
                                                        int iH13 = C3126i.h(i29);
                                                        if (i31 == i30) {
                                                            i32 = 1;
                                                        } else {
                                                            i32 = 2;
                                                        }
                                                        i28 = C3126i.i(i8113);
                                                        i27 = i32;
                                                        i26 = iH13;
                                                    } else {
                                                        i26 = -1;
                                                        i27 = -1;
                                                        i28 = -1;
                                                    }
                                                    c3126i = new C3126i(i26, i27, i28, null, i17, i18);
                                                }
                                            }
                                            int i8115 = c3126i.f26876e;
                                            int i8116 = c3126i.f26877f;
                                            int i8117 = c3126i.f26872a;
                                            mVar = mVar;
                                            i14 = c3126i.f26873b;
                                            i15 = i15;
                                            i39 = i39;
                                            i13 = i8116;
                                            i44 = i8115;
                                            i43 = c3126i.f26874c;
                                            str8 = "video/av01";
                                            i41 = i8117;
                                        }
                                        int i8118 = c3126i.f26876e;
                                        int i8119 = c3126i.f26877f;
                                        int i81110 = c3126i.f26872a;
                                        mVar = mVar;
                                        i14 = c3126i.f26873b;
                                        i15 = i15;
                                        i39 = i39;
                                        i13 = i8119;
                                        i44 = i8118;
                                        i43 = c3126i.f26874c;
                                        str8 = "video/av01";
                                        i41 = i81110;
                                    } else if (iL5 == 1668050025) {
                                        if (byteBufferOrder == null) {
                                            byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                        }
                                        ByteBuffer byteBuffer = byteBufferOrder;
                                        byteBuffer.position(21);
                                        byteBuffer.putShort(e8.w());
                                        byteBuffer.putShort(e8.w());
                                        byteBufferOrder = byteBuffer;
                                    } else if (iL5 == 1835295606) {
                                        if (byteBufferOrder == null) {
                                            byteBufferOrder = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                        }
                                        ByteBuffer byteBuffer2 = byteBufferOrder;
                                        short sW = e8.w();
                                        short sW2 = e8.w();
                                        short sW3 = e8.w();
                                        short sW4 = e8.w();
                                        short sW5 = e8.w();
                                        short sW6 = e8.w();
                                        short sW7 = e8.w();
                                        short sW8 = e8.w();
                                        long jB = e8.B();
                                        long jB2 = e8.B();
                                        byteBuffer2.position(1);
                                        byteBuffer2.putShort(sW5);
                                        byteBuffer2.putShort(sW6);
                                        byteBuffer2.putShort(sW);
                                        byteBuffer2.putShort(sW2);
                                        byteBuffer2.putShort(sW3);
                                        byteBuffer2.putShort(sW4);
                                        byteBuffer2.putShort(sW7);
                                        byteBuffer2.putShort(sW8);
                                        byteBuffer2.putShort((short) (jB / 10000));
                                        byteBuffer2.putShort((short) (jB2 / 10000));
                                        byteBufferOrder = byteBuffer2;
                                    } else {
                                        mVar = mVar;
                                        i15 = i15;
                                        i39 = i39;
                                        if (iL5 == 1681012275) {
                                            f.c(null, str8 == null);
                                            str8 = "video/3gpp";
                                            i44 = i44;
                                        } else if (iL5 == 1702061171) {
                                            f.c(null, str8 == null);
                                            c cVarC = c(i51, e8);
                                            byte[] bArr5 = cVarC.f27686b;
                                            List listX2 = bArr5 != null ? H.x(bArr5) : listX;
                                            cVar = cVarC;
                                            str8 = cVarC.f27685a;
                                            listX = listX2;
                                        } else if (iL5 == 1651798644) {
                                            e8.L(i51 + 8);
                                            e8.M(4);
                                            long jB3 = e8.B();
                                            long jB4 = e8.B();
                                            C c9 = new C();
                                            c9.f6627a = jB4;
                                            c9.f6628b = jB3;
                                            c8 = c9;
                                        } else if (iL5 == 1885434736) {
                                            e8.L(i51 + 8);
                                            fD = e8.D() / e8.D();
                                            i44 = i44;
                                            z8 = true;
                                        } else if (iL5 == 1937126244) {
                                            int i90 = i51 + 8;
                                            while (true) {
                                                if (i90 - i51 >= iL4) {
                                                    bArrCopyOfRange = null;
                                                    break;
                                                }
                                                e8.L(i90);
                                                int iL8 = e8.l();
                                                if (e8.l() == 1886547818) {
                                                    bArrCopyOfRange = Arrays.copyOfRange(e8.f28035a, i90, iL8 + i90);
                                                    break;
                                                }
                                                i90 += iL8;
                                            }
                                        } else if (iL5 == 1936995172) {
                                            int iZ5 = e8.z();
                                            e8.M(3);
                                            if (iZ5 == 0) {
                                                int iZ6 = e8.z();
                                                if (iZ6 == 0) {
                                                    i15 = 0;
                                                } else if (iZ6 == 1) {
                                                    i15 = 1;
                                                } else if (iZ6 == 2) {
                                                    i15 = 2;
                                                } else if (iZ6 == 3) {
                                                    i15 = 3;
                                                }
                                            }
                                            i44 = i44;
                                        } else if (iL5 == 1634760259) {
                                            int i91 = iL4 - 12;
                                            byte[] bArr6 = new byte[i91];
                                            e8.L(i51 + 12);
                                            e8.j(0, bArr6, i91);
                                            d0VarX = H.x(bArr6);
                                            E e9 = new E(bArr6);
                                            D d8 = new D(bArr6, 0, (Object) null);
                                            int i92 = 8;
                                            d8.r(e9.f28036b * 8);
                                            int i93 = 1;
                                            d8.v(1);
                                            int i94 = d8.i(8);
                                            i44 = -1;
                                            int i95 = -1;
                                            int i96 = -1;
                                            int i97 = 0;
                                            int i98 = -1;
                                            int i99 = -1;
                                            while (i97 < i94) {
                                                d8.v(i93);
                                                int i100 = d8.i(i92);
                                                int i101 = i99;
                                                int i102 = i98;
                                                int i103 = i96;
                                                int i104 = i95;
                                                int i105 = i44;
                                                int i106 = 0;
                                                while (i106 < i100) {
                                                    d8.u(6);
                                                    boolean zH11 = d8.h();
                                                    d8.t();
                                                    d8.v(11);
                                                    d8.u(4);
                                                    int i107 = d8.i(4) + 8;
                                                    d8.v(1);
                                                    if (zH11) {
                                                        int i108 = d8.i(i92);
                                                        int i109 = d8.i(i92);
                                                        d8.v(1);
                                                        boolean zH12 = d8.h();
                                                        int iH14 = C3126i.h(i108);
                                                        i101 = zH12 ? 1 : 2;
                                                        i102 = C3126i.i(i109);
                                                        i103 = iH14;
                                                    }
                                                    i106++;
                                                    i105 = i107;
                                                    i104 = i105;
                                                    i92 = 8;
                                                }
                                                i97++;
                                                i44 = i105;
                                                i95 = i104;
                                                i96 = i103;
                                                i98 = i102;
                                                i99 = i101;
                                                i93 = 1;
                                                i92 = 8;
                                            }
                                            str8 = "video/apv";
                                            i13 = i95;
                                            i41 = i96;
                                            i43 = i98;
                                            i14 = i99;
                                        } else if (iL5 == 1668246642 && i41 == -1 && i43 == -1) {
                                            int iL9 = e8.l();
                                            if (iL9 == 1852009592 || iL9 == 1852009571) {
                                                int iF3 = e8.F();
                                                int iF4 = e8.F();
                                                e8.M(2);
                                                boolean z16 = iL4 == 19 && (e8.z() & 128) != 0;
                                                int iH15 = C3126i.h(iF3);
                                                i14 = z16 ? 1 : 2;
                                                i44 = i44;
                                                i43 = C3126i.i(iF4);
                                                i41 = iH15;
                                            } else {
                                                x.f("BoxParsers", "Unsupported color type: " + p125q0.e.a(iL9));
                                                i44 = i44;
                                            }
                                        } else {
                                            i44 = i44;
                                        }
                                    }
                                    listX = d0VarX;
                                }
                            }
                        }
                        i40 = i52 + iL4;
                        list2 = listX;
                        mVar = mVar;
                        i39 = i39;
                        z11 = z8;
                        i46 = i15;
                        i42 = i13;
                        i11 = i53;
                        i10 = i12;
                        gVar2 = gVar;
                        str7 = str3;
                        i45 = i14;
                    }
                    mVar = mVar;
                    i40 = i52 + iL4;
                    list2 = listX;
                    mVar = mVar;
                    i39 = i39;
                    z11 = z8;
                    i46 = i15;
                    i42 = i13;
                    i11 = i53;
                    i10 = i12;
                    gVar2 = gVar;
                    str7 = str3;
                    i45 = i14;
                }
                if (str8 == null) {
                    c1288f3 = c1288f2;
                    str2 = str;
                    gVar2 = gVar2;
                } else {
                    C3135s c3135s = new C3135s();
                    c3135s.f26983a = Integer.toString(i37);
                    c3135s.f26996n = O.p(str8);
                    c3135s.f26992j = str9;
                    c3135s.f27003u = iF;
                    c3135s.f27004v = iF2;
                    c3135s.f27005w = i49;
                    c3135s.f27006x = i50;
                    c3135s.f26968A = fD;
                    c1288f3 = c1288f2;
                    c3135s.f27008z = c1288f3.f18713c;
                    c3135s.f26969B = bArrCopyOfRange;
                    c3135s.f26970C = i46;
                    c3135s.f26999q = list;
                    c3135s.f26998p = i47;
                    c3135s.f26972E = i48;
                    c3135s.f27000r = c3131n2;
                    str2 = str;
                    c3135s.f26986d = str2;
                    c3135s.f26971D = new C3126i(i41, i45, i43, byteBufferOrder != null ? byteBufferOrder.array() : bArr, i44, i42);
                    C c10 = c8;
                    if (c10 != null) {
                        c3135s.f26990h = k.d0(c10.f6627a);
                        c3135s.f26991i = k.d0(c10.f6628b);
                    } else {
                        c cVar2 = cVar;
                        if (cVar2 != null) {
                            c3135s.f26990h = k.d0(cVar2.f27687c);
                            c3135s.f26991i = k.d0(cVar2.f27688d);
                        }
                    }
                    C3136t c3136t = new C3136t(c3135s);
                    gVar2 = gVar2;
                    gVar2.f10557K = c3136t;
                }
            } else if (iL3 == 1836069985 || iL3 == 1701733217 || iL3 == 1633889587 || iL3 == 1700998451 || iL3 == 1633889588 || iL3 == 1835823201 || iL3 == 1685353315 || iL3 == 1685353317 || iL3 == 1685353320 || iL3 == 1685353324 || iL3 == 1685353336 || iL3 == 1935764850 || iL3 == 1935767394 || iL3 == 1819304813 || iL3 == 1936684916 || iL3 == 1953984371 || iL3 == 778924082 || iL3 == 778924083 || iL3 == 1835557169 || iL3 == 1835560241 || iL3 == 1634492771 || iL3 == 1634492791 || iL3 == 1970037111 || iL3 == 1332770163 || iL3 == 1716281667 || iL3 == 1767992678 || iL3 == 1768973165 || iL3 == 1718641517) {
                i8 = iL;
                i9 = i35;
                b(e8, iL3, i36, iL2, c1288f4.f18711a, str, z7, c3131n, gVar2, i9);
                c1288f3 = c1288f2;
                str2 = str;
                i11 = iL2;
                i10 = i36;
            } else if (iL3 == 1414810956 || iL3 == 1954034535 || iL3 == 2004251764 || iL3 == 1937010800 || iL3 == 1664495672 || iL3 == 1836070003) {
                e8.L(i36 + 16);
                String str14 = "application/ttml+xml";
                long j9 = Long.MAX_VALUE;
                if (iL3 == 1414810956) {
                    str5 = str14;
                    j8 = j9;
                    d0VarX2 = null;
                    if (str5 != null) {
                        C3135s c3135s2 = new C3135s();
                        c3135s2.f26983a = Integer.toString(i37);
                        c3135s2.f26996n = O.p(str5);
                        c3135s2.f26986d = str6;
                        c3135s2.f27001s = j8;
                        c3135s2.f26999q = d0VarX2;
                        gVar2.f10557K = new C3136t(c3135s2);
                    }
                } else if (iL3 == 1954034535) {
                    int i110 = iL2 - 16;
                    byte[] bArr7 = new byte[i110];
                    e8.j(0, bArr7, i110);
                    d0VarX2 = H.x(bArr7);
                    str5 = "application/x-quicktime-tx3g";
                    j8 = Long.MAX_VALUE;
                    if (str5 != null) {
                        C3135s c3135s3 = new C3135s();
                        c3135s3.f26983a = Integer.toString(i37);
                        c3135s3.f26996n = O.p(str5);
                        c3135s3.f26986d = str6;
                        c3135s3.f27001s = j8;
                        c3135s3.f26999q = d0VarX2;
                        gVar2.f10557K = new C3136t(c3135s3);
                    }
                } else {
                    if (iL3 == 2004251764) {
                        str14 = "application/x-mp4-vtt";
                    } else if (iL3 == 1937010800) {
                        j9 = 0;
                    } else if (iL3 == 1664495672) {
                        gVar2.f10555I = 1;
                        str14 = "application/x-mp4-cea-608";
                    } else {
                        if (iL3 != 1836070003) {
                            throw new IllegalStateException();
                        }
                        int i111 = e8.f28036b;
                        e8.M(4);
                        if (e8.l() == 1702061171) {
                            byte[] bArr8 = c(i111, e8).f27686b;
                            if (bArr8 == null || bArr8.length != 64) {
                                iL = iL;
                                i35 = i35;
                            } else {
                                H1.i(bArr8.length == 64);
                                ArrayList arrayList = new ArrayList(16);
                                int i112 = 0;
                                while (i112 < bArr8.length - 3) {
                                    int i113 = iL;
                                    int iC = k.C(bArr8[i112], bArr8[i112 + 1], bArr8[i112 + 2], bArr8[i112 + 3]);
                                    int i114 = (iC >> 16) & 255;
                                    byte[] bArr9 = bArr8;
                                    int i115 = ((iC >> 8) & 255) - 128;
                                    int i116 = (iC & 255) - 128;
                                    arrayList.add(String.format("%06x", Integer.valueOf(M.i(A0.O.v(i116, 17790, 10000, i114), 0, 255) | (M.i((i114 - ((i116 * 3455) / 10000)) - ((i115 * 7169) / 10000), 0, 255) << 8) | (M.i(A0.O.v(i115, 14075, 10000, i114), 0, 255) << 16))));
                                    i112 += 4;
                                    bArr8 = bArr9;
                                    iL = i113;
                                    i35 = i35;
                                }
                                iL = iL;
                                i35 = i35;
                                StringBuilder sb = new StringBuilder("size: ");
                                sb.append(c1288f4.f18714d);
                                sb.append("x");
                                sb.append(c1288f4.f18715e);
                                sb.append("\npalette: ");
                                p120p3.e eVar = new p120p3.e(", ");
                                Iterator it = arrayList.iterator();
                                StringBuilder sb2 = new StringBuilder();
                                eVar.a(sb2, it);
                                sb.append(sb2.toString());
                                sb.append("\n");
                                String string = sb.toString();
                                String str15 = M.f28050a;
                                d0VarX2 = H.x(string.getBytes(StandardCharsets.UTF_8));
                                str5 = "application/vobsub";
                            }
                        } else {
                            iL = iL;
                            i35 = i35;
                            d0VarX2 = null;
                            str5 = null;
                        }
                        j8 = Long.MAX_VALUE;
                        if (str5 != null) {
                            C3135s c3135s4 = new C3135s();
                            c3135s4.f26983a = Integer.toString(i37);
                            c3135s4.f26996n = O.p(str5);
                            c3135s4.f26986d = str6;
                            c3135s4.f27001s = j8;
                            c3135s4.f26999q = d0VarX2;
                            gVar2.f10557K = new C3136t(c3135s4);
                        }
                    }
                    str5 = str14;
                    j8 = j9;
                    d0VarX2 = null;
                    if (str5 != null) {
                        C3135s c3135s5 = new C3135s();
                        c3135s5.f26983a = Integer.toString(i37);
                        c3135s5.f26996n = O.p(str5);
                        c3135s5.f26986d = str6;
                        c3135s5.f27001s = j8;
                        c3135s5.f26999q = d0VarX2;
                        gVar2.f10557K = new C3136t(c3135s5);
                    }
                }
                i10 = i36;
                i11 = iL2;
                c1288f3 = c1288f4;
                str2 = str6;
                i8 = iL;
                i9 = i35;
            } else {
                if (iL3 == 1835365492) {
                    e8.L(i36 + 16);
                    if (iL3 == 1835365492) {
                        e8.u();
                        String strU = e8.u();
                        if (strU != null) {
                            C3135s c3135s6 = new C3135s();
                            c3135s6.f26983a = Integer.toString(i37);
                            c3135s6.f26996n = O.p(strU);
                            gVar2.f10557K = new C3136t(c3135s6);
                        }
                    }
                } else if (iL3 == 1667329389) {
                    C3135s c3135s7 = new C3135s();
                    c3135s7.f26983a = Integer.toString(i37);
                    c3135s7.f26996n = O.p("application/x-camera-motion");
                    gVar2.f10557K = new C3136t(c3135s7);
                }
                i8 = iL;
                i9 = i35;
                i10 = i36;
                i11 = iL2;
                c1288f3 = c1288f4;
                str2 = str6;
            }
            e8.L(i10 + i11);
            c1288f4 = c1288f3;
            gVar2 = gVar2;
            str6 = str2;
            i35 = i9 + 1;
            iL = i8;
        }
        return gVar2;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x02e2  */
    /* JADX WARN: Code duplicated, block: B:151:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:153:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:155:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:156:0x0306  */
    /* JADX WARN: Code duplicated, block: B:158:0x031b  */
    /* JADX WARN: Code duplicated, block: B:162:0x0344  */
    /* JADX WARN: Code duplicated, block: B:163:0x034a  */
    /* JADX WARN: Code duplicated, block: B:165:0x0375  */
    /* JADX WARN: Code duplicated, block: B:166:0x037b  */
    /* JADX WARN: Code duplicated, block: B:168:0x0384  */
    /* JADX WARN: Code duplicated, block: B:171:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:173:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:175:0x03d7  */
    /* JADX WARN: Code duplicated, block: B:177:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:180:0x03fc  */
    /* JADX WARN: Code duplicated, block: B:181:0x0408  */
    /* JADX WARN: Code duplicated, block: B:184:0x0426  */
    /* JADX WARN: Code duplicated, block: B:185:0x0429  */
    /* JADX WARN: Code duplicated, block: B:188:0x0433  */
    /* JADX WARN: Code duplicated, block: B:189:0x0436  */
    /* JADX WARN: Code duplicated, block: B:192:0x0455  */
    /* JADX WARN: Code duplicated, block: B:193:0x045d  */
    /* JADX WARN: Code duplicated, block: B:195:0x0460  */
    /* JADX WARN: Code duplicated, block: B:197:0x0469  */
    /* JADX WARN: Code duplicated, block: B:198:0x0477  */
    /* JADX WARN: Code duplicated, block: B:199:0x047a  */
    /* JADX WARN: Code duplicated, block: B:202:0x048e  */
    /* JADX WARN: Code duplicated, block: B:209:0x04a7  */
    /* JADX WARN: Code duplicated, block: B:230:0x0582  */
    /* JADX WARN: Code duplicated, block: B:232:0x0586  */
    /* JADX WARN: Code duplicated, block: B:234:0x058c A[LOOP:13: B:231:0x0584->B:234:0x058c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:239:0x05c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:240:0x05c6 A[ADDED_TO_REGION, LOOP:14: B:240:0x05c6->B:242:0x05ca, LOOP_START, PHI: r21 r44 r45
      0x05c6: PHI (r21v7 int) = (r21v3 int), (r21v8 int) binds: [B:239:0x05c4, B:242:0x05ca] A[DONT_GENERATE, DONT_INLINE]
      0x05c6: PHI (r44v4 int) = (r44v1 int), (r44v5 int) binds: [B:239:0x05c4, B:242:0x05ca] A[DONT_GENERATE, DONT_INLINE]
      0x05c6: PHI (r45v3 int) = (r45v1 int), (r45v5 int) binds: [B:239:0x05c4, B:242:0x05ca] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:241:0x05c8 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:246:0x05ea  */
    /* JADX WARN: Code duplicated, block: B:249:0x05f2  */
    /* JADX WARN: Code duplicated, block: B:250:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:253:0x05fb  */
    /* JADX WARN: Code duplicated, block: B:255:0x0602  */
    /* JADX WARN: Code duplicated, block: B:257:0x0611  */
    /* JADX WARN: Code duplicated, block: B:260:0x061a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:266:0x0652 A[DONT_INVERT, LOOP:15: B:266:0x0652->B:270:0x065d, LOOP_START, PHI: r21
      0x0652: PHI (r21v4 int) = (r21v3 int), (r21v5 int) binds: [B:265:0x0650, B:270:0x065d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:267:0x0654  */
    /* JADX WARN: Code duplicated, block: B:270:0x065d A[LOOP:15: B:266:0x0652->B:270:0x065d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:271:0x0664 A[EDGE_INSN: B:271:0x0664->B:272:0x0666 BREAK  A[LOOP:15: B:266:0x0652->B:270:0x065d]] */
    /* JADX WARN: Code duplicated, block: B:273:0x0668 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:281:0x067c  */
    /* JADX WARN: Code duplicated, block: B:284:0x06ac  */
    /* JADX WARN: Code duplicated, block: B:285:0x06af  */
    /* JADX WARN: Code duplicated, block: B:290:0x06ca  */
    /* JADX WARN: Code duplicated, block: B:292:0x06dd  */
    /* JADX WARN: Code duplicated, block: B:297:0x0708  */
    /* JADX WARN: Code duplicated, block: B:298:0x0720  */
    /* JADX WARN: Code duplicated, block: B:300:0x072e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:323:0x07ee  */
    /* JADX WARN: Code duplicated, block: B:327:0x0800  */
    /* JADX WARN: Code duplicated, block: B:329:0x0806  */
    /* JADX WARN: Code duplicated, block: B:332:0x080f A[LOOP:5: B:330:0x080c->B:332:0x080f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:335:0x0847  */
    /* JADX WARN: Code duplicated, block: B:336:0x084b  */
    /* JADX WARN: Code duplicated, block: B:338:0x084f  */
    /* JADX WARN: Code duplicated, block: B:339:0x0851  */
    /* JADX WARN: Code duplicated, block: B:343:0x0862  */
    /* JADX WARN: Code duplicated, block: B:345:0x086a  */
    /* JADX WARN: Code duplicated, block: B:348:0x0894  */
    /* JADX WARN: Code duplicated, block: B:352:0x08a0  */
    /* JADX WARN: Code duplicated, block: B:355:0x08a8  */
    /* JADX WARN: Code duplicated, block: B:360:0x08b5  */
    /* JADX WARN: Code duplicated, block: B:364:0x08c2  */
    /* JADX WARN: Code duplicated, block: B:366:0x08c9 A[LOOP:9: B:362:0x08bb->B:366:0x08c9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:369:0x08d6  */
    /* JADX WARN: Code duplicated, block: B:370:0x08d8  */
    /* JADX WARN: Code duplicated, block: B:373:0x08de  */
    /* JADX WARN: Code duplicated, block: B:377:0x08f6  */
    /* JADX WARN: Code duplicated, block: B:378:0x08f8  */
    /* JADX WARN: Code duplicated, block: B:381:0x08fd  */
    /* JADX WARN: Code duplicated, block: B:382:0x0900  */
    /* JADX WARN: Code duplicated, block: B:384:0x0903  */
    /* JADX WARN: Code duplicated, block: B:385:0x0906  */
    /* JADX WARN: Code duplicated, block: B:387:0x090a  */
    /* JADX WARN: Code duplicated, block: B:389:0x090e  */
    /* JADX WARN: Code duplicated, block: B:390:0x0911  */
    /* JADX WARN: Code duplicated, block: B:394:0x0921  */
    /* JADX WARN: Code duplicated, block: B:396:0x092b  */
    /* JADX WARN: Code duplicated, block: B:397:0x0941  */
    /* JADX WARN: Code duplicated, block: B:400:0x094f  */
    /* JADX WARN: Code duplicated, block: B:402:0x097d  */
    /* JADX WARN: Code duplicated, block: B:405:0x0983  */
    /* JADX WARN: Code duplicated, block: B:412:0x09c7  */
    /* JADX WARN: Code duplicated, block: B:425:0x09fb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:434:0x089e A[ADDED_TO_REGION, EDGE_INSN: B:434:0x089e->B:351:0x089e BREAK  A[LOOP:7: B:346:0x0890->B:350:0x0899], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:436:0x08b2 A[ADDED_TO_REGION, EDGE_INSN: B:436:0x08b2->B:358:0x08b2 BREAK  A[LOOP:8: B:353:0x08a2->B:357:0x08ae], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:438:0x08cc A[EDGE_INSN: B:438:0x08cc->B:367:0x08cc BREAK  A[LOOP:9: B:362:0x08bb->B:366:0x08c9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:439:0x08cc A[EDGE_INSN: B:439:0x08cc->B:367:0x08cc BREAK  A[LOOP:9: B:362:0x08bb->B:366:0x08c9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:443:0x098a A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:445:0x0641 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:446:0x05a3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:448:0x0629 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:451:0x059d A[EDGE_INSN: B:451:0x059d->B:235:0x059d BREAK  A[LOOP:13: B:231:0x0584->B:234:0x058c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:454:0x0664 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:455:0x065a A[SYNTHETIC] */
    public static ArrayList j(c cVar, A a8, long j8, C3131n c3131n, boolean z7, boolean z8, h hVar) throws P {
        byte b8;
        long jB;
        int i8;
        int i9;
        long jZ;
        long jZ2;
        String str;
        ArrayList arrayList;
        long[] jArr;
        long[] jArr2;
        C3136t c3136t;
        int i10;
        C3136t c3136t2;
        p pVar;
        b bVar;
        N n7;
        N n8;
        c cVarE;
        Pair pairCreate;
        p pVarA;
        c cVarE2;
        d dVarF;
        C3136t c3136t3;
        d dVarF2;
        d bVar2;
        int iB;
        d dVarF3;
        boolean z9;
        d dVarF4;
        E e8;
        d dVarF5;
        E e9;
        b bVar3;
        int iD;
        int iD2;
        int iD3;
        int iD4;
        E e10;
        int iD5;
        int iD6;
        int iA;
        C3136t c3136t4;
        int i11;
        long[] jArr3;
        int[] iArr;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        int i12;
        int i13;
        int iD7;
        long j9;
        long j10;
        long j11;
        int i14;
        int i15;
        int i16;
        int iL;
        int iD8;
        int i17;
        long[] jArrCopyOf2;
        int i18;
        int[] iArrCopyOf2;
        boolean z10;
        int i19;
        p pVarA2;
        String str2;
        long j12;
        long[] jArr4;
        boolean zA;
        int i20;
        int i21;
        int iC;
        int i22;
        int iD9;
        long j13;
        long jZ3;
        long j14;
        long[] jArr5;
        int length;
        C3136t c3136t5;
        int i23;
        int i24;
        long[] jArr6;
        int[] iArr2;
        int i25;
        long[] jArr7;
        int[] iArr3;
        int i26;
        boolean z11;
        boolean z12;
        int[] iArr4;
        int[] iArr5;
        int i27;
        boolean z13;
        int i28;
        int i29;
        long[] jArr8;
        boolean z14;
        boolean z15;
        long[] jArr9;
        int[] iArr6;
        int[] iArr7;
        long[] jArr10;
        int i30;
        long j15;
        int i31;
        boolean z16;
        int i32;
        s sVar;
        long j16;
        int i33;
        int i34;
        int[] iArr8;
        int[] iArr9;
        long jZ4;
        long j17;
        int i35;
        long j18;
        int i36;
        int i37;
        int i38;
        boolean z17;
        int i39;
        int i40;
        int i41;
        long j19;
        int i42;
        long jZ5;
        long j20;
        int i43 = 10;
        byte b9 = -1;
        int i44 = 1;
        ArrayList arrayList2 = new ArrayList();
        int i45 = 0;
        while (true) {
            ArrayList arrayList3 = cVar.f29445e;
            if (i45 >= arrayList3.size()) {
                return arrayList2;
            }
            c cVar2 = (c) arrayList3.get(i45);
            if (cVar2.f29448b != 1953653099) {
                arrayList = arrayList2;
            } else {
                d dVarF6 = cVar.f(1836476516);
                dVarF6.getClass();
                c cVarE3 = cVar2.e(1835297121);
                cVarE3.getClass();
                d dVarF7 = cVarE3.f(1751411826);
                dVarF7.getClass();
                E e11 = dVarF7.f29446c;
                e11.L(16);
                int iL2 = e11.l();
                if (iL2 == 1936684398) {
                    b8 = 1;
                } else if (iL2 == 1986618469) {
                    b8 = 2;
                } else if (iL2 == 1952807028 || iL2 == 1935832172 || iL2 == 1937072756 || iL2 == 1668047728 || iL2 == 1937072752) {
                    b8 = 3;
                } else {
                    b8 = iL2 == 1835365473 ? (byte) 5 : (byte) -1;
                }
                if (b8 == b9) {
                    arrayList = arrayList2;
                } else {
                    d dVarF8 = cVar2.f(1953196132);
                    dVarF8.getClass();
                    E e12 = dVarF8.f29446c;
                    e12.L(8);
                    int iE = e(e12.l());
                    e12.M(iE != 0 ? 16 : 8);
                    int iL3 = e12.l();
                    e12.M(4);
                    int i46 = e12.f28036b;
                    int i47 = iE == 0 ? 4 : 8;
                    int i48 = 0;
                    while (true) {
                        if (i48 >= i47) {
                            e12.M(i47);
                        } else {
                            if (e12.f28035a[i46 + i48] != b9) {
                                jB = iE == 0 ? e12.B() : e12.E();
                                if (jB != 0) {
                                    break;
                                }
                                break;
                            }
                            i48 += i44;
                        }
                        jB = -9223372036854775807L;
                        break;
                    }
                    e12.M(i43);
                    int iF = e12.F();
                    e12.M(4);
                    int iL4 = e12.l();
                    int iL5 = e12.l();
                    e12.M(4);
                    int iL6 = e12.l();
                    int iL7 = e12.l();
                    if (iL4 == 0 && iL5 == 65536 && ((iL6 == -65536 || iL6 == 65536) && iL7 == 0)) {
                        i8 = 16;
                        i9 = 90;
                    } else if (iL4 == 0 && iL5 == -65536 && ((iL6 == 65536 || iL6 == -65536) && iL7 == 0)) {
                        i8 = 16;
                        i9 = MediaPlayer.Event.PausableChanged;
                    } else if ((iL4 == -65536 || iL4 == 65536) && iL5 == 0 && iL6 == 0 && iL7 == -65536) {
                        i8 = 16;
                        i9 = 180;
                    } else {
                        i8 = 16;
                        i9 = 0;
                    }
                    e12.M(i8);
                    short sW = e12.w();
                    e12.M(2);
                    C1288f2 c1288f2 = new C1288f2(iL3, jB, iF, i9, sW, e12.w());
                    long j21 = j8 == -9223372036854775807L ? jB : j8;
                    long j22 = g(dVarF6.f29446c).f29453c;
                    if (j21 == -9223372036854775807L) {
                        jZ = -9223372036854775807L;
                    } else {
                        String str3 = M.f28050a;
                        jZ = M.Z(j21, 1000000L, j22, RoundingMode.DOWN);
                    }
                    c cVarE4 = cVarE3.e(1835626086);
                    cVarE4.getClass();
                    c cVarE5 = cVarE4.e(1937007212);
                    cVarE5.getClass();
                    d dVarF9 = cVarE3.f(1835296868);
                    dVarF9.getClass();
                    E e13 = dVarF9.f29446c;
                    e13.L(8);
                    int iE2 = e(e13.l());
                    e13.M(iE2 == 0 ? 8 : 16);
                    long jB2 = e13.B();
                    int i49 = e13.f28036b;
                    int i50 = iE2 == 0 ? 4 : 8;
                    int i51 = 0;
                    while (true) {
                        if (i51 >= i50) {
                            e13.M(i50);
                        } else {
                            if (e13.f28035a[i49 + i51] != -1) {
                                long jB3 = iE2 == 0 ? e13.B() : e13.E();
                                if (jB3 != 0) {
                                    String str4 = M.f28050a;
                                    jZ2 = M.Z(jB3, 1000000L, jB2, RoundingMode.DOWN);
                                    break;
                                }
                                break;
                            }
                            i51++;
                        }
                        jZ2 = -9223372036854775807L;
                        break;
                    }
                    int iF2 = e13.F();
                    char[] cArr = {(char) (((iF2 >> 10) & 31) + 96), (char) (((iF2 >> 5) & 31) + 96), (char) ((iF2 & 31) + 96)};
                    int i52 = 0;
                    while (true) {
                        if (i52 >= 3) {
                            str = new String(cArr);
                            break;
                        }
                        char c8 = cArr[i52];
                        if (c8 < 'a' || c8 > 'z') {
                            str = null;
                            break;
                        }
                        i52++;
                    }
                    d dVarF10 = cVarE5.f(1937011556);
                    if (dVarF10 == null) {
                        throw P.a("Malformed sample table (stbl) missing sample description (stsd)", null);
                    }
                    g gVarI = i(dVarF10.f29446c, c1288f2, str, c3131n, z8);
                    if (z7 || (cVarE = cVar2.e(1701082227)) == null) {
                        arrayList = arrayList2;
                    } else {
                        d dVarF11 = cVarE.f(1701606260);
                        if (dVarF11 == null) {
                            arrayList = arrayList2;
                            pairCreate = null;
                        } else {
                            E e14 = dVarF11.f29446c;
                            e14.L(8);
                            int iE3 = e(e14.l());
                            int iD10 = e14.D();
                            long[] jArr11 = new long[iD10];
                            long[] jArr12 = new long[iD10];
                            int i53 = 0;
                            while (i53 < iD10) {
                                jArr11[i53] = iE3 == 1 ? e14.E() : e14.B();
                                jArr12[i53] = iE3 == 1 ? e14.t() : e14.l();
                                if (e14.w() != 1) {
                                    throw new IllegalArgumentException("Unsupported media rate.");
                                }
                                e14.M(2);
                                i53++;
                                arrayList2 = arrayList2;
                            }
                            arrayList = arrayList2;
                            pairCreate = Pair.create(jArr11, jArr12);
                        }
                        if (pairCreate != null) {
                            long[] jArr13 = (long[]) pairCreate.first;
                            jArr2 = (long[]) pairCreate.second;
                            jArr = jArr13;
                        }
                        c3136t = (C3136t) gVarI.f10557K;
                        if (c3136t == null) {
                            i10 = c1288f2.f18712b;
                            if (i10 != 0) {
                                bVar = new b(i10);
                                C3135s c3135sA = c3136t.a();
                                n7 = ((C3136t) gVarI.f10557K).f27038l;
                                if (n7 != null) {
                                    n8 = n7.a(bVar);
                                } else {
                                    n8 = new N(bVar);
                                }
                                c3135sA.f26993k = n8;
                                c3136t2 = new C3136t(c3135sA);
                            } else {
                                c3136t2 = c3136t;
                            }
                            pVar = new p(c1288f2.f18711a, b8, jB2, j22, jZ, jZ2, c3136t2, gVarI.f10555I, (q[]) gVarI.f10556J, gVarI.f10554H, jArr, jArr2);
                            hVar = hVar;
                        }
                        pVarA = (p) hVar.apply(pVar);
                        if (pVarA == null) {
                            arrayList = arrayList;
                        } else {
                            c cVarE6 = cVar2.e(1835297121);
                            cVarE6.getClass();
                            c cVarE7 = cVarE6.e(1835626086);
                            cVarE7.getClass();
                            cVarE2 = cVarE7.e(1937007212);
                            cVarE2.getClass();
                            dVarF = cVarE2.f(1937011578);
                            c3136t3 = pVarA.f27804g;
                            if (dVarF != null) {
                                bVar2 = new V.b(dVarF, c3136t3);
                            } else {
                                dVarF2 = cVarE2.f(1937013298);
                                if (dVarF2 == null) {
                                    throw P.a("Track has no sample table size information", null);
                                }
                                z zVar = new z();
                                E e15 = dVarF2.f29446c;
                                zVar.f28133e = e15;
                                e15.L(12);
                                zVar.f28130b = ((E) zVar.f28133e).D() & 255;
                                zVar.f28129a = ((E) zVar.f28133e).D();
                                bVar2 = zVar;
                            }
                            iB = bVar2.b();
                            if (iB == 0) {
                                sVar = new s(pVarA, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                                i45 = i45;
                            } else {
                                if (pVarA.f27799b == 2) {
                                    j20 = pVarA.f27803f;
                                    if (j20 > 0) {
                                        C3135s c3135sA2 = c3136t3.a();
                                        c3135sA2.f27007y = iB / (j20 / 1000000.0f);
                                        pVarA = pVarA.a(new C3136t(c3135sA2));
                                    }
                                }
                                dVarF3 = cVarE2.f(1937007471);
                                if (dVarF3 == null) {
                                    dVarF3 = cVarE2.f(1668232756);
                                    dVarF3.getClass();
                                    z9 = true;
                                } else {
                                    z9 = false;
                                }
                                d dVarF12 = cVarE2.f(1937011555);
                                dVarF12.getClass();
                                d dVarF13 = cVarE2.f(1937011827);
                                dVarF13.getClass();
                                dVarF4 = cVarE2.f(1937011571);
                                if (dVarF4 != null) {
                                    e8 = dVarF4.f29446c;
                                } else {
                                    e8 = null;
                                }
                                dVarF5 = cVarE2.f(1668576371);
                                if (dVarF5 != null) {
                                    e9 = dVarF5.f29446c;
                                } else {
                                    e9 = null;
                                }
                                bVar3 = new b(dVarF12.f29446c, dVarF3.f29446c, z9);
                                E e16 = dVarF13.f29446c;
                                e16.L(12);
                                iD = e16.D() - 1;
                                iD2 = e16.D();
                                iD3 = e16.D();
                                if (e9 != null) {
                                    e9.L(12);
                                    iD4 = e9.D();
                                } else {
                                    iD4 = 0;
                                }
                                if (e8 != null) {
                                    e8.L(12);
                                    iD5 = e8.D();
                                    if (iD5 > 0) {
                                        e10 = e8;
                                        iD6 = e8.D() - 1;
                                    } else {
                                        iD6 = -1;
                                        e10 = null;
                                    }
                                } else {
                                    e10 = e8;
                                    iD5 = 0;
                                    iD6 = -1;
                                }
                                iA = bVar2.a();
                                c3136t4 = pVarA.f27804g;
                                i11 = iD6;
                                String str5 = c3136t4.f27041o;
                                i45 = i45;
                                if (iA == -1 && (("audio/raw".equals(str5) || "audio/g711-mlaw".equals(str5) || "audio/g711-alaw".equals(str5)) && iD == 0 && iD4 == 0 && iD5 == 0)) {
                                    int i54 = bVar3.f27676a;
                                    long[] jArr14 = new long[i54];
                                    int[] iArr10 = new int[i54];
                                    while (bVar3.a()) {
                                        int i55 = bVar3.f27677b;
                                        jArr14[i55] = bVar3.f27679d;
                                        iArr10[i55] = bVar3.f27678c;
                                    }
                                    long j23 = iD3;
                                    int i56 = 8192 / iA;
                                    int iF3 = 0;
                                    for (int i57 = 0; i57 < i54; i57++) {
                                        iF3 += M.f(iArr10[i57], i56);
                                    }
                                    long[] jArr15 = new long[iF3];
                                    iArrCopyOf2 = new int[iF3];
                                    long[] jArr16 = new long[iF3];
                                    int[] iArr11 = new int[iF3];
                                    int i58 = 0;
                                    int i59 = 0;
                                    int i60 = 0;
                                    int i61 = 0;
                                    int i62 = 0;
                                    while (i60 < i54) {
                                        int i63 = iArr10[i60];
                                        long j24 = jArr14[i60];
                                        int i64 = i62;
                                        int i65 = i54;
                                        int iMax = i61;
                                        int i66 = i64;
                                        long[] jArr17 = jArr14;
                                        int i67 = i63;
                                        while (i67 > 0) {
                                            int iMin = Math.min(i56, i67);
                                            jArr15[i66] = j24;
                                            int[] iArr12 = iArr10;
                                            int i68 = iA * iMin;
                                            iArrCopyOf2[i66] = i68;
                                            int i69 = i59 + i68;
                                            iMax = Math.max(iMax, i68);
                                            jArr16[i66] = ((long) i58) * j23;
                                            iArr11[i66] = 1;
                                            j24 += (long) iArrCopyOf2[i66];
                                            i58 += iMin;
                                            i67 -= iMin;
                                            i66++;
                                            i56 = i56;
                                            iArr10 = iArr12;
                                            i59 = i69;
                                            jArr15 = jArr15;
                                        }
                                        i60++;
                                        i56 = i56;
                                        jArr14 = jArr17;
                                        iArr10 = iArr10;
                                        int i70 = i66;
                                        i61 = iMax;
                                        i54 = i65;
                                        i62 = i70;
                                    }
                                    long[] jArr18 = jArr15;
                                    j12 = j23 * ((long) i58);
                                    long j25 = i59;
                                    iArrCopyOf = iArr11;
                                    jArrCopyOf = jArr16;
                                    i15 = i61;
                                    j9 = j25;
                                    pVarA2 = pVarA;
                                    jArr4 = jArr18;
                                } else {
                                    jArr3 = new long[iB];
                                    iArr = new int[iB];
                                    jArrCopyOf = new long[iB];
                                    iArrCopyOf = new int[iB];
                                    int i71 = iD;
                                    i12 = iD3;
                                    i13 = iD4;
                                    iD7 = iD2;
                                    j9 = 0;
                                    j10 = 0;
                                    j11 = 0;
                                    i14 = 0;
                                    i15 = 0;
                                    i16 = 0;
                                    iL = 0;
                                    iD8 = 0;
                                    p pVar2 = pVarA;
                                    i17 = i11;
                                    while (true) {
                                        if (i14 >= iB) {
                                            jArrCopyOf2 = jArr3;
                                            i18 = i16;
                                            iArrCopyOf2 = iArr;
                                            break;
                                        }
                                        zA = true;
                                        while (i16 == 0) {
                                            zA = bVar3.a();
                                            if (!zA) {
                                                break;
                                            }
                                            j11 = bVar3.f27679d;
                                            i16 = bVar3.f27678c;
                                            iB = iB;
                                            i17 = i17;
                                        }
                                        i20 = iB;
                                        i21 = i17;
                                        if (!zA) {
                                            x.f("BoxParsers", "Unexpected end of chunk data");
                                            jArrCopyOf2 = Arrays.copyOf(jArr3, i14);
                                            iArrCopyOf2 = Arrays.copyOf(iArr, i14);
                                            jArrCopyOf = Arrays.copyOf(jArrCopyOf, i14);
                                            iArrCopyOf = Arrays.copyOf(iArrCopyOf, i14);
                                            iB = i14;
                                            i18 = i16;
                                            break;
                                        }
                                        if (e9 != null) {
                                            while (iD8 == 0 && i13 > 0) {
                                                iD8 = e9.D();
                                                iL = e9.l();
                                                i13--;
                                            }
                                            iD8--;
                                        }
                                        int i72 = iL;
                                        jArr3[i14] = j11;
                                        iC = bVar2.c();
                                        iArr[i14] = iC;
                                        long[] jArr19 = jArr3;
                                        int[] iArr13 = iArr;
                                        j9 += (long) iC;
                                        if (iC > i15) {
                                            i15 = iC;
                                        }
                                        jArrCopyOf[i14] = j10 + ((long) i72);
                                        if (e10 == null) {
                                            i22 = 1;
                                        } else {
                                            i22 = 0;
                                        }
                                        iArrCopyOf[i14] = i22;
                                        iD9 = i21;
                                        if (i14 == iD9) {
                                            iArrCopyOf[i14] = 1;
                                            iD5--;
                                            if (iD5 > 0) {
                                                e10.getClass();
                                                iD9 = e10.D() - 1;
                                            }
                                        }
                                        int i73 = iD5;
                                        int iL8 = i12;
                                        j10 += (long) iL8;
                                        iD7--;
                                        if (iD7 != 0 && i71 > 0) {
                                            i71--;
                                            iD7 = e16.D();
                                            iL8 = e16.l();
                                        }
                                        j11 += (long) iArr13[i14];
                                        i16--;
                                        i14++;
                                        i17 = iD9;
                                        iL = i72;
                                        jArr3 = jArr19;
                                        iB = i20;
                                        iD5 = i73;
                                        i12 = iL8;
                                        iArr = iArr13;
                                    }
                                    long j26 = j10 + ((long) iL);
                                    if (e9 == null) {
                                        z10 = true;
                                        break;
                                    }
                                    while (true) {
                                        if (i13 <= 0) {
                                            z10 = true;
                                            break;
                                        }
                                        if (e9.D() != 0) {
                                            z10 = false;
                                            break;
                                        }
                                        e9.l();
                                        i13--;
                                    }
                                    if (iD5 != 0 && iD7 == 0 && i18 == 0 && i71 == 0) {
                                        i19 = iD8;
                                        if (i19 == 0 && z10) {
                                            pVarA2 = pVar2;
                                        }
                                        iB = iB;
                                        j12 = j26;
                                        jArr4 = jArrCopyOf2;
                                    } else {
                                        i19 = iD8;
                                    }
                                    StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                                    pVarA2 = pVar2;
                                    A0.O.J(sb, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                    A0.O.J(sb, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                    sb.append(i71);
                                    sb.append(", remainingSamplesAtTimestampOffset ");
                                    sb.append(i19);
                                    if (z10) {
                                        str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    } else {
                                        str2 = ", ctts invalid";
                                    }
                                    sb.append(str2);
                                    x.f("BoxParsers", sb.toString());
                                    iB = iB;
                                    j12 = j26;
                                    jArr4 = jArrCopyOf2;
                                }
                                j13 = pVarA2.f27803f;
                                if (j13 > 0) {
                                    jZ5 = M.Z(j9 * 8, 1000000L, j13, RoundingMode.HALF_DOWN);
                                    if (jZ5 > 0 && jZ5 < 2147483647L) {
                                        C3135s c3135sA3 = c3136t4.a();
                                        c3135sA3.f26990h = (int) jZ5;
                                        pVarA2 = pVarA2.a(new C3136t(c3135sA3));
                                    }
                                }
                                RoundingMode roundingMode = RoundingMode.DOWN;
                                jZ3 = M.Z(j12, 1000000L, pVarA2.f27800c, roundingMode);
                                j14 = pVarA2.f27800c;
                                jArr5 = pVarA2.f27806i;
                                if (jArr5 == null) {
                                    M.Y(j14, jArrCopyOf);
                                    sVar = new s(pVarA2, jArr4, iArrCopyOf2, i15, jArrCopyOf, iArrCopyOf, jZ3);
                                } else {
                                    length = jArr5.length;
                                    c3136t5 = pVarA2.f27804g;
                                    i23 = pVarA2.f27799b;
                                    i24 = iB;
                                    jArr6 = pVarA2.f27807j;
                                    iArr2 = iArrCopyOf;
                                    if (length == 1 || i23 != 1 || jArrCopyOf.length < 2) {
                                        i25 = i23;
                                        jArr7 = jArr6;
                                        iArr3 = iArrCopyOf2;
                                        i26 = i15;
                                    } else {
                                        jArr6.getClass();
                                        long j27 = jArr6[0];
                                        i26 = i15;
                                        jArr7 = jArr6;
                                        long jZ6 = j27 + M.Z(jArr5[0], pVarA2.f27800c, pVarA2.f27801d, roundingMode);
                                        int length2 = jArrCopyOf.length - 1;
                                        i25 = i23;
                                        int i74 = M.i(4, 0, length2);
                                        iArr3 = iArrCopyOf2;
                                        int i75 = M.i(jArrCopyOf.length - 4, 0, length2);
                                        long j28 = jArrCopyOf[0];
                                        if (j28 <= j27 && j27 < jArrCopyOf[i74] && jArrCopyOf[i75] < jZ6 && jZ6 <= j12) {
                                            long j29 = j12 - jZ6;
                                            j12 = j12;
                                            long jZ7 = M.Z(j27 - j28, c3136t5.f27017H, pVarA2.f27800c, roundingMode);
                                            long[] jArr20 = jArrCopyOf;
                                            long jZ8 = M.Z(j29, c3136t5.f27017H, pVarA2.f27800c, roundingMode);
                                            if (!(jZ7 == 0 && jZ8 == 0) && jZ7 <= 2147483647L && jZ8 <= 2147483647L) {
                                                a8.f7303a = (int) jZ7;
                                                a8.f7304b = (int) jZ8;
                                                M.Y(j14, jArr20);
                                                sVar = new s(pVarA2, jArr4, iArr3, i26, jArr20, iArr2, M.Z(jArr5[0], 1000000L, pVarA2.f27801d, roundingMode));
                                            } else {
                                                jArrCopyOf = jArr20;
                                            }
                                        }
                                        z11 = true;
                                        if (jArr5.length != 1) {
                                            if (jArr5[0] == 0) {
                                                jArr7.getClass();
                                                j19 = jArr7[0];
                                                for (i42 = 0; i42 < jArrCopyOf.length; i42++) {
                                                    jArrCopyOf[i42] = M.Z(jArrCopyOf[i42] - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN);
                                                }
                                                sVar = new s(pVarA2, jArr4, iArr3, i26, jArrCopyOf, iArr2, M.Z(j12 - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN));
                                            } else {
                                                z11 = true;
                                            }
                                            arrayList.add(sVar);
                                        }
                                        if (i25 == z11) {
                                            z12 = true;
                                        } else {
                                            z12 = false;
                                        }
                                        iArr4 = new int[jArr5.length];
                                        iArr5 = new int[jArr5.length];
                                        jArr7.getClass();
                                        i27 = 0;
                                        z13 = false;
                                        i28 = 0;
                                        i29 = 0;
                                        while (i27 < jArr5.length) {
                                            j17 = jArr7[i27];
                                            if (j17 != -1) {
                                                boolean z18 = z13;
                                                int i76 = i28;
                                                long jZ9 = M.Z(jArr5[i27], pVarA2.f27800c, pVarA2.f27801d, RoundingMode.DOWN);
                                                i35 = 1;
                                                iArr4[i27] = M.e(jArrCopyOf, j17, true);
                                                j18 = j17 + jZ9;
                                                iArr5[i27] = M.a(jArrCopyOf, j18, z12);
                                                i36 = iArr4[i27];
                                                while (true) {
                                                    i37 = iArr4[i27];
                                                    if (i37 < 0 || (iArr2[i37] & i35) != 0) {
                                                        break;
                                                    }
                                                    iArr4[i27] = i37 - i35;
                                                    i35 = 1;
                                                }
                                                if (i37 < 0) {
                                                    iArr4[i27] = i36;
                                                    while (true) {
                                                        i41 = iArr4[i27];
                                                        if (i41 >= iArr5[i27] || (iArr2[i41] & 1) != 0) {
                                                            break;
                                                        }
                                                        iArr4[i27] = i41 + 1;
                                                    }
                                                }
                                                if (i25 == 2 && iArr4[i27] != iArr5[i27]) {
                                                    while (true) {
                                                        i39 = iArr5[i27];
                                                        if (i39 < jArrCopyOf.length - 1) {
                                                            break;
                                                        }
                                                        i40 = i39 + 1;
                                                        if (jArrCopyOf[i40] <= j18) {
                                                            break;
                                                        }
                                                        iArr5[i27] = i40;
                                                    }
                                                }
                                                int i77 = iArr5[i27];
                                                i38 = iArr4[i27];
                                                i28 = (i77 - i38) + i76;
                                                if (i29 != i38) {
                                                    z17 = true;
                                                } else {
                                                    z17 = false;
                                                }
                                                z13 = z18 | z17;
                                                i29 = i77;
                                            }
                                            i27++;
                                            jArr5 = jArr5;
                                        }
                                        jArr8 = jArr5;
                                        boolean z19 = z13;
                                        if (i28 != i24) {
                                            z14 = true;
                                        } else {
                                            z14 = false;
                                        }
                                        z15 = z19 | z14;
                                        if (z15) {
                                            jArr9 = new long[i28];
                                        } else {
                                            jArr9 = jArr4;
                                        }
                                        if (z15) {
                                            iArr6 = new int[i28];
                                        } else {
                                            iArr6 = iArr3;
                                        }
                                        if (z15) {
                                            i26 = 0;
                                        }
                                        if (z15) {
                                            iArr7 = new int[i28];
                                        } else {
                                            iArr7 = iArr2;
                                        }
                                        jArr10 = new long[i28];
                                        i30 = i26;
                                        j15 = 0;
                                        i31 = 0;
                                        z16 = false;
                                        i32 = 0;
                                        while (i31 < jArr8.length) {
                                            j16 = jArr7[i31];
                                            i33 = iArr4[i31];
                                            int[] iArr14 = iArr4;
                                            i34 = iArr5[i31];
                                            if (z15) {
                                                int i78 = i34 - i33;
                                                System.arraycopy(jArr4, i33, jArr9, i32, i78);
                                                iArr9 = iArr3;
                                                System.arraycopy(iArr9, i33, iArr6, i32, i78);
                                                iArr8 = iArr2;
                                                System.arraycopy(iArr8, i33, iArr7, i32, i78);
                                            } else {
                                                iArr8 = iArr2;
                                                iArr9 = iArr3;
                                            }
                                            int i79 = i30;
                                            while (i33 < i34) {
                                                RoundingMode roundingMode2 = RoundingMode.DOWN;
                                                int[] iArr15 = iArr8;
                                                int i80 = i34;
                                                long jZ10 = M.Z(j15, 1000000L, pVarA2.f27801d, roundingMode2);
                                                long[] jArr21 = jArrCopyOf;
                                                int[] iArr16 = iArr7;
                                                jZ4 = M.Z(jArrCopyOf[i33] - j16, 1000000L, pVarA2.f27800c, roundingMode2);
                                                if (jZ4 < 0) {
                                                    z16 = true;
                                                }
                                                jArr10[i32] = jZ10 + jZ4;
                                                if (!z15 && iArr6[i32] > i79) {
                                                    i79 = iArr9[i33];
                                                }
                                                i32++;
                                                i33++;
                                                i34 = i80;
                                                iArr8 = iArr15;
                                                jArrCopyOf = jArr21;
                                                iArr7 = iArr16;
                                            }
                                            int[] iArr17 = iArr8;
                                            j15 += jArr8[i31];
                                            i31++;
                                            iArr3 = iArr9;
                                            i30 = i79;
                                            iArr4 = iArr14;
                                            iArr5 = iArr5;
                                            jArr4 = jArr4;
                                            jArr9 = jArr9;
                                            iArr2 = iArr17;
                                        }
                                        long[] jArr22 = jArr9;
                                        int[] iArr18 = iArr7;
                                        long jZ11 = M.Z(j15, 1000000L, pVarA2.f27801d, RoundingMode.DOWN);
                                        if (z16) {
                                            C3135s c3135sA4 = c3136t5.a();
                                            c3135sA4.f27002t = true;
                                            pVarA2 = pVarA2.a(new C3136t(c3135sA4));
                                        }
                                        sVar = new s(pVarA2, jArr22, iArr6, i30, jArr10, iArr18, jZ11);
                                        arrayList.add(sVar);
                                    }
                                    z11 = true;
                                    if (jArr5.length != 1) {
                                        if (jArr5[0] == 0) {
                                            jArr7.getClass();
                                            j19 = jArr7[0];
                                            while (i42 < jArrCopyOf.length) {
                                                jArrCopyOf[i42] = M.Z(jArrCopyOf[i42] - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN);
                                            }
                                            sVar = new s(pVarA2, jArr4, iArr3, i26, jArrCopyOf, iArr2, M.Z(j12 - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN));
                                        } else {
                                            z11 = true;
                                        }
                                        arrayList.add(sVar);
                                    }
                                    if (i25 == z11) {
                                        z12 = true;
                                    } else {
                                        z12 = false;
                                    }
                                    iArr4 = new int[jArr5.length];
                                    iArr5 = new int[jArr5.length];
                                    jArr7.getClass();
                                    i27 = 0;
                                    z13 = false;
                                    i28 = 0;
                                    i29 = 0;
                                    while (i27 < jArr5.length) {
                                        j17 = jArr7[i27];
                                        if (j17 != -1) {
                                            boolean z110 = z13;
                                            int i710 = i28;
                                            long jZ12 = M.Z(jArr5[i27], pVarA2.f27800c, pVarA2.f27801d, RoundingMode.DOWN);
                                            i35 = 1;
                                            iArr4[i27] = M.e(jArrCopyOf, j17, true);
                                            j18 = j17 + jZ12;
                                            iArr5[i27] = M.a(jArrCopyOf, j18, z12);
                                            i36 = iArr4[i27];
                                            while (true) {
                                                i37 = iArr4[i27];
                                                if (i37 < 0) {
                                                    break;
                                                }
                                                break;
                                                break;
                                                iArr4[i27] = i37 - i35;
                                                i35 = 1;
                                            }
                                            if (i37 < 0) {
                                                iArr4[i27] = i36;
                                                while (true) {
                                                    i41 = iArr4[i27];
                                                    if (i41 >= iArr5[i27]) {
                                                        break;
                                                    }
                                                    break;
                                                    break;
                                                    iArr4[i27] = i41 + 1;
                                                }
                                            }
                                            if (i25 == 2) {
                                                while (true) {
                                                    i39 = iArr5[i27];
                                                    if (i39 < jArrCopyOf.length - 1) {
                                                        break;
                                                        break;
                                                    }
                                                    i40 = i39 + 1;
                                                    if (jArrCopyOf[i40] <= j18) {
                                                        break;
                                                        break;
                                                    }
                                                    iArr5[i27] = i40;
                                                }
                                            }
                                            int i711 = iArr5[i27];
                                            i38 = iArr4[i27];
                                            i28 = (i711 - i38) + i710;
                                            if (i29 != i38) {
                                                z17 = true;
                                            } else {
                                                z17 = false;
                                            }
                                            z13 = z110 | z17;
                                            i29 = i711;
                                        }
                                        i27++;
                                        jArr5 = jArr5;
                                    }
                                    jArr8 = jArr5;
                                    boolean z111 = z13;
                                    if (i28 != i24) {
                                        z14 = true;
                                    } else {
                                        z14 = false;
                                    }
                                    z15 = z111 | z14;
                                    if (z15) {
                                        jArr9 = new long[i28];
                                    } else {
                                        jArr9 = jArr4;
                                    }
                                    if (z15) {
                                        iArr6 = new int[i28];
                                    } else {
                                        iArr6 = iArr3;
                                    }
                                    if (z15) {
                                        i26 = 0;
                                    }
                                    if (z15) {
                                        iArr7 = new int[i28];
                                    } else {
                                        iArr7 = iArr2;
                                    }
                                    jArr10 = new long[i28];
                                    i30 = i26;
                                    j15 = 0;
                                    i31 = 0;
                                    z16 = false;
                                    i32 = 0;
                                    while (i31 < jArr8.length) {
                                        j16 = jArr7[i31];
                                        i33 = iArr4[i31];
                                        int[] iArr19 = iArr4;
                                        i34 = iArr5[i31];
                                        if (z15) {
                                            int i712 = i34 - i33;
                                            System.arraycopy(jArr4, i33, jArr9, i32, i712);
                                            iArr9 = iArr3;
                                            System.arraycopy(iArr9, i33, iArr6, i32, i712);
                                            iArr8 = iArr2;
                                            System.arraycopy(iArr8, i33, iArr7, i32, i712);
                                        } else {
                                            iArr8 = iArr2;
                                            iArr9 = iArr3;
                                        }
                                        int i713 = i30;
                                        while (i33 < i34) {
                                            RoundingMode roundingMode3 = RoundingMode.DOWN;
                                            int[] iArr110 = iArr8;
                                            int i81 = i34;
                                            long jZ13 = M.Z(j15, 1000000L, pVarA2.f27801d, roundingMode3);
                                            long[] jArr23 = jArrCopyOf;
                                            int[] iArr111 = iArr7;
                                            jZ4 = M.Z(jArrCopyOf[i33] - j16, 1000000L, pVarA2.f27800c, roundingMode3);
                                            if (jZ4 < 0) {
                                                z16 = true;
                                            }
                                            jArr10[i32] = jZ13 + jZ4;
                                            if (!z15) {
                                            }
                                            i32++;
                                            i33++;
                                            i34 = i81;
                                            iArr8 = iArr110;
                                            jArrCopyOf = jArr23;
                                            iArr7 = iArr111;
                                        }
                                        int[] iArr112 = iArr8;
                                        j15 += jArr8[i31];
                                        i31++;
                                        iArr3 = iArr9;
                                        i30 = i713;
                                        iArr4 = iArr19;
                                        iArr5 = iArr5;
                                        jArr4 = jArr4;
                                        jArr9 = jArr9;
                                        iArr2 = iArr112;
                                    }
                                    long[] jArr24 = jArr9;
                                    int[] iArr113 = iArr7;
                                    long jZ14 = M.Z(j15, 1000000L, pVarA2.f27801d, RoundingMode.DOWN);
                                    if (z16) {
                                        C3135s c3135sA5 = c3136t5.a();
                                        c3135sA5.f27002t = true;
                                        pVarA2 = pVarA2.a(new C3136t(c3135sA5));
                                    }
                                    sVar = new s(pVarA2, jArr24, iArr6, i30, jArr10, iArr113, jZ14);
                                    arrayList.add(sVar);
                                }
                            }
                            arrayList.add(sVar);
                        }
                        i45++;
                        arrayList2 = arrayList;
                        i43 = 10;
                        b9 = -1;
                        i44 = 1;
                    }
                    jArr = null;
                    jArr2 = null;
                    c3136t = (C3136t) gVarI.f10557K;
                    if (c3136t == null) {
                        i10 = c1288f2.f18712b;
                        if (i10 != 0) {
                            bVar = new b(i10);
                            C3135s c3135sA6 = c3136t.a();
                            n7 = ((C3136t) gVarI.f10557K).f27038l;
                            if (n7 != null) {
                                n8 = n7.a(bVar);
                            } else {
                                n8 = new N(bVar);
                            }
                            c3135sA6.f26993k = n8;
                            c3136t2 = new C3136t(c3135sA6);
                        } else {
                            c3136t2 = c3136t;
                        }
                        pVar = new p(c1288f2.f18711a, b8, jB2, j22, jZ, jZ2, c3136t2, gVarI.f10555I, (q[]) gVarI.f10556J, gVarI.f10554H, jArr, jArr2);
                        hVar = hVar;
                    }
                    pVarA = (p) hVar.apply(pVar);
                    if (pVarA == null) {
                        arrayList = arrayList;
                    } else {
                        c cVarE8 = cVar2.e(1835297121);
                        cVarE8.getClass();
                        c cVarE9 = cVarE8.e(1835626086);
                        cVarE9.getClass();
                        cVarE2 = cVarE9.e(1937007212);
                        cVarE2.getClass();
                        dVarF = cVarE2.f(1937011578);
                        c3136t3 = pVarA.f27804g;
                        if (dVarF != null) {
                            bVar2 = new V.b(dVarF, c3136t3);
                        } else {
                            dVarF2 = cVarE2.f(1937013298);
                            if (dVarF2 == null) {
                                throw P.a("Track has no sample table size information", null);
                            }
                            z zVar2 = new z();
                            E e17 = dVarF2.f29446c;
                            zVar2.f28133e = e17;
                            e17.L(12);
                            zVar2.f28130b = ((E) zVar2.f28133e).D() & 255;
                            zVar2.f28129a = ((E) zVar2.f28133e).D();
                            bVar2 = zVar2;
                        }
                        iB = bVar2.b();
                        if (iB == 0) {
                            sVar = new s(pVarA, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                            i45 = i45;
                        } else {
                            if (pVarA.f27799b == 2) {
                                j20 = pVarA.f27803f;
                                if (j20 > 0) {
                                    C3135s c3135sA7 = c3136t3.a();
                                    c3135sA7.f27007y = iB / (j20 / 1000000.0f);
                                    pVarA = pVarA.a(new C3136t(c3135sA7));
                                }
                            }
                            dVarF3 = cVarE2.f(1937007471);
                            if (dVarF3 == null) {
                                dVarF3 = cVarE2.f(1668232756);
                                dVarF3.getClass();
                                z9 = true;
                            } else {
                                z9 = false;
                            }
                            d dVarF14 = cVarE2.f(1937011555);
                            dVarF14.getClass();
                            d dVarF15 = cVarE2.f(1937011827);
                            dVarF15.getClass();
                            dVarF4 = cVarE2.f(1937011571);
                            if (dVarF4 != null) {
                                e8 = dVarF4.f29446c;
                            } else {
                                e8 = null;
                            }
                            dVarF5 = cVarE2.f(1668576371);
                            if (dVarF5 != null) {
                                e9 = dVarF5.f29446c;
                            } else {
                                e9 = null;
                            }
                            bVar3 = new b(dVarF14.f29446c, dVarF3.f29446c, z9);
                            E e18 = dVarF15.f29446c;
                            e18.L(12);
                            iD = e18.D() - 1;
                            iD2 = e18.D();
                            iD3 = e18.D();
                            if (e9 != null) {
                                e9.L(12);
                                iD4 = e9.D();
                            } else {
                                iD4 = 0;
                            }
                            if (e8 != null) {
                                e8.L(12);
                                iD5 = e8.D();
                                if (iD5 > 0) {
                                    e10 = e8;
                                    iD6 = e8.D() - 1;
                                } else {
                                    iD6 = -1;
                                    e10 = null;
                                }
                            } else {
                                e10 = e8;
                                iD5 = 0;
                                iD6 = -1;
                            }
                            iA = bVar2.a();
                            c3136t4 = pVarA.f27804g;
                            i11 = iD6;
                            String str6 = c3136t4.f27041o;
                            i45 = i45;
                            if (iA == -1) {
                                jArr3 = new long[iB];
                                iArr = new int[iB];
                                jArrCopyOf = new long[iB];
                                iArrCopyOf = new int[iB];
                                int i714 = iD;
                                i12 = iD3;
                                i13 = iD4;
                                iD7 = iD2;
                                j9 = 0;
                                j10 = 0;
                                j11 = 0;
                                i14 = 0;
                                i15 = 0;
                                i16 = 0;
                                iL = 0;
                                iD8 = 0;
                                p pVar3 = pVarA;
                                i17 = i11;
                                while (true) {
                                    if (i14 >= iB) {
                                        jArrCopyOf2 = jArr3;
                                        i18 = i16;
                                        iArrCopyOf2 = iArr;
                                        break;
                                    }
                                    zA = true;
                                    while (i16 == 0) {
                                        zA = bVar3.a();
                                        if (!zA) {
                                            break;
                                            break;
                                        }
                                        j11 = bVar3.f27679d;
                                        i16 = bVar3.f27678c;
                                        iB = iB;
                                        i17 = i17;
                                    }
                                    i20 = iB;
                                    i21 = i17;
                                    if (!zA) {
                                        x.f("BoxParsers", "Unexpected end of chunk data");
                                        jArrCopyOf2 = Arrays.copyOf(jArr3, i14);
                                        iArrCopyOf2 = Arrays.copyOf(iArr, i14);
                                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i14);
                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i14);
                                        iB = i14;
                                        i18 = i16;
                                        break;
                                    }
                                    if (e9 != null) {
                                        while (iD8 == 0) {
                                            iD8 = e9.D();
                                            iL = e9.l();
                                            i13--;
                                        }
                                        iD8--;
                                    }
                                    int i715 = iL;
                                    jArr3[i14] = j11;
                                    iC = bVar2.c();
                                    iArr[i14] = iC;
                                    long[] jArr110 = jArr3;
                                    int[] iArr114 = iArr;
                                    j9 += (long) iC;
                                    if (iC > i15) {
                                        i15 = iC;
                                    }
                                    jArrCopyOf[i14] = j10 + ((long) i715);
                                    if (e10 == null) {
                                        i22 = 1;
                                    } else {
                                        i22 = 0;
                                    }
                                    iArrCopyOf[i14] = i22;
                                    iD9 = i21;
                                    if (i14 == iD9) {
                                        iArrCopyOf[i14] = 1;
                                        iD5--;
                                        if (iD5 > 0) {
                                            e10.getClass();
                                            iD9 = e10.D() - 1;
                                        }
                                    }
                                    int i716 = iD5;
                                    int iL9 = i12;
                                    j10 += (long) iL9;
                                    iD7--;
                                    if (iD7 != 0) {
                                    }
                                    j11 += (long) iArr114[i14];
                                    i16--;
                                    i14++;
                                    i17 = iD9;
                                    iL = i715;
                                    jArr3 = jArr110;
                                    iB = i20;
                                    iD5 = i716;
                                    i12 = iL9;
                                    iArr = iArr114;
                                }
                                long j210 = j10 + ((long) iL);
                                if (e9 == null) {
                                    z10 = true;
                                    break;
                                }
                                while (true) {
                                    if (i13 <= 0) {
                                        z10 = true;
                                        break;
                                    }
                                    if (e9.D() != 0) {
                                        z10 = false;
                                        break;
                                    }
                                    e9.l();
                                    i13--;
                                }
                                if (iD5 != 0) {
                                    i19 = iD8;
                                    StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                                    pVarA2 = pVar3;
                                    A0.O.J(sb2, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                    A0.O.J(sb2, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                    sb2.append(i714);
                                    sb2.append(", remainingSamplesAtTimestampOffset ");
                                    sb2.append(i19);
                                    if (z10) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                    sb2.append(str2);
                                    x.f("BoxParsers", sb2.toString());
                                } else {
                                    i19 = iD8;
                                    StringBuilder sb3 = new StringBuilder("Inconsistent stbl box for track ");
                                    pVarA2 = pVar3;
                                    A0.O.J(sb3, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                    A0.O.J(sb3, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                    sb3.append(i714);
                                    sb3.append(", remainingSamplesAtTimestampOffset ");
                                    sb3.append(i19);
                                    if (z10) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                    sb3.append(str2);
                                    x.f("BoxParsers", sb3.toString());
                                }
                                iB = iB;
                                j12 = j210;
                                jArr4 = jArrCopyOf2;
                            } else {
                                jArr3 = new long[iB];
                                iArr = new int[iB];
                                jArrCopyOf = new long[iB];
                                iArrCopyOf = new int[iB];
                                int i717 = iD;
                                i12 = iD3;
                                i13 = iD4;
                                iD7 = iD2;
                                j9 = 0;
                                j10 = 0;
                                j11 = 0;
                                i14 = 0;
                                i15 = 0;
                                i16 = 0;
                                iL = 0;
                                iD8 = 0;
                                p pVar4 = pVarA;
                                i17 = i11;
                                while (true) {
                                    if (i14 >= iB) {
                                        jArrCopyOf2 = jArr3;
                                        i18 = i16;
                                        iArrCopyOf2 = iArr;
                                        break;
                                    }
                                    zA = true;
                                    while (i16 == 0) {
                                        zA = bVar3.a();
                                        if (!zA) {
                                            break;
                                            break;
                                        }
                                        j11 = bVar3.f27679d;
                                        i16 = bVar3.f27678c;
                                        iB = iB;
                                        i17 = i17;
                                    }
                                    i20 = iB;
                                    i21 = i17;
                                    if (!zA) {
                                        x.f("BoxParsers", "Unexpected end of chunk data");
                                        jArrCopyOf2 = Arrays.copyOf(jArr3, i14);
                                        iArrCopyOf2 = Arrays.copyOf(iArr, i14);
                                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i14);
                                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i14);
                                        iB = i14;
                                        i18 = i16;
                                        break;
                                    }
                                    if (e9 != null) {
                                        while (iD8 == 0) {
                                            iD8 = e9.D();
                                            iL = e9.l();
                                            i13--;
                                        }
                                        iD8--;
                                    }
                                    int i718 = iL;
                                    jArr3[i14] = j11;
                                    iC = bVar2.c();
                                    iArr[i14] = iC;
                                    long[] jArr111 = jArr3;
                                    int[] iArr115 = iArr;
                                    j9 += (long) iC;
                                    if (iC > i15) {
                                        i15 = iC;
                                    }
                                    jArrCopyOf[i14] = j10 + ((long) i718);
                                    if (e10 == null) {
                                        i22 = 1;
                                    } else {
                                        i22 = 0;
                                    }
                                    iArrCopyOf[i14] = i22;
                                    iD9 = i21;
                                    if (i14 == iD9) {
                                        iArrCopyOf[i14] = 1;
                                        iD5--;
                                        if (iD5 > 0) {
                                            e10.getClass();
                                            iD9 = e10.D() - 1;
                                        }
                                    }
                                    int i719 = iD5;
                                    int iL10 = i12;
                                    j10 += (long) iL10;
                                    iD7--;
                                    if (iD7 != 0) {
                                    }
                                    j11 += (long) iArr115[i14];
                                    i16--;
                                    i14++;
                                    i17 = iD9;
                                    iL = i718;
                                    jArr3 = jArr111;
                                    iB = i20;
                                    iD5 = i719;
                                    i12 = iL10;
                                    iArr = iArr115;
                                }
                                long j211 = j10 + ((long) iL);
                                if (e9 == null) {
                                    z10 = true;
                                    break;
                                }
                                while (true) {
                                    if (i13 <= 0) {
                                        z10 = true;
                                        break;
                                    }
                                    if (e9.D() != 0) {
                                        z10 = false;
                                        break;
                                    }
                                    e9.l();
                                    i13--;
                                }
                                if (iD5 != 0) {
                                    i19 = iD8;
                                    StringBuilder sb4 = new StringBuilder("Inconsistent stbl box for track ");
                                    pVarA2 = pVar4;
                                    A0.O.J(sb4, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                    A0.O.J(sb4, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                    sb4.append(i717);
                                    sb4.append(", remainingSamplesAtTimestampOffset ");
                                    sb4.append(i19);
                                    if (z10) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                    sb4.append(str2);
                                    x.f("BoxParsers", sb4.toString());
                                } else {
                                    i19 = iD8;
                                    StringBuilder sb5 = new StringBuilder("Inconsistent stbl box for track ");
                                    pVarA2 = pVar4;
                                    A0.O.J(sb5, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                    A0.O.J(sb5, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                    sb5.append(i717);
                                    sb5.append(", remainingSamplesAtTimestampOffset ");
                                    sb5.append(i19);
                                    if (z10) {
                                        str2 = ", ctts invalid";
                                    } else {
                                        str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                    }
                                    sb5.append(str2);
                                    x.f("BoxParsers", sb5.toString());
                                }
                                iB = iB;
                                j12 = j211;
                                jArr4 = jArrCopyOf2;
                            }
                            j13 = pVarA2.f27803f;
                            if (j13 > 0) {
                                jZ5 = M.Z(j9 * 8, 1000000L, j13, RoundingMode.HALF_DOWN);
                                if (jZ5 > 0) {
                                    C3135s c3135sA8 = c3136t4.a();
                                    c3135sA8.f26990h = (int) jZ5;
                                    pVarA2 = pVarA2.a(new C3136t(c3135sA8));
                                }
                            }
                            RoundingMode roundingMode4 = RoundingMode.DOWN;
                            jZ3 = M.Z(j12, 1000000L, pVarA2.f27800c, roundingMode4);
                            j14 = pVarA2.f27800c;
                            jArr5 = pVarA2.f27806i;
                            if (jArr5 == null) {
                                M.Y(j14, jArrCopyOf);
                                sVar = new s(pVarA2, jArr4, iArrCopyOf2, i15, jArrCopyOf, iArrCopyOf, jZ3);
                            } else {
                                length = jArr5.length;
                                c3136t5 = pVarA2.f27804g;
                                i23 = pVarA2.f27799b;
                                i24 = iB;
                                jArr6 = pVarA2.f27807j;
                                iArr2 = iArrCopyOf;
                                if (length == 1) {
                                    i25 = i23;
                                    jArr7 = jArr6;
                                    iArr3 = iArrCopyOf2;
                                    i26 = i15;
                                } else {
                                    i25 = i23;
                                    jArr7 = jArr6;
                                    iArr3 = iArrCopyOf2;
                                    i26 = i15;
                                }
                                z11 = true;
                                if (jArr5.length != 1) {
                                    if (jArr5[0] == 0) {
                                        jArr7.getClass();
                                        j19 = jArr7[0];
                                        while (i42 < jArrCopyOf.length) {
                                            jArrCopyOf[i42] = M.Z(jArrCopyOf[i42] - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN);
                                        }
                                        sVar = new s(pVarA2, jArr4, iArr3, i26, jArrCopyOf, iArr2, M.Z(j12 - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN));
                                    } else {
                                        z11 = true;
                                    }
                                    arrayList.add(sVar);
                                }
                                if (i25 == z11) {
                                    z12 = true;
                                } else {
                                    z12 = false;
                                }
                                iArr4 = new int[jArr5.length];
                                iArr5 = new int[jArr5.length];
                                jArr7.getClass();
                                i27 = 0;
                                z13 = false;
                                i28 = 0;
                                i29 = 0;
                                while (i27 < jArr5.length) {
                                    j17 = jArr7[i27];
                                    if (j17 != -1) {
                                        boolean z112 = z13;
                                        int i7110 = i28;
                                        long jZ15 = M.Z(jArr5[i27], pVarA2.f27800c, pVarA2.f27801d, RoundingMode.DOWN);
                                        i35 = 1;
                                        iArr4[i27] = M.e(jArrCopyOf, j17, true);
                                        j18 = j17 + jZ15;
                                        iArr5[i27] = M.a(jArrCopyOf, j18, z12);
                                        i36 = iArr4[i27];
                                        while (true) {
                                            i37 = iArr4[i27];
                                            if (i37 < 0) {
                                                break;
                                                break;
                                            }
                                            break;
                                            break;
                                            iArr4[i27] = i37 - i35;
                                            i35 = 1;
                                        }
                                        if (i37 < 0) {
                                            iArr4[i27] = i36;
                                            while (true) {
                                                i41 = iArr4[i27];
                                                if (i41 >= iArr5[i27]) {
                                                    break;
                                                    break;
                                                }
                                                break;
                                                break;
                                                iArr4[i27] = i41 + 1;
                                            }
                                        }
                                        if (i25 == 2) {
                                            while (true) {
                                                i39 = iArr5[i27];
                                                if (i39 < jArrCopyOf.length - 1) {
                                                    break;
                                                    break;
                                                }
                                                i40 = i39 + 1;
                                                if (jArrCopyOf[i40] <= j18) {
                                                    break;
                                                    break;
                                                }
                                                iArr5[i27] = i40;
                                            }
                                        }
                                        int i7111 = iArr5[i27];
                                        i38 = iArr4[i27];
                                        i28 = (i7111 - i38) + i7110;
                                        if (i29 != i38) {
                                            z17 = true;
                                        } else {
                                            z17 = false;
                                        }
                                        z13 = z112 | z17;
                                        i29 = i7111;
                                    }
                                    i27++;
                                    jArr5 = jArr5;
                                }
                                jArr8 = jArr5;
                                boolean z113 = z13;
                                if (i28 != i24) {
                                    z14 = true;
                                } else {
                                    z14 = false;
                                }
                                z15 = z113 | z14;
                                if (z15) {
                                    jArr9 = new long[i28];
                                } else {
                                    jArr9 = jArr4;
                                }
                                if (z15) {
                                    iArr6 = new int[i28];
                                } else {
                                    iArr6 = iArr3;
                                }
                                if (z15) {
                                    i26 = 0;
                                }
                                if (z15) {
                                    iArr7 = new int[i28];
                                } else {
                                    iArr7 = iArr2;
                                }
                                jArr10 = new long[i28];
                                i30 = i26;
                                j15 = 0;
                                i31 = 0;
                                z16 = false;
                                i32 = 0;
                                while (i31 < jArr8.length) {
                                    j16 = jArr7[i31];
                                    i33 = iArr4[i31];
                                    int[] iArr116 = iArr4;
                                    i34 = iArr5[i31];
                                    if (z15) {
                                        int i7112 = i34 - i33;
                                        System.arraycopy(jArr4, i33, jArr9, i32, i7112);
                                        iArr9 = iArr3;
                                        System.arraycopy(iArr9, i33, iArr6, i32, i7112);
                                        iArr8 = iArr2;
                                        System.arraycopy(iArr8, i33, iArr7, i32, i7112);
                                    } else {
                                        iArr8 = iArr2;
                                        iArr9 = iArr3;
                                    }
                                    int i7113 = i30;
                                    while (i33 < i34) {
                                        RoundingMode roundingMode5 = RoundingMode.DOWN;
                                        int[] iArr117 = iArr8;
                                        int i82 = i34;
                                        long jZ16 = M.Z(j15, 1000000L, pVarA2.f27801d, roundingMode5);
                                        long[] jArr25 = jArrCopyOf;
                                        int[] iArr118 = iArr7;
                                        jZ4 = M.Z(jArrCopyOf[i33] - j16, 1000000L, pVarA2.f27800c, roundingMode5);
                                        if (jZ4 < 0) {
                                            z16 = true;
                                        }
                                        jArr10[i32] = jZ16 + jZ4;
                                        if (!z15) {
                                        }
                                        i32++;
                                        i33++;
                                        i34 = i82;
                                        iArr8 = iArr117;
                                        jArrCopyOf = jArr25;
                                        iArr7 = iArr118;
                                    }
                                    int[] iArr119 = iArr8;
                                    j15 += jArr8[i31];
                                    i31++;
                                    iArr3 = iArr9;
                                    i30 = i7113;
                                    iArr4 = iArr116;
                                    iArr5 = iArr5;
                                    jArr4 = jArr4;
                                    jArr9 = jArr9;
                                    iArr2 = iArr119;
                                }
                                long[] jArr26 = jArr9;
                                int[] iArr1110 = iArr7;
                                long jZ17 = M.Z(j15, 1000000L, pVarA2.f27801d, RoundingMode.DOWN);
                                if (z16) {
                                    C3135s c3135sA9 = c3136t5.a();
                                    c3135sA9.f27002t = true;
                                    pVarA2 = pVarA2.a(new C3136t(c3135sA9));
                                }
                                sVar = new s(pVarA2, jArr26, iArr6, i30, jArr10, iArr1110, jZ17);
                                arrayList.add(sVar);
                            }
                        }
                        arrayList.add(sVar);
                    }
                    i45++;
                    arrayList2 = arrayList;
                    i43 = 10;
                    b9 = -1;
                    i44 = 1;
                }
                pVar = null;
                pVarA = (p) hVar.apply(pVar);
                if (pVarA == null) {
                    arrayList = arrayList;
                } else {
                    c cVarE10 = cVar2.e(1835297121);
                    cVarE10.getClass();
                    c cVarE11 = cVarE10.e(1835626086);
                    cVarE11.getClass();
                    cVarE2 = cVarE11.e(1937007212);
                    cVarE2.getClass();
                    dVarF = cVarE2.f(1937011578);
                    c3136t3 = pVarA.f27804g;
                    if (dVarF != null) {
                        bVar2 = new V.b(dVarF, c3136t3);
                    } else {
                        dVarF2 = cVarE2.f(1937013298);
                        if (dVarF2 == null) {
                            throw P.a("Track has no sample table size information", null);
                        }
                        z zVar3 = new z();
                        E e19 = dVarF2.f29446c;
                        zVar3.f28133e = e19;
                        e19.L(12);
                        zVar3.f28130b = ((E) zVar3.f28133e).D() & 255;
                        zVar3.f28129a = ((E) zVar3.f28133e).D();
                        bVar2 = zVar3;
                    }
                    iB = bVar2.b();
                    if (iB == 0) {
                        sVar = new s(pVarA, new long[0], new int[0], 0, new long[0], new int[0], 0L);
                        i45 = i45;
                    } else {
                        if (pVarA.f27799b == 2) {
                            j20 = pVarA.f27803f;
                            if (j20 > 0) {
                                C3135s c3135sA10 = c3136t3.a();
                                c3135sA10.f27007y = iB / (j20 / 1000000.0f);
                                pVarA = pVarA.a(new C3136t(c3135sA10));
                            }
                        }
                        dVarF3 = cVarE2.f(1937007471);
                        if (dVarF3 == null) {
                            dVarF3 = cVarE2.f(1668232756);
                            dVarF3.getClass();
                            z9 = true;
                        } else {
                            z9 = false;
                        }
                        d dVarF16 = cVarE2.f(1937011555);
                        dVarF16.getClass();
                        d dVarF17 = cVarE2.f(1937011827);
                        dVarF17.getClass();
                        dVarF4 = cVarE2.f(1937011571);
                        if (dVarF4 != null) {
                            e8 = dVarF4.f29446c;
                        } else {
                            e8 = null;
                        }
                        dVarF5 = cVarE2.f(1668576371);
                        if (dVarF5 != null) {
                            e9 = dVarF5.f29446c;
                        } else {
                            e9 = null;
                        }
                        bVar3 = new b(dVarF16.f29446c, dVarF3.f29446c, z9);
                        E e110 = dVarF17.f29446c;
                        e110.L(12);
                        iD = e110.D() - 1;
                        iD2 = e110.D();
                        iD3 = e110.D();
                        if (e9 != null) {
                            e9.L(12);
                            iD4 = e9.D();
                        } else {
                            iD4 = 0;
                        }
                        if (e8 != null) {
                            e8.L(12);
                            iD5 = e8.D();
                            if (iD5 > 0) {
                                e10 = e8;
                                iD6 = e8.D() - 1;
                            } else {
                                iD6 = -1;
                                e10 = null;
                            }
                        } else {
                            e10 = e8;
                            iD5 = 0;
                            iD6 = -1;
                        }
                        iA = bVar2.a();
                        c3136t4 = pVarA.f27804g;
                        i11 = iD6;
                        String str7 = c3136t4.f27041o;
                        i45 = i45;
                        if (iA == -1) {
                            jArr3 = new long[iB];
                            iArr = new int[iB];
                            jArrCopyOf = new long[iB];
                            iArrCopyOf = new int[iB];
                            int i7114 = iD;
                            i12 = iD3;
                            i13 = iD4;
                            iD7 = iD2;
                            j9 = 0;
                            j10 = 0;
                            j11 = 0;
                            i14 = 0;
                            i15 = 0;
                            i16 = 0;
                            iL = 0;
                            iD8 = 0;
                            p pVar5 = pVarA;
                            i17 = i11;
                            while (true) {
                                if (i14 >= iB) {
                                    jArrCopyOf2 = jArr3;
                                    i18 = i16;
                                    iArrCopyOf2 = iArr;
                                    break;
                                }
                                zA = true;
                                while (i16 == 0) {
                                    zA = bVar3.a();
                                    if (!zA) {
                                        break;
                                        break;
                                    }
                                    j11 = bVar3.f27679d;
                                    i16 = bVar3.f27678c;
                                    iB = iB;
                                    i17 = i17;
                                }
                                i20 = iB;
                                i21 = i17;
                                if (!zA) {
                                    x.f("BoxParsers", "Unexpected end of chunk data");
                                    jArrCopyOf2 = Arrays.copyOf(jArr3, i14);
                                    iArrCopyOf2 = Arrays.copyOf(iArr, i14);
                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i14);
                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i14);
                                    iB = i14;
                                    i18 = i16;
                                    break;
                                }
                                if (e9 != null) {
                                    while (iD8 == 0) {
                                        iD8 = e9.D();
                                        iL = e9.l();
                                        i13--;
                                    }
                                    iD8--;
                                }
                                int i7115 = iL;
                                jArr3[i14] = j11;
                                iC = bVar2.c();
                                iArr[i14] = iC;
                                long[] jArr112 = jArr3;
                                int[] iArr1111 = iArr;
                                j9 += (long) iC;
                                if (iC > i15) {
                                    i15 = iC;
                                }
                                jArrCopyOf[i14] = j10 + ((long) i7115);
                                if (e10 == null) {
                                    i22 = 1;
                                } else {
                                    i22 = 0;
                                }
                                iArrCopyOf[i14] = i22;
                                iD9 = i21;
                                if (i14 == iD9) {
                                    iArrCopyOf[i14] = 1;
                                    iD5--;
                                    if (iD5 > 0) {
                                        e10.getClass();
                                        iD9 = e10.D() - 1;
                                    }
                                }
                                int i7116 = iD5;
                                int iL11 = i12;
                                j10 += (long) iL11;
                                iD7--;
                                if (iD7 != 0) {
                                }
                                j11 += (long) iArr1111[i14];
                                i16--;
                                i14++;
                                i17 = iD9;
                                iL = i7115;
                                jArr3 = jArr112;
                                iB = i20;
                                iD5 = i7116;
                                i12 = iL11;
                                iArr = iArr1111;
                            }
                            long j212 = j10 + ((long) iL);
                            if (e9 == null) {
                                z10 = true;
                                break;
                            }
                            while (true) {
                                if (i13 <= 0) {
                                    z10 = true;
                                    break;
                                }
                                if (e9.D() != 0) {
                                    z10 = false;
                                    break;
                                }
                                e9.l();
                                i13--;
                            }
                            if (iD5 != 0) {
                                i19 = iD8;
                                StringBuilder sb6 = new StringBuilder("Inconsistent stbl box for track ");
                                pVarA2 = pVar5;
                                A0.O.J(sb6, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                A0.O.J(sb6, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                sb6.append(i7114);
                                sb6.append(", remainingSamplesAtTimestampOffset ");
                                sb6.append(i19);
                                if (z10) {
                                    str2 = ", ctts invalid";
                                } else {
                                    str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                                sb6.append(str2);
                                x.f("BoxParsers", sb6.toString());
                            } else {
                                i19 = iD8;
                                StringBuilder sb7 = new StringBuilder("Inconsistent stbl box for track ");
                                pVarA2 = pVar5;
                                A0.O.J(sb7, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                A0.O.J(sb7, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                sb7.append(i7114);
                                sb7.append(", remainingSamplesAtTimestampOffset ");
                                sb7.append(i19);
                                if (z10) {
                                    str2 = ", ctts invalid";
                                } else {
                                    str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                                sb7.append(str2);
                                x.f("BoxParsers", sb7.toString());
                            }
                            iB = iB;
                            j12 = j212;
                            jArr4 = jArrCopyOf2;
                        } else {
                            jArr3 = new long[iB];
                            iArr = new int[iB];
                            jArrCopyOf = new long[iB];
                            iArrCopyOf = new int[iB];
                            int i7117 = iD;
                            i12 = iD3;
                            i13 = iD4;
                            iD7 = iD2;
                            j9 = 0;
                            j10 = 0;
                            j11 = 0;
                            i14 = 0;
                            i15 = 0;
                            i16 = 0;
                            iL = 0;
                            iD8 = 0;
                            p pVar6 = pVarA;
                            i17 = i11;
                            while (true) {
                                if (i14 >= iB) {
                                    jArrCopyOf2 = jArr3;
                                    i18 = i16;
                                    iArrCopyOf2 = iArr;
                                    break;
                                }
                                zA = true;
                                while (i16 == 0) {
                                    zA = bVar3.a();
                                    if (!zA) {
                                        break;
                                        break;
                                    }
                                    j11 = bVar3.f27679d;
                                    i16 = bVar3.f27678c;
                                    iB = iB;
                                    i17 = i17;
                                }
                                i20 = iB;
                                i21 = i17;
                                if (!zA) {
                                    x.f("BoxParsers", "Unexpected end of chunk data");
                                    jArrCopyOf2 = Arrays.copyOf(jArr3, i14);
                                    iArrCopyOf2 = Arrays.copyOf(iArr, i14);
                                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i14);
                                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i14);
                                    iB = i14;
                                    i18 = i16;
                                    break;
                                }
                                if (e9 != null) {
                                    while (iD8 == 0) {
                                        iD8 = e9.D();
                                        iL = e9.l();
                                        i13--;
                                    }
                                    iD8--;
                                }
                                int i7118 = iL;
                                jArr3[i14] = j11;
                                iC = bVar2.c();
                                iArr[i14] = iC;
                                long[] jArr113 = jArr3;
                                int[] iArr1112 = iArr;
                                j9 += (long) iC;
                                if (iC > i15) {
                                    i15 = iC;
                                }
                                jArrCopyOf[i14] = j10 + ((long) i7118);
                                if (e10 == null) {
                                    i22 = 1;
                                } else {
                                    i22 = 0;
                                }
                                iArrCopyOf[i14] = i22;
                                iD9 = i21;
                                if (i14 == iD9) {
                                    iArrCopyOf[i14] = 1;
                                    iD5--;
                                    if (iD5 > 0) {
                                        e10.getClass();
                                        iD9 = e10.D() - 1;
                                    }
                                }
                                int i7119 = iD5;
                                int iL12 = i12;
                                j10 += (long) iL12;
                                iD7--;
                                if (iD7 != 0) {
                                }
                                j11 += (long) iArr1112[i14];
                                i16--;
                                i14++;
                                i17 = iD9;
                                iL = i7118;
                                jArr3 = jArr113;
                                iB = i20;
                                iD5 = i7119;
                                i12 = iL12;
                                iArr = iArr1112;
                            }
                            long j213 = j10 + ((long) iL);
                            if (e9 == null) {
                                z10 = true;
                                break;
                            }
                            while (true) {
                                if (i13 <= 0) {
                                    z10 = true;
                                    break;
                                }
                                if (e9.D() != 0) {
                                    z10 = false;
                                    break;
                                }
                                e9.l();
                                i13--;
                            }
                            if (iD5 != 0) {
                                i19 = iD8;
                                StringBuilder sb8 = new StringBuilder("Inconsistent stbl box for track ");
                                pVarA2 = pVar6;
                                A0.O.J(sb8, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                A0.O.J(sb8, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                sb8.append(i7117);
                                sb8.append(", remainingSamplesAtTimestampOffset ");
                                sb8.append(i19);
                                if (z10) {
                                    str2 = ", ctts invalid";
                                } else {
                                    str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                                sb8.append(str2);
                                x.f("BoxParsers", sb8.toString());
                            } else {
                                i19 = iD8;
                                StringBuilder sb9 = new StringBuilder("Inconsistent stbl box for track ");
                                pVarA2 = pVar6;
                                A0.O.J(sb9, pVarA2.f27798a, ": remainingSynchronizationSamples ", iD5, ", remainingSamplesAtTimestampDelta ");
                                A0.O.J(sb9, iD7, ", remainingSamplesInChunk ", i18, ", remainingTimestampDeltaChanges ");
                                sb9.append(i7117);
                                sb9.append(", remainingSamplesAtTimestampOffset ");
                                sb9.append(i19);
                                if (z10) {
                                    str2 = ", ctts invalid";
                                } else {
                                    str2 = HttpUrl.FRAGMENT_ENCODE_SET;
                                }
                                sb9.append(str2);
                                x.f("BoxParsers", sb9.toString());
                            }
                            iB = iB;
                            j12 = j213;
                            jArr4 = jArrCopyOf2;
                        }
                        j13 = pVarA2.f27803f;
                        if (j13 > 0) {
                            jZ5 = M.Z(j9 * 8, 1000000L, j13, RoundingMode.HALF_DOWN);
                            if (jZ5 > 0) {
                                C3135s c3135sA11 = c3136t4.a();
                                c3135sA11.f26990h = (int) jZ5;
                                pVarA2 = pVarA2.a(new C3136t(c3135sA11));
                            }
                        }
                        RoundingMode roundingMode6 = RoundingMode.DOWN;
                        jZ3 = M.Z(j12, 1000000L, pVarA2.f27800c, roundingMode6);
                        j14 = pVarA2.f27800c;
                        jArr5 = pVarA2.f27806i;
                        if (jArr5 == null) {
                            M.Y(j14, jArrCopyOf);
                            sVar = new s(pVarA2, jArr4, iArrCopyOf2, i15, jArrCopyOf, iArrCopyOf, jZ3);
                        } else {
                            length = jArr5.length;
                            c3136t5 = pVarA2.f27804g;
                            i23 = pVarA2.f27799b;
                            i24 = iB;
                            jArr6 = pVarA2.f27807j;
                            iArr2 = iArrCopyOf;
                            if (length == 1) {
                                i25 = i23;
                                jArr7 = jArr6;
                                iArr3 = iArrCopyOf2;
                                i26 = i15;
                            } else {
                                i25 = i23;
                                jArr7 = jArr6;
                                iArr3 = iArrCopyOf2;
                                i26 = i15;
                            }
                            z11 = true;
                            if (jArr5.length != 1) {
                                if (jArr5[0] == 0) {
                                    jArr7.getClass();
                                    j19 = jArr7[0];
                                    while (i42 < jArrCopyOf.length) {
                                        jArrCopyOf[i42] = M.Z(jArrCopyOf[i42] - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN);
                                    }
                                    sVar = new s(pVarA2, jArr4, iArr3, i26, jArrCopyOf, iArr2, M.Z(j12 - j19, 1000000L, pVarA2.f27800c, RoundingMode.DOWN));
                                } else {
                                    z11 = true;
                                }
                                arrayList.add(sVar);
                            }
                            if (i25 == z11) {
                                z12 = true;
                            } else {
                                z12 = false;
                            }
                            iArr4 = new int[jArr5.length];
                            iArr5 = new int[jArr5.length];
                            jArr7.getClass();
                            i27 = 0;
                            z13 = false;
                            i28 = 0;
                            i29 = 0;
                            while (i27 < jArr5.length) {
                                j17 = jArr7[i27];
                                if (j17 != -1) {
                                    boolean z114 = z13;
                                    int i71110 = i28;
                                    long jZ18 = M.Z(jArr5[i27], pVarA2.f27800c, pVarA2.f27801d, RoundingMode.DOWN);
                                    i35 = 1;
                                    iArr4[i27] = M.e(jArrCopyOf, j17, true);
                                    j18 = j17 + jZ18;
                                    iArr5[i27] = M.a(jArrCopyOf, j18, z12);
                                    i36 = iArr4[i27];
                                    while (true) {
                                        i37 = iArr4[i27];
                                        if (i37 < 0) {
                                            break;
                                            break;
                                        }
                                        break;
                                        break;
                                        iArr4[i27] = i37 - i35;
                                        i35 = 1;
                                    }
                                    if (i37 < 0) {
                                        iArr4[i27] = i36;
                                        while (true) {
                                            i41 = iArr4[i27];
                                            if (i41 >= iArr5[i27]) {
                                                break;
                                                break;
                                            }
                                            break;
                                            break;
                                            iArr4[i27] = i41 + 1;
                                        }
                                    }
                                    if (i25 == 2) {
                                        while (true) {
                                            i39 = iArr5[i27];
                                            if (i39 < jArrCopyOf.length - 1) {
                                                break;
                                                break;
                                            }
                                            i40 = i39 + 1;
                                            if (jArrCopyOf[i40] <= j18) {
                                                break;
                                                break;
                                            }
                                            iArr5[i27] = i40;
                                        }
                                    }
                                    int i71111 = iArr5[i27];
                                    i38 = iArr4[i27];
                                    i28 = (i71111 - i38) + i71110;
                                    if (i29 != i38) {
                                        z17 = true;
                                    } else {
                                        z17 = false;
                                    }
                                    z13 = z114 | z17;
                                    i29 = i71111;
                                }
                                i27++;
                                jArr5 = jArr5;
                            }
                            jArr8 = jArr5;
                            boolean z115 = z13;
                            if (i28 != i24) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            z15 = z115 | z14;
                            if (z15) {
                                jArr9 = new long[i28];
                            } else {
                                jArr9 = jArr4;
                            }
                            if (z15) {
                                iArr6 = new int[i28];
                            } else {
                                iArr6 = iArr3;
                            }
                            if (z15) {
                                i26 = 0;
                            }
                            if (z15) {
                                iArr7 = new int[i28];
                            } else {
                                iArr7 = iArr2;
                            }
                            jArr10 = new long[i28];
                            i30 = i26;
                            j15 = 0;
                            i31 = 0;
                            z16 = false;
                            i32 = 0;
                            while (i31 < jArr8.length) {
                                j16 = jArr7[i31];
                                i33 = iArr4[i31];
                                int[] iArr1113 = iArr4;
                                i34 = iArr5[i31];
                                if (z15) {
                                    int i71112 = i34 - i33;
                                    System.arraycopy(jArr4, i33, jArr9, i32, i71112);
                                    iArr9 = iArr3;
                                    System.arraycopy(iArr9, i33, iArr6, i32, i71112);
                                    iArr8 = iArr2;
                                    System.arraycopy(iArr8, i33, iArr7, i32, i71112);
                                } else {
                                    iArr8 = iArr2;
                                    iArr9 = iArr3;
                                }
                                int i71113 = i30;
                                while (i33 < i34) {
                                    RoundingMode roundingMode7 = RoundingMode.DOWN;
                                    int[] iArr1114 = iArr8;
                                    int i83 = i34;
                                    long jZ19 = M.Z(j15, 1000000L, pVarA2.f27801d, roundingMode7);
                                    long[] jArr27 = jArrCopyOf;
                                    int[] iArr1115 = iArr7;
                                    jZ4 = M.Z(jArrCopyOf[i33] - j16, 1000000L, pVarA2.f27800c, roundingMode7);
                                    if (jZ4 < 0) {
                                        z16 = true;
                                    }
                                    jArr10[i32] = jZ19 + jZ4;
                                    if (!z15) {
                                    }
                                    i32++;
                                    i33++;
                                    i34 = i83;
                                    iArr8 = iArr1114;
                                    jArrCopyOf = jArr27;
                                    iArr7 = iArr1115;
                                }
                                int[] iArr1116 = iArr8;
                                j15 += jArr8[i31];
                                i31++;
                                iArr3 = iArr9;
                                i30 = i71113;
                                iArr4 = iArr1113;
                                iArr5 = iArr5;
                                jArr4 = jArr4;
                                jArr9 = jArr9;
                                iArr2 = iArr1116;
                            }
                            long[] jArr28 = jArr9;
                            int[] iArr1117 = iArr7;
                            long jZ110 = M.Z(j15, 1000000L, pVarA2.f27801d, RoundingMode.DOWN);
                            if (z16) {
                                C3135s c3135sA12 = c3136t5.a();
                                c3135sA12.f27002t = true;
                                pVarA2 = pVarA2.a(new C3136t(c3135sA12));
                            }
                            sVar = new s(pVarA2, jArr28, iArr6, i30, jArr10, iArr1117, jZ110);
                            arrayList.add(sVar);
                        }
                    }
                    arrayList.add(sVar);
                }
                i45++;
                arrayList2 = arrayList;
                i43 = 10;
                b9 = -1;
                i44 = 1;
            }
            i45++;
            arrayList2 = arrayList;
            i43 = 10;
            b9 = -1;
            i44 = 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:197:0x0326  */
    /* JADX WARN: Type inference failed for: r1v16, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v30 */
    public static N k(d dVar) {
        N n7;
        N n8;
        int iA;
        int i8;
        N n9;
        Object objT;
        boolean z7 = true;
        E e8 = dVar.f29446c;
        int i9 = 8;
        e8.L(8);
        boolean z8 = false;
        N n10 = new N(new p094m0.M[0]);
        while (e8.a() >= i9) {
            int i10 = e8.f28036b;
            int iL = e8.l();
            int iL2 = e8.l();
            String str = null;
            if (iL2 == 1835365473) {
                e8.L(i10);
                int i11 = i10 + iL;
                e8.M(i9);
                a(e8);
                boolean z9 = z7;
                while (true) {
                    int i12 = e8.f28036b;
                    if (i12 < i11) {
                        int iL3 = e8.l();
                        if (e8.l() == 1768715124) {
                            e8.L(i12);
                            int i13 = i12 + iL3;
                            e8.M(i9);
                            ArrayList arrayList = new ArrayList();
                            ?? r7 = z9;
                            while (true) {
                                int i14 = e8.f28036b;
                                if (i14 >= i13) {
                                    break;
                                }
                                int iL4 = e8.l() + i14;
                                int iL5 = e8.l();
                                int i15 = (iL5 >> 24) & 255;
                                if (i15 == 169 || i15 == 253) {
                                    int i16 = 16777215 & iL5;
                                    if (i16 == 6516084) {
                                        objT = Z3.H.o(iL5, e8);
                                    } else if (i16 == 7233901 || i16 == 7631467) {
                                        objT = Z3.H.t(iL5, e8, "TIT2");
                                    } else if (i16 == 6516589 || i16 == 7828084) {
                                        objT = Z3.H.t(iL5, e8, "TCOM");
                                    } else if (i16 == 6578553) {
                                        objT = Z3.H.t(iL5, e8, "TDRC");
                                    } else if (i16 == 4280916) {
                                        objT = Z3.H.t(iL5, e8, "TPE1");
                                    } else if (i16 == 7630703) {
                                        objT = Z3.H.t(iL5, e8, "TSSE");
                                    } else if (i16 == 6384738) {
                                        objT = Z3.H.t(iL5, e8, "TALB");
                                    } else if (i16 == 7108978) {
                                        objT = Z3.H.t(iL5, e8, "USLT");
                                    } else if (i16 == 6776174) {
                                        objT = Z3.H.t(iL5, e8, "TCON");
                                    } else if (i16 == 6779504) {
                                        objT = Z3.H.t(iL5, e8, "TIT1");
                                    } else {
                                        x.b("MetadataUtil", "Skipped unknown metadata entry: " + p125q0.e.a(iL5));
                                        e8.L(iL4);
                                        objT = null;
                                    }
                                    e8.L(iL4);
                                } else {
                                    if (iL5 == 1735291493) {
                                        try {
                                            String strA = p065i1.k.a(Z3.H.r(e8) - r7);
                                            if (strA != null) {
                                                objT = new o("TCON", str, H.x(strA));
                                            } else {
                                                x.f("MetadataUtil", "Failed to parse standard genre code");
                                                objT = str;
                                            }
                                        } catch (Throwable th) {
                                            e8.L(iL4);
                                            throw th;
                                        }
                                    } else if (iL5 == 1684632427) {
                                        objT = Z3.H.q(iL5, e8, "TPOS");
                                    } else if (iL5 == 1953655662) {
                                        objT = Z3.H.q(iL5, e8, "TRCK");
                                    } else if (iL5 == 1953329263) {
                                        objT = Z3.H.s(iL5, "TBPM", e8, r7, z8);
                                    } else if (iL5 == 1668311404) {
                                        objT = Z3.H.s(iL5, "TCMP", e8, r7, r7);
                                    } else if (iL5 == 1668249202) {
                                        objT = Z3.H.p(e8);
                                    } else if (iL5 == 1631670868) {
                                        objT = Z3.H.t(iL5, e8, "TPE2");
                                    } else if (iL5 == 1936682605) {
                                        objT = Z3.H.t(iL5, e8, "TSOT");
                                    } else if (iL5 == 1936679276) {
                                        objT = Z3.H.t(iL5, e8, "TSOA");
                                    } else if (iL5 == 1936679282) {
                                        objT = Z3.H.t(iL5, e8, "TSOP");
                                    } else if (iL5 == 1936679265) {
                                        objT = Z3.H.t(iL5, e8, "TSO2");
                                    } else if (iL5 == 1936679791) {
                                        objT = Z3.H.t(iL5, e8, "TSOC");
                                    } else if (iL5 == 1920233063) {
                                        objT = Z3.H.s(iL5, "ITUNESADVISORY", e8, z8, z8);
                                    } else if (iL5 == 1885823344) {
                                        objT = Z3.H.s(iL5, "ITUNESGAPLESS", e8, z8, r7);
                                    } else if (iL5 == 1936683886) {
                                        objT = Z3.H.t(iL5, e8, "TVSHOWSORT");
                                    } else if (iL5 == 1953919848) {
                                        objT = Z3.H.t(iL5, e8, "TVSHOW");
                                    } else if (iL5 == 757935405) {
                                        String strV = str;
                                        String strV2 = strV;
                                        int i17 = -1;
                                        int i18 = -1;
                                        while (true) {
                                            int i19 = e8.f28036b;
                                            if (i19 >= iL4) {
                                                break;
                                            }
                                            int iL6 = e8.l();
                                            int iL7 = e8.l();
                                            e8.M(4);
                                            if (iL7 == 1835360622) {
                                                strV = e8.v(iL6 - 12);
                                            } else if (iL7 == 1851878757) {
                                                strV2 = e8.v(iL6 - 12);
                                            } else {
                                                if (iL7 == 1684108385) {
                                                    i17 = i19;
                                                    i18 = iL6;
                                                }
                                                e8.M(iL6 - 12);
                                            }
                                        }
                                        if (strV == null || strV2 == null || i17 == -1) {
                                            objT = null;
                                        } else {
                                            e8.L(i17);
                                            e8.M(16);
                                            objT = new l(strV, strV2, e8.v(i18 - 16));
                                        }
                                        e8.L(iL4);
                                    } else {
                                        x.b("MetadataUtil", "Skipped unknown metadata entry: " + p125q0.e.a(iL5));
                                        e8.L(iL4);
                                        objT = null;
                                    }
                                    e8.L(iL4);
                                }
                                if (objT != null) {
                                    arrayList.add(objT);
                                }
                                r7 = 1;
                                z8 = false;
                                str = null;
                            }
                            if (!arrayList.isEmpty()) {
                                n9 = new N(arrayList);
                                break;
                            }
                            break;
                        }
                        e8.L(i12 + iL3);
                        z9 = true;
                        i9 = 8;
                        z8 = false;
                        str = null;
                    }
                    n9 = null;
                    break;
                }
                n10 = n10.b(n9);
            } else if (iL2 == 1936553057) {
                e8.L(i10);
                int i20 = i10 + iL;
                e8.M(12);
                while (true) {
                    int i21 = e8.f28036b;
                    if (i21 < i20) {
                        int iL8 = e8.l();
                        if (e8.l() == 1935766900) {
                            if (iL8 >= 16) {
                                e8.M(4);
                                int i22 = 0;
                                int i23 = 0;
                                int i24 = -1;
                                while (i22 < 2) {
                                    int iZ = e8.z();
                                    int iZ2 = e8.z();
                                    if (iZ == 0) {
                                        i24 = iZ2;
                                        i8 = 1;
                                    } else {
                                        i8 = 1;
                                        if (iZ == 1) {
                                            i23 = iZ2;
                                        }
                                    }
                                    i22 += i8;
                                }
                                if (i24 == 12) {
                                    iA = 240;
                                } else if (i24 == 13) {
                                    iA = 120;
                                } else {
                                    if (i24 != 21) {
                                        iA = -2147483647;
                                    } else {
                                        if (e8.a() >= 8 && e8.f28036b + 8 <= i20) {
                                            int iL9 = e8.l();
                                            int iL10 = e8.l();
                                            if (iL9 >= 12 && iL10 == 1936877170) {
                                                iA = e8.A();
                                            }
                                        }
                                        iA = -2147483647;
                                    }
                                    if (iA == -2147483647) {
                                        n8 = new N(new p073j1.d(i23, iA));
                                    }
                                    n10 = n10.b(n8);
                                }
                                if (iA == -2147483647) {
                                    n8 = new N(new p073j1.d(i23, iA));
                                }
                                n10 = n10.b(n8);
                            }
                            n8 = null;
                            n10 = n10.b(n8);
                        } else {
                            e8.L(i21 + iL8);
                        }
                    }
                    n8 = null;
                    n10 = n10.b(n8);
                }
            } else if (iL2 == -1451722374) {
                short sW = e8.w();
                e8.M(2);
                String strX = e8.x(sW, StandardCharsets.UTF_8);
                int iMax = Math.max(strX.lastIndexOf(43), strX.lastIndexOf(45));
                try {
                    try {
                        p094m0.M[] mArr = new p094m0.M[1];
                        try {
                            mArr[0] = new p125q0.f(Float.parseFloat(strX.substring(0, iMax)), Float.parseFloat(strX.substring(iMax, strX.length() - 1)));
                            n7 = new N(mArr);
                        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                            n7 = null;
                        }
                    } catch (IndexOutOfBoundsException | NumberFormatException unused2) {
                    }
                } catch (IndexOutOfBoundsException | NumberFormatException unused3) {
                }
                n10 = n10.b(n7);
            }
            e8.L(i10 + iL);
            z7 = true;
            i9 = 8;
            z8 = false;
        }
        return n10;
    }
}
