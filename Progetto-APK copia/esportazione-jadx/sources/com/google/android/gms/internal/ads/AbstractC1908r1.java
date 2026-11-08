package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.r1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1908r1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f20670a;

    static {
        int i8 = Et.f13234a;
        f20670a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static C2213wv a(C1534jr c1534jr) {
        long jD;
        long jD2;
        c1534jr.j(8);
        if (p125q0.e.c(c1534jr.r()) == 0) {
            jD = c1534jr.E();
            jD2 = c1534jr.E();
        } else {
            jD = c1534jr.D();
            jD2 = c1534jr.D();
        }
        return new C2213wv(jD, jD2, c1534jr.E());
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 35101. Try increasing type updates limit count.
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:79)
        */
    public static java.util.ArrayList b(com.google.android.gms.internal.ads.C1753o1 r71, com.google.android.gms.internal.ads.T r72, long r73, com.google.android.gms.internal.ads.C1672mO r75, boolean r76, boolean r77, com.google.android.gms.internal.ads.C2064u1 r78) {
        /*
            Method dump skipped, instruction units count: 3510
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC1908r1.b(com.google.android.gms.internal.ads.o1, com.google.android.gms.internal.ads.T, long, com.google.android.gms.internal.ads.mO, boolean, boolean, com.google.android.gms.internal.ads.u1):java.util.ArrayList");
    }

    public static int c(C1534jr c1534jr) {
        int iW = c1534jr.w();
        int i8 = iW & 127;
        while ((iW & 128) == 128) {
            iW = c1534jr.w();
            i8 = (i8 << 7) | (iW & 127);
        }
        return i8;
    }

    public static Pair d(C1534jr c1534jr, int i8, int i9) throws C0800Ka {
        E1 e8;
        Pair pairCreate;
        int i10;
        int i11;
        byte[] bArr;
        int i12 = c1534jr.f19516b;
        while (i12 - i8 < i9) {
            c1534jr.j(i12);
            int iR = c1534jr.r();
            AbstractC2987b.t0("childAtomSize must be positive", iR > 0);
            if (c1534jr.r() == 1936289382) {
                int i13 = i12 + 8;
                int i14 = -1;
                int i15 = 0;
                String strB = null;
                Integer numValueOf = null;
                while (i13 - i12 < iR) {
                    c1534jr.j(i13);
                    int iR2 = c1534jr.r();
                    int iR3 = c1534jr.r();
                    if (iR3 == 1718775137) {
                        numValueOf = Integer.valueOf(c1534jr.r());
                    } else if (iR3 == 1935894637) {
                        c1534jr.k(4);
                        strB = c1534jr.b(4, StandardCharsets.UTF_8);
                    } else if (iR3 == 1935894633) {
                        i14 = i13;
                        i15 = iR2;
                    }
                    i13 += iR2;
                }
                if ("cenc".equals(strB) || "cbc1".equals(strB) || "cens".equals(strB) || "cbcs".equals(strB)) {
                    AbstractC2987b.t0("frma atom is mandatory", numValueOf != null);
                    AbstractC2987b.t0("schi atom is mandatory", i14 != -1);
                    int i16 = i14 + 8;
                    while (true) {
                        if (i16 - i14 >= i15) {
                            e8 = null;
                            break;
                        }
                        c1534jr.j(i16);
                        int iR4 = c1534jr.r();
                        if (c1534jr.r() == 1952804451) {
                            int iC = p125q0.e.c(c1534jr.r());
                            c1534jr.k(1);
                            if (iC == 0) {
                                c1534jr.k(1);
                                i10 = 0;
                                i11 = 0;
                            } else {
                                int iW = c1534jr.w();
                                int i17 = (iW & 240) >> 4;
                                i10 = iW & 15;
                                i11 = i17;
                            }
                            boolean z7 = c1534jr.w() == 1;
                            int iW2 = c1534jr.w();
                            byte[] bArr2 = new byte[16];
                            c1534jr.f(0, bArr2, 16);
                            if (z7 && iW2 == 0) {
                                int iW3 = c1534jr.w();
                                byte[] bArr3 = new byte[iW3];
                                c1534jr.f(0, bArr3, iW3);
                                bArr = bArr3;
                            } else {
                                bArr = null;
                            }
                            e8 = new E1(z7, strB, iW2, bArr2, i11, i10, bArr);
                            break;
                        }
                        i16 += iR4;
                    }
                    AbstractC2987b.t0("tenc atom is mandatory", e8 != null);
                    int i18 = Et.f13234a;
                    pairCreate = Pair.create(numValueOf, e8);
                } else {
                    pairCreate = null;
                }
                if (pairCreate != null) {
                    return pairCreate;
                }
            }
            i12 += iR;
        }
        return null;
    }

    public static p111o1.c e(int i8, C1534jr c1534jr) {
        c1534jr.j(i8 + 12);
        c1534jr.k(1);
        c(c1534jr);
        c1534jr.k(2);
        int iW = c1534jr.w();
        if ((iW & 128) != 0) {
            c1534jr.k(2);
        }
        if ((iW & 64) != 0) {
            c1534jr.k(c1534jr.w());
        }
        if ((iW & 32) != 0) {
            c1534jr.k(2);
        }
        c1534jr.k(1);
        c(c1534jr);
        String strD = AbstractC2140va.d(c1534jr.w());
        if ("audio/mpeg".equals(strD) || "audio/vnd.dts".equals(strD) || "audio/vnd.dts.hd".equals(strD)) {
            return new p111o1.c(strD, null, -1L, -1L);
        }
        c1534jr.k(4);
        long jE = c1534jr.E();
        long jE2 = c1534jr.E();
        c1534jr.k(1);
        int iC = c(c1534jr);
        byte[] bArr = new byte[iC];
        c1534jr.f(0, bArr, iC);
        return new p111o1.c(strD, bArr, jE2 <= 0 ? -1L : jE2, jE > 0 ? jE : -1L);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0260  */
    /* JADX WARN: Code duplicated, block: B:101:0x026d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0298 A[DONT_INVERT, LOOP:13: B:106:0x0298->B:110:0x02a2, LOOP_START, PHI: r17
      0x0298: PHI (r17v6 int) = (r17v2 int), (r17v7 int) binds: [B:105:0x0296, B:110:0x02a2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:107:0x029a  */
    /* JADX WARN: Code duplicated, block: B:110:0x02a2 A[LOOP:13: B:106:0x0298->B:110:0x02a2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x02a8 A[EDGE_INSN: B:111:0x02a8->B:112:0x02a9 BREAK  A[LOOP:13: B:106:0x0298->B:110:0x02a2]] */
    /* JADX WARN: Code duplicated, block: B:113:0x02ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:114:0x02ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x02af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x02b1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x02b3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:119:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:120:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:122:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:123:0x02d8  */
    /* JADX WARN: Code duplicated, block: B:124:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:125:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:128:0x0322  */
    /* JADX WARN: Code duplicated, block: B:129:0x0325  */
    /* JADX WARN: Code duplicated, block: B:134:0x0350  */
    /* JADX WARN: Code duplicated, block: B:136:0x035e  */
    /* JADX WARN: Code duplicated, block: B:163:0x0429  */
    /* JADX WARN: Code duplicated, block: B:166:0x0439  */
    /* JADX WARN: Code duplicated, block: B:168:0x0442  */
    /* JADX WARN: Code duplicated, block: B:171:0x044b A[LOOP:4: B:169:0x0448->B:171:0x044b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:174:0x0480  */
    /* JADX WARN: Code duplicated, block: B:175:0x0485  */
    /* JADX WARN: Code duplicated, block: B:177:0x048a  */
    /* JADX WARN: Code duplicated, block: B:178:0x048c  */
    /* JADX WARN: Code duplicated, block: B:182:0x049b  */
    /* JADX WARN: Code duplicated, block: B:184:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:186:0x04c6  */
    /* JADX WARN: Code duplicated, block: B:187:0x04c8 A[LOOP:7: B:187:0x04c8->B:192:0x04d4, LOOP_START, PHI: r6
      0x04c8: PHI (r6v37 int) = (r6v36 int), (r6v39 int) binds: [B:185:0x04c4, B:192:0x04d4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:189:0x04cd  */
    /* JADX WARN: Code duplicated, block: B:194:0x04d8  */
    /* JADX WARN: Code duplicated, block: B:198:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:203:0x04f3  */
    /* JADX WARN: Code duplicated, block: B:204:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:206:0x04fc  */
    /* JADX WARN: Code duplicated, block: B:210:0x050b  */
    /* JADX WARN: Code duplicated, block: B:211:0x050d  */
    /* JADX WARN: Code duplicated, block: B:214:0x0512  */
    /* JADX WARN: Code duplicated, block: B:215:0x0515  */
    /* JADX WARN: Code duplicated, block: B:217:0x0518  */
    /* JADX WARN: Code duplicated, block: B:219:0x051c  */
    /* JADX WARN: Code duplicated, block: B:221:0x0521  */
    /* JADX WARN: Code duplicated, block: B:223:0x0525  */
    /* JADX WARN: Code duplicated, block: B:224:0x0528  */
    /* JADX WARN: Code duplicated, block: B:228:0x0535  */
    /* JADX WARN: Code duplicated, block: B:230:0x053f  */
    /* JADX WARN: Code duplicated, block: B:231:0x0555  */
    /* JADX WARN: Code duplicated, block: B:234:0x0563  */
    /* JADX WARN: Code duplicated, block: B:236:0x0594  */
    /* JADX WARN: Code duplicated, block: B:237:0x059b  */
    /* JADX WARN: Code duplicated, block: B:240:0x05a2  */
    /* JADX WARN: Code duplicated, block: B:242:0x05a8  */
    /* JADX WARN: Code duplicated, block: B:243:0x05ac  */
    /* JADX WARN: Code duplicated, block: B:258:0x04ec A[ADDED_TO_REGION, EDGE_INSN: B:258:0x04ec->B:201:0x04ec BREAK  A[LOOP:6: B:196:0x04db->B:200:0x04e7], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:260:0x04d6 A[ADDED_TO_REGION, EDGE_INSN: B:260:0x04d6->B:193:0x04d6 BREAK  A[LOOP:7: B:187:0x04c8->B:192:0x04d4], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:265:0x05ae A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:267:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:268:0x028d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:270:0x026e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x01db A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:273:0x01d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:0x0213 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:0x02a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:0x02a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x0192 A[PHI: r11
      0x0192: PHI (r11v4 int) = (r11v3 int), (r11v3 int), (r11v33 int), (r11v3 int) binds: [B:36:0x00e9, B:43:0x0103, B:60:0x0191, B:42:0x0101] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:64:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:66:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:68:0x01be A[LOOP:11: B:65:0x01b6->B:68:0x01be, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:74:0x01ff A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x0204 A[ADDED_TO_REGION, LOOP:12: B:76:0x0204->B:78:0x0208, LOOP_START, PHI: r17 r24 r25
      0x0204: PHI (r17v8 int) = (r17v2 int), (r17v9 int) binds: [B:74:0x01ff, B:78:0x0208] A[DONT_GENERATE, DONT_INLINE]
      0x0204: PHI (r24v2 int) = (r24v1 int), (r24v3 int) binds: [B:74:0x01ff, B:78:0x0208] A[DONT_GENERATE, DONT_INLINE]
      0x0204: PHI (r25v2 int) = (r25v1 int), (r25v6 int) binds: [B:74:0x01ff, B:78:0x0208] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:77:0x0206 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x0208 A[LOOP:12: B:76:0x0204->B:78:0x0208, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:84:0x0225  */
    /* JADX WARN: Code duplicated, block: B:87:0x022f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0231  */
    /* JADX WARN: Code duplicated, block: B:91:0x0236  */
    /* JADX WARN: Code duplicated, block: B:93:0x023d  */
    /* JADX WARN: Code duplicated, block: B:95:0x024d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0251  */
    /* JADX WARN: Code duplicated, block: B:99:0x025e A[DONT_INVERT] */
    public static G1 f(D1 d6, C1753o1 c1753o1, T t7) throws C0800Ka {
        InterfaceC1857q1 bVar;
        boolean z7;
        int iZ;
        int iZ2;
        int iZ3;
        int iZza;
        long[] jArrCopyOf;
        int[] iArrCopyOf;
        long[] jArrCopyOf2;
        int[] iArrCopyOf2;
        int i8;
        int iZ4;
        int i9;
        int i10;
        int i11;
        int iR;
        int iZ5;
        long j8;
        long j9;
        InterfaceC1857q1 interfaceC1857q1;
        boolean z8;
        int i12;
        int i13;
        int i14;
        D1 d8;
        long[] jArr;
        long j10;
        long[] jArr2;
        int[] iArr;
        int[] iArr2;
        int i15;
        int i16;
        String str;
        long j11;
        boolean zB;
        int i17;
        int iZzc;
        int i18;
        int i19;
        int iR2;
        long jV;
        long j12;
        long[] jArr3;
        int length;
        int i20;
        long[] jArr4;
        int i21;
        int[] iArr3;
        int i22;
        int i23;
        long[] jArr5;
        long[] jArr6;
        int[] iArr4;
        int length2;
        boolean z9;
        boolean z10;
        int[] iArr5;
        int[] iArr6;
        int i24;
        int i25;
        boolean z11;
        int i26;
        int[] iArr7;
        boolean z12;
        boolean z13;
        long[] jArr7;
        int[] iArr8;
        int[] iArr9;
        long[] jArr8;
        long j13;
        int i27;
        int i28;
        long j14;
        int i29;
        int i30;
        int[] iArr10;
        int[] iArr11;
        int i31;
        int[] iArr12;
        int i32;
        long jV2;
        int[] iArr13;
        long j15;
        int[] iArr14;
        int i33;
        int iBinarySearch;
        int i34;
        int i35;
        int i36;
        boolean z14;
        long j16;
        int i37;
        int length3;
        long j17;
        C1805p1 c1805p1F = c1753o1.f(1937011578);
        C1804p0 c1804p0 = d6.f12743f;
        if (c1805p1F != null) {
            bVar = new V.b(c1805p1F, c1804p0);
        } else {
            C1805p1 c1805p1F2 = c1753o1.f(1937013298);
            if (c1805p1F2 == null) {
                throw C0800Ka.a("Track has no sample table size information", null);
            }
            p117p0.z zVar = new p117p0.z();
            C1534jr c1534jr = c1805p1F2.f20397c;
            zVar.f28133e = c1534jr;
            c1534jr.j(12);
            zVar.f28130b = ((C1534jr) zVar.f28133e).z() & 255;
            zVar.f28129a = ((C1534jr) zVar.f28133e).z();
            bVar = zVar;
        }
        int iZzb = bVar.zzb();
        if (iZzb == 0) {
            return new G1(d6, new long[0], new int[0], 0, new long[0], new int[0], 0L);
        }
        C1805p1 c1805p1F3 = c1753o1.f(1937007471);
        if (c1805p1F3 == null) {
            c1805p1F3 = c1753o1.f(1668232756);
            c1805p1F3.getClass();
            z7 = true;
        } else {
            z7 = false;
        }
        C1805p1 c1805p1F4 = c1753o1.f(1937011555);
        c1805p1F4.getClass();
        C1805p1 c1805p1F5 = c1753o1.f(1937011827);
        c1805p1F5.getClass();
        C1805p1 c1805p1F6 = c1753o1.f(1937011571);
        C1534jr c1534jr2 = c1805p1F6 != null ? c1805p1F6.f20397c : null;
        C1805p1 c1805p1F7 = c1753o1.f(1668576371);
        C1534jr c1534jr3 = c1805p1F7 != null ? c1805p1F7.f20397c : null;
        p111o1.b bVar2 = new p111o1.b(c1805p1F4.f20397c, c1805p1F3.f20397c, z7);
        C1534jr c1534jr4 = c1805p1F5.f20397c;
        c1534jr4.j(12);
        int iZ6 = c1534jr4.z() - 1;
        int iZ7 = c1534jr4.z();
        int iZ8 = c1534jr4.z();
        if (c1534jr3 != null) {
            c1534jr3.j(12);
            iZ = c1534jr3.z();
        } else {
            iZ = 0;
        }
        if (c1534jr2 != null) {
            c1534jr2.j(12);
            iZ2 = c1534jr2.z();
            if (iZ2 > 0) {
                iZ3 = c1534jr2.z() - 1;
            } else {
                c1534jr2 = null;
            }
            iZza = bVar.zza();
            String str2 = c1804p0.f20383m;
            if (iZza != -1 || ((!"audio/raw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/g711-alaw".equals(str2)) || iZ6 != 0)) {
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i8 = iZ6;
                iZ4 = iZ3;
                i9 = 0;
                i10 = 0;
                i11 = 0;
                iR = 0;
                iZ5 = 0;
                j8 = 0;
                j9 = 0;
                interfaceC1857q1 = bVar;
                while (true) {
                    if (i10 < iZzb) {
                        iZ2 = iZ2;
                        break;
                    }
                    j11 = j8;
                    zB = true;
                    while (true) {
                        if (i11 != 0) {
                            i17 = i11;
                            break;
                        }
                        zB = bVar2.b();
                        if (zB) {
                            i17 = 0;
                            break;
                        }
                        int i38 = iZ2;
                        long j18 = bVar2.f27679d;
                        i11 = bVar2.f27678c;
                        j11 = j18;
                        iZ2 = i38;
                        iZ8 = iZ8;
                        iZzb = iZzb;
                    }
                    if (!zB) {
                        Zo.f("AtomParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i10);
                        iZzb = i10;
                        break;
                    }
                    if (c1534jr3 != null) {
                        while (iZ5 == 0) {
                            if (iZ > 0) {
                                iZ5 = 0;
                                break;
                            }
                            iZ--;
                            iZ5 = c1534jr3.z();
                            iR = c1534jr3.r();
                        }
                        iZ5--;
                    }
                    int i39 = iR;
                    jArrCopyOf[i10] = j11;
                    iZzc = interfaceC1857q1.zzc();
                    iArrCopyOf[i10] = iZzc;
                    if (iZzc > i9) {
                        i9 = iZzc;
                    }
                    InterfaceC1857q1 interfaceC1857q2 = interfaceC1857q1;
                    jArrCopyOf2[i10] = j9 + ((long) i39);
                    if (c1534jr2 == null) {
                        i18 = 1;
                    } else {
                        i18 = 0;
                    }
                    iArrCopyOf2[i10] = i18;
                    if (i10 == iZ4) {
                        iArrCopyOf2[i10] = 1;
                        i19 = iZ2 - 1;
                        if (i19 > 0) {
                            c1534jr2.getClass();
                            iZ4 = c1534jr2.z() - 1;
                        }
                    } else {
                        i19 = iZ2;
                    }
                    iR2 = iZ8;
                    j9 += (long) iR2;
                    iZ7--;
                    if (iZ7 != 0) {
                        if (i8 > 0) {
                            i8--;
                            iZ7 = c1534jr4.z();
                            iR2 = c1534jr4.r();
                        } else {
                            iZ7 = 0;
                        }
                    }
                    long j19 = j11 + ((long) iArrCopyOf[i10]);
                    i10++;
                    iR = i39;
                    i11 = i17 - 1;
                    iZzb = iZzb;
                    iZ2 = i19;
                    iZ8 = iR2;
                    i9 = i9;
                    interfaceC1857q1 = interfaceC1857q2;
                    j8 = j19;
                }
                long j20 = j9 + ((long) iR);
                if (c1534jr3 != null) {
                    z8 = true;
                    break;
                }
                while (true) {
                    if (iZ > 0) {
                        z8 = true;
                        break;
                    }
                    if (c1534jr3.z() != 0) {
                        z8 = false;
                        break;
                    }
                    c1534jr3.r();
                    iZ--;
                }
                if (iZ2 == 0) {
                    z8 = z8;
                    i12 = i11;
                    i13 = i8;
                    iZ5 = iZ5;
                    i14 = iZ2;
                } else if (iZ7 == 0) {
                    if (i11 == 0) {
                        i12 = i11;
                        i13 = i8;
                        i14 = 0;
                    } else if (i8 == 0) {
                        if (iZ5 == 0) {
                            i14 = 0;
                            i12 = 0;
                            i13 = 0;
                        } else if (z8) {
                            d8 = d6;
                        } else {
                            i14 = 0;
                            i12 = 0;
                            i13 = 0;
                            iZ5 = 0;
                            iZ7 = 0;
                            z8 = false;
                        }
                        jArr = jArrCopyOf;
                        j10 = j20;
                        jArr2 = jArrCopyOf2;
                        iArr = iArrCopyOf2;
                        iArr2 = iArrCopyOf;
                        i15 = iZzb;
                        i16 = i9;
                    } else {
                        i13 = i8;
                        i14 = 0;
                        i12 = 0;
                    }
                    iZ7 = 0;
                } else {
                    z8 = z8;
                    i12 = i11;
                    i13 = i8;
                    iZ5 = iZ5;
                    i14 = 0;
                }
                StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                d8 = d6;
                A0.O.J(sb, d8.f12738a, ": remainingSynchronizationSamples ", i14, ", remainingSamplesAtTimestampDelta ");
                A0.O.J(sb, iZ7, ", remainingSamplesInChunk ", i12, ", remainingTimestampDeltaChanges ");
                sb.append(i13);
                sb.append(", remainingSamplesAtTimestampOffset ");
                sb.append(iZ5);
                if (true != z8) {
                    str = ", ctts invalid";
                } else {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                sb.append(str);
                Zo.f("AtomParsers", sb.toString());
                jArr = jArrCopyOf;
                j10 = j20;
                jArr2 = jArrCopyOf2;
                iArr = iArrCopyOf2;
                iArr2 = iArrCopyOf;
                i15 = iZzb;
                i16 = i9;
            } else if (iZ == 0 && iZ2 == 0) {
                int i40 = bVar2.f27676a;
                long[] jArr9 = new long[i40];
                int[] iArr15 = new int[i40];
                while (bVar2.b()) {
                    int i41 = bVar2.f27677b;
                    jArr9[i41] = bVar2.f27679d;
                    iArr15[i41] = bVar2.f27678c;
                }
                long j21 = iZ8;
                int i42 = 8192 / iZza;
                int i43 = 0;
                for (int i44 = 0; i44 < i40; i44++) {
                    int i45 = iArr15[i44];
                    int i46 = Et.f13234a;
                    i43 += ((i45 + i42) - 1) / i42;
                }
                long[] jArr10 = new long[i43];
                int[] iArr16 = new int[i43];
                long[] jArr11 = new long[i43];
                int[] iArr17 = new int[i43];
                int i47 = 0;
                int i48 = 0;
                int iMax = 0;
                int i49 = 0;
                while (i47 < i40) {
                    int i50 = iArr15[i47];
                    long j22 = jArr9[i47];
                    int i51 = i40;
                    int i52 = i50;
                    while (i52 > 0) {
                        int iMin = Math.min(i42, i52);
                        jArr10[i49] = j22;
                        long[] jArr12 = jArr9;
                        int i53 = iZza * iMin;
                        iArr16[i49] = i53;
                        iMax = Math.max(iMax, i53);
                        jArr11[i49] = ((long) i48) * j21;
                        iArr17[i49] = 1;
                        j22 += (long) iArr16[i49];
                        i48 += iMin;
                        i52 -= iMin;
                        i49++;
                        jArr9 = jArr12;
                        iArr15 = iArr15;
                    }
                    i47++;
                    i40 = i51;
                }
                long j23 = j21 * ((long) i48);
                d8 = d6;
                i15 = iZzb;
                jArr = jArr10;
                iArr2 = iArr16;
                jArr2 = jArr11;
                i16 = iMax;
                j10 = j23;
                iArr = iArr17;
            } else {
                iZ6 = 0;
                jArrCopyOf = new long[iZzb];
                iArrCopyOf = new int[iZzb];
                jArrCopyOf2 = new long[iZzb];
                iArrCopyOf2 = new int[iZzb];
                i8 = iZ6;
                iZ4 = iZ3;
                i9 = 0;
                i10 = 0;
                i11 = 0;
                iR = 0;
                iZ5 = 0;
                j8 = 0;
                j9 = 0;
                interfaceC1857q1 = bVar;
                while (true) {
                    if (i10 < iZzb) {
                        iZ2 = iZ2;
                        break;
                    }
                    j11 = j8;
                    zB = true;
                    while (true) {
                        if (i11 != 0) {
                            i17 = i11;
                            break;
                        }
                        zB = bVar2.b();
                        if (zB) {
                            i17 = 0;
                            break;
                        }
                        int i310 = iZ2;
                        long j110 = bVar2.f27679d;
                        i11 = bVar2.f27678c;
                        j11 = j110;
                        iZ2 = i310;
                        iZ8 = iZ8;
                        iZzb = iZzb;
                    }
                    if (!zB) {
                        Zo.f("AtomParsers", "Unexpected end of chunk data");
                        jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
                        jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
                        iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i10);
                        iZzb = i10;
                        break;
                    }
                    if (c1534jr3 != null) {
                        while (iZ5 == 0) {
                            if (iZ > 0) {
                                iZ5 = 0;
                                break;
                            }
                            iZ--;
                            iZ5 = c1534jr3.z();
                            iR = c1534jr3.r();
                        }
                        iZ5--;
                    }
                    int i311 = iR;
                    jArrCopyOf[i10] = j11;
                    iZzc = interfaceC1857q1.zzc();
                    iArrCopyOf[i10] = iZzc;
                    if (iZzc > i9) {
                        i9 = iZzc;
                    }
                    InterfaceC1857q1 interfaceC1857q3 = interfaceC1857q1;
                    jArrCopyOf2[i10] = j9 + ((long) i311);
                    if (c1534jr2 == null) {
                        i18 = 1;
                    } else {
                        i18 = 0;
                    }
                    iArrCopyOf2[i10] = i18;
                    if (i10 == iZ4) {
                        iArrCopyOf2[i10] = 1;
                        i19 = iZ2 - 1;
                        if (i19 > 0) {
                            c1534jr2.getClass();
                            iZ4 = c1534jr2.z() - 1;
                        }
                    } else {
                        i19 = iZ2;
                    }
                    iR2 = iZ8;
                    j9 += (long) iR2;
                    iZ7--;
                    if (iZ7 != 0) {
                        if (i8 > 0) {
                            i8--;
                            iZ7 = c1534jr4.z();
                            iR2 = c1534jr4.r();
                        } else {
                            iZ7 = 0;
                        }
                    }
                    long j111 = j11 + ((long) iArrCopyOf[i10]);
                    i10++;
                    iR = i311;
                    i11 = i17 - 1;
                    iZzb = iZzb;
                    iZ2 = i19;
                    iZ8 = iR2;
                    i9 = i9;
                    interfaceC1857q1 = interfaceC1857q3;
                    j8 = j111;
                }
                long j24 = j9 + ((long) iR);
                if (c1534jr3 != null) {
                    z8 = true;
                    break;
                }
                while (true) {
                    if (iZ > 0) {
                        z8 = true;
                        break;
                    }
                    if (c1534jr3.z() != 0) {
                        z8 = false;
                        break;
                    }
                    c1534jr3.r();
                    iZ--;
                }
                if (iZ2 == 0) {
                    z8 = z8;
                    i12 = i11;
                    i13 = i8;
                    iZ5 = iZ5;
                    i14 = iZ2;
                } else if (iZ7 == 0) {
                    if (i11 == 0) {
                        i12 = i11;
                        i13 = i8;
                        i14 = 0;
                    } else if (i8 == 0) {
                        if (iZ5 == 0) {
                            i14 = 0;
                            i12 = 0;
                            i13 = 0;
                        } else if (z8) {
                            i14 = 0;
                            i12 = 0;
                            i13 = 0;
                            iZ5 = 0;
                            iZ7 = 0;
                            z8 = false;
                        } else {
                            d8 = d6;
                        }
                        jArr = jArrCopyOf;
                        j10 = j24;
                        jArr2 = jArrCopyOf2;
                        iArr = iArrCopyOf2;
                        iArr2 = iArrCopyOf;
                        i15 = iZzb;
                        i16 = i9;
                    } else {
                        i13 = i8;
                        i14 = 0;
                        i12 = 0;
                    }
                    iZ7 = 0;
                } else {
                    z8 = z8;
                    i12 = i11;
                    i13 = i8;
                    iZ5 = iZ5;
                    i14 = 0;
                }
                StringBuilder sb2 = new StringBuilder("Inconsistent stbl box for track ");
                d8 = d6;
                A0.O.J(sb2, d8.f12738a, ": remainingSynchronizationSamples ", i14, ", remainingSamplesAtTimestampDelta ");
                A0.O.J(sb2, iZ7, ", remainingSamplesInChunk ", i12, ", remainingTimestampDeltaChanges ");
                sb2.append(i13);
                sb2.append(", remainingSamplesAtTimestampOffset ");
                sb2.append(iZ5);
                if (true != z8) {
                    str = ", ctts invalid";
                } else {
                    str = HttpUrl.FRAGMENT_ENCODE_SET;
                }
                sb2.append(str);
                Zo.f("AtomParsers", sb2.toString());
                jArr = jArrCopyOf;
                j10 = j24;
                jArr2 = jArrCopyOf2;
                iArr = iArrCopyOf2;
                iArr2 = iArrCopyOf;
                i15 = iZzb;
                i16 = i9;
            }
            RoundingMode roundingMode = RoundingMode.FLOOR;
            jV = Et.v(j10, 1000000L, d8.f12740c, roundingMode);
            j12 = d8.f12740c;
            jArr3 = d8.f12745h;
            if (jArr3 == null) {
                Et.b(j12, jArr2);
                return new G1(d6, jArr, iArr2, i16, jArr2, iArr, jV);
            }
            length = jArr3.length;
            i20 = d8.f12739b;
            jArr4 = d8.f12746i;
            if (length != 1 && i20 == 1 && (length3 = jArr2.length) >= 2) {
                jArr4.getClass();
                long j25 = jArr4[0];
                i21 = i15;
                jArr5 = jArr4;
                iArr3 = iArr2;
                i22 = i16;
                i23 = i20;
                jArr6 = jArr3;
                long jV3 = j25 + Et.v(jArr3[0], d8.f12740c, d8.f12741d, roundingMode);
                int i54 = length3 - 1;
                int iMax2 = Math.max(0, Math.min(4, i54));
                int iMax3 = Math.max(0, Math.min(length3 - 4, i54));
                long j26 = jArr2[0];
                if (j26 <= j25 && j25 < jArr2[iMax2] && jArr2[iMax3] < jV3 && jV3 <= j10) {
                    iArr4 = iArr;
                    long jV4 = Et.v(j25 - j26, c1804p0.f20363B, d8.f12740c, roundingMode);
                    long jV5 = Et.v(j10 - jV3, c1804p0.f20363B, d8.f12740c, roundingMode);
                    if (jV4 != 0) {
                        j17 = jV4;
                    } else if (jV5 != 0) {
                        j17 = 0;
                    }
                    if (j17 <= 2147483647L && jV5 <= 2147483647L) {
                        t7.f16572a = (int) j17;
                        t7.f16573b = (int) jV5;
                        Et.b(j12, jArr2);
                        return new G1(d6, jArr, iArr3, i22, jArr2, iArr4, Et.v(jArr6[0], 1000000L, d8.f12741d, roundingMode));
                    }
                }
                length2 = jArr6.length;
                z9 = true;
                if (length2 == 1) {
                    if (jArr6[0] == 0) {
                        jArr5.getClass();
                        j16 = jArr5[0];
                        for (i37 = 0; i37 < jArr2.length; i37++) {
                            jArr2[i37] = Et.v(jArr2[i37] - j16, 1000000L, d8.f12740c, RoundingMode.FLOOR);
                        }
                        return new G1(d6, jArr, iArr3, i22, jArr2, iArr4, Et.v(j10 - j16, 1000000L, d8.f12740c, RoundingMode.FLOOR));
                    }
                    length2 = 1;
                    z9 = true;
                }
                if (i23 == z9) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                iArr5 = new int[length2];
                iArr6 = new int[length2];
                jArr5.getClass();
                i24 = 0;
                i25 = 0;
                z11 = false;
                i26 = 0;
                while (i24 < jArr6.length) {
                    j15 = jArr5[i24];
                    if (j15 != -1) {
                        iArr14 = iArr5;
                        boolean z15 = z11;
                        i33 = i26;
                        long jV6 = Et.v(jArr6[i24], d8.f12740c, d8.f12741d, RoundingMode.FLOOR);
                        iArr14[i24] = Et.k(jArr2, j15, true);
                        long j27 = j15 + jV6;
                        iBinarySearch = Arrays.binarySearch(jArr2, j27);
                        if (iBinarySearch < 0) {
                            iBinarySearch = ~iBinarySearch;
                        } else {
                            while (true) {
                                i34 = iBinarySearch + 1;
                                if (i34 < jArr2.length || jArr2[i34] != j27) {
                                    break;
                                }
                                iBinarySearch = i34;
                            }
                            if (!z10) {
                                iBinarySearch = i34;
                            }
                        }
                        iArr6[i24] = iBinarySearch;
                        while (true) {
                            i35 = iArr14[i24];
                            i36 = iArr6[i24];
                            if (i35 < i36 || (iArr4[i35] & 1) != 0) {
                                break;
                            }
                            iArr14[i24] = i35 + 1;
                        }
                        int i55 = (i36 - i35) + i25;
                        if (i33 != i35) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        i26 = i36;
                        i25 = i55;
                        z11 = z15 | z14;
                    } else {
                        iArr14 = iArr5;
                    }
                    i24++;
                    iArr5 = iArr14;
                }
                iArr7 = iArr5;
                boolean z16 = z11;
                if (i25 != i21) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                z13 = z16 | z12;
                if (z13) {
                    jArr7 = new long[i25];
                } else {
                    jArr7 = jArr;
                }
                if (z13) {
                    iArr8 = new int[i25];
                } else {
                    iArr8 = iArr3;
                }
                if (true == z13) {
                    i22 = 0;
                }
                if (z13) {
                    iArr9 = new int[i25];
                } else {
                    iArr9 = iArr4;
                }
                jArr8 = new long[i25];
                j13 = 0;
                i27 = 0;
                i28 = 0;
                while (i27 < jArr6.length) {
                    j14 = jArr5[i27];
                    i29 = iArr7[i27];
                    int[] iArr18 = iArr7;
                    i30 = iArr6[i27];
                    if (z13) {
                        int i56 = i30 - i29;
                        System.arraycopy(jArr, i29, jArr7, i28, i56);
                        iArr11 = iArr3;
                        System.arraycopy(iArr11, i29, iArr8, i28, i56);
                        iArr10 = iArr4;
                        System.arraycopy(iArr10, i29, iArr9, i28, i56);
                    } else {
                        iArr10 = iArr4;
                        iArr11 = iArr3;
                    }
                    i31 = i22;
                    while (i29 < i30) {
                        RoundingMode roundingMode2 = RoundingMode.FLOOR;
                        iArr12 = iArr11;
                        i32 = i31;
                        long jV7 = Et.v(j13, 1000000L, d8.f12741d, roundingMode2);
                        long[] jArr13 = jArr2;
                        int i57 = i30;
                        jV2 = Et.v(jArr2[i29] - j14, 1000000L, d8.f12740c, roundingMode2);
                        int[] iArr19 = iArr10;
                        iArr13 = iArr8;
                        if (i23 != 1) {
                            jV2 = Math.max(0L, jV2);
                        }
                        jArr8[i28] = jV7 + jV2;
                        if (z13) {
                            i31 = i32;
                            if (iArr13[i28] > i31) {
                                i31 = iArr12[i29];
                            }
                        } else {
                            i31 = i32;
                        }
                        i28++;
                        i29++;
                        iArr11 = iArr12;
                        iArr8 = iArr13;
                        iArr10 = iArr19;
                        jArr2 = jArr13;
                        i30 = i57;
                    }
                    iArr3 = iArr11;
                    iArr4 = iArr10;
                    j13 += jArr6[i27];
                    i27++;
                    iArr7 = iArr18;
                    i22 = i31;
                    iArr6 = iArr6;
                    iArr8 = iArr8;
                    jArr = jArr;
                    jArr2 = jArr2;
                    jArr7 = jArr7;
                }
                return new G1(d6, jArr7, iArr8, i22, jArr8, iArr9, Et.v(j13, 1000000L, d8.f12741d, RoundingMode.FLOOR));
            }
            i21 = i15;
            iArr3 = iArr2;
            i22 = i16;
            i23 = i20;
            jArr5 = jArr4;
            jArr6 = jArr3;
            iArr4 = iArr;
            length2 = jArr6.length;
            z9 = true;
            if (length2 == 1) {
                if (jArr6[0] == 0) {
                    jArr5.getClass();
                    j16 = jArr5[0];
                    while (i37 < jArr2.length) {
                        jArr2[i37] = Et.v(jArr2[i37] - j16, 1000000L, d8.f12740c, RoundingMode.FLOOR);
                    }
                    return new G1(d6, jArr, iArr3, i22, jArr2, iArr4, Et.v(j10 - j16, 1000000L, d8.f12740c, RoundingMode.FLOOR));
                }
                length2 = 1;
                z9 = true;
            }
            if (i23 == z9) {
                z10 = true;
            } else {
                z10 = false;
            }
            iArr5 = new int[length2];
            iArr6 = new int[length2];
            jArr5.getClass();
            i24 = 0;
            i25 = 0;
            z11 = false;
            i26 = 0;
            while (i24 < jArr6.length) {
                j15 = jArr5[i24];
                if (j15 != -1) {
                    iArr14 = iArr5;
                    boolean z17 = z11;
                    i33 = i26;
                    long jV8 = Et.v(jArr6[i24], d8.f12740c, d8.f12741d, RoundingMode.FLOOR);
                    iArr14[i24] = Et.k(jArr2, j15, true);
                    long j28 = j15 + jV8;
                    iBinarySearch = Arrays.binarySearch(jArr2, j28);
                    if (iBinarySearch < 0) {
                        iBinarySearch = ~iBinarySearch;
                    } else {
                        while (true) {
                            i34 = iBinarySearch + 1;
                            if (i34 < jArr2.length) {
                                break;
                            }
                            break;
                            break;
                            iBinarySearch = i34;
                        }
                        if (!z10) {
                            iBinarySearch = i34;
                        }
                    }
                    iArr6[i24] = iBinarySearch;
                    while (true) {
                        i35 = iArr14[i24];
                        i36 = iArr6[i24];
                        if (i35 < i36) {
                            break;
                        }
                        break;
                        break;
                        iArr14[i24] = i35 + 1;
                    }
                    int i58 = (i36 - i35) + i25;
                    if (i33 != i35) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    i26 = i36;
                    i25 = i58;
                    z11 = z17 | z14;
                } else {
                    iArr14 = iArr5;
                }
                i24++;
                iArr5 = iArr14;
            }
            iArr7 = iArr5;
            boolean z18 = z11;
            if (i25 != i21) {
                z12 = true;
            } else {
                z12 = false;
            }
            z13 = z18 | z12;
            if (z13) {
                jArr7 = new long[i25];
            } else {
                jArr7 = jArr;
            }
            if (z13) {
                iArr8 = new int[i25];
            } else {
                iArr8 = iArr3;
            }
            if (true == z13) {
                i22 = 0;
            }
            if (z13) {
                iArr9 = new int[i25];
            } else {
                iArr9 = iArr4;
            }
            jArr8 = new long[i25];
            j13 = 0;
            i27 = 0;
            i28 = 0;
            while (i27 < jArr6.length) {
                j14 = jArr5[i27];
                i29 = iArr7[i27];
                int[] iArr110 = iArr7;
                i30 = iArr6[i27];
                if (z13) {
                    int i59 = i30 - i29;
                    System.arraycopy(jArr, i29, jArr7, i28, i59);
                    iArr11 = iArr3;
                    System.arraycopy(iArr11, i29, iArr8, i28, i59);
                    iArr10 = iArr4;
                    System.arraycopy(iArr10, i29, iArr9, i28, i59);
                } else {
                    iArr10 = iArr4;
                    iArr11 = iArr3;
                }
                i31 = i22;
                while (i29 < i30) {
                    RoundingMode roundingMode3 = RoundingMode.FLOOR;
                    iArr12 = iArr11;
                    i32 = i31;
                    long jV9 = Et.v(j13, 1000000L, d8.f12741d, roundingMode3);
                    long[] jArr14 = jArr2;
                    int i510 = i30;
                    jV2 = Et.v(jArr2[i29] - j14, 1000000L, d8.f12740c, roundingMode3);
                    int[] iArr111 = iArr10;
                    iArr13 = iArr8;
                    if (i23 != 1) {
                        jV2 = Math.max(0L, jV2);
                    }
                    jArr8[i28] = jV9 + jV2;
                    if (z13) {
                        i31 = i32;
                        if (iArr13[i28] > i31) {
                            i31 = iArr12[i29];
                        }
                    } else {
                        i31 = i32;
                    }
                    i28++;
                    i29++;
                    iArr11 = iArr12;
                    iArr8 = iArr13;
                    iArr10 = iArr111;
                    jArr2 = jArr14;
                    i30 = i510;
                }
                iArr3 = iArr11;
                iArr4 = iArr10;
                j13 += jArr6[i27];
                i27++;
                iArr7 = iArr110;
                i22 = i31;
                iArr6 = iArr6;
                iArr8 = iArr8;
                jArr = jArr;
                jArr2 = jArr2;
                jArr7 = jArr7;
            }
            return new G1(d6, jArr7, iArr8, i22, jArr8, iArr9, Et.v(j13, 1000000L, d8.f12741d, RoundingMode.FLOOR));
        }
        iZ2 = 0;
        iZ3 = -1;
        iZza = bVar.zza();
        String str3 = c1804p0.f20383m;
        if (iZza != -1) {
            jArrCopyOf = new long[iZzb];
            iArrCopyOf = new int[iZzb];
            jArrCopyOf2 = new long[iZzb];
            iArrCopyOf2 = new int[iZzb];
            i8 = iZ6;
            iZ4 = iZ3;
            i9 = 0;
            i10 = 0;
            i11 = 0;
            iR = 0;
            iZ5 = 0;
            j8 = 0;
            j9 = 0;
            interfaceC1857q1 = bVar;
            while (true) {
                if (i10 < iZzb) {
                    iZ2 = iZ2;
                    break;
                }
                j11 = j8;
                zB = true;
                while (true) {
                    if (i11 != 0) {
                        i17 = i11;
                        break;
                    }
                    zB = bVar2.b();
                    if (zB) {
                        i17 = 0;
                        break;
                    }
                    int i312 = iZ2;
                    long j112 = bVar2.f27679d;
                    i11 = bVar2.f27678c;
                    j11 = j112;
                    iZ2 = i312;
                    iZ8 = iZ8;
                    iZzb = iZzb;
                }
                if (!zB) {
                    Zo.f("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i10);
                    iZzb = i10;
                    break;
                }
                if (c1534jr3 != null) {
                    while (iZ5 == 0) {
                        if (iZ > 0) {
                            iZ5 = 0;
                            break;
                        }
                        iZ--;
                        iZ5 = c1534jr3.z();
                        iR = c1534jr3.r();
                    }
                    iZ5--;
                }
                int i313 = iR;
                jArrCopyOf[i10] = j11;
                iZzc = interfaceC1857q1.zzc();
                iArrCopyOf[i10] = iZzc;
                if (iZzc > i9) {
                    i9 = iZzc;
                }
                InterfaceC1857q1 interfaceC1857q4 = interfaceC1857q1;
                jArrCopyOf2[i10] = j9 + ((long) i313);
                if (c1534jr2 == null) {
                    i18 = 1;
                } else {
                    i18 = 0;
                }
                iArrCopyOf2[i10] = i18;
                if (i10 == iZ4) {
                    iArrCopyOf2[i10] = 1;
                    i19 = iZ2 - 1;
                    if (i19 > 0) {
                        c1534jr2.getClass();
                        iZ4 = c1534jr2.z() - 1;
                    }
                } else {
                    i19 = iZ2;
                }
                iR2 = iZ8;
                j9 += (long) iR2;
                iZ7--;
                if (iZ7 != 0) {
                    if (i8 > 0) {
                        i8--;
                        iZ7 = c1534jr4.z();
                        iR2 = c1534jr4.r();
                    } else {
                        iZ7 = 0;
                    }
                }
                long j113 = j11 + ((long) iArrCopyOf[i10]);
                i10++;
                iR = i313;
                i11 = i17 - 1;
                iZzb = iZzb;
                iZ2 = i19;
                iZ8 = iR2;
                i9 = i9;
                interfaceC1857q1 = interfaceC1857q4;
                j8 = j113;
            }
            long j29 = j9 + ((long) iR);
            if (c1534jr3 != null) {
                z8 = true;
                break;
            }
            while (true) {
                if (iZ > 0) {
                    z8 = true;
                    break;
                }
                if (c1534jr3.z() != 0) {
                    z8 = false;
                    break;
                }
                c1534jr3.r();
                iZ--;
            }
            if (iZ2 == 0) {
                z8 = z8;
                i12 = i11;
                i13 = i8;
                iZ5 = iZ5;
                i14 = iZ2;
            } else if (iZ7 == 0) {
                if (i11 == 0) {
                    i12 = i11;
                    i13 = i8;
                    i14 = 0;
                } else if (i8 == 0) {
                    if (iZ5 == 0) {
                        i14 = 0;
                        i12 = 0;
                        i13 = 0;
                    } else if (z8) {
                        i14 = 0;
                        i12 = 0;
                        i13 = 0;
                        iZ5 = 0;
                        iZ7 = 0;
                        z8 = false;
                    } else {
                        d8 = d6;
                    }
                    jArr = jArrCopyOf;
                    j10 = j29;
                    jArr2 = jArrCopyOf2;
                    iArr = iArrCopyOf2;
                    iArr2 = iArrCopyOf;
                    i15 = iZzb;
                    i16 = i9;
                } else {
                    i13 = i8;
                    i14 = 0;
                    i12 = 0;
                }
                iZ7 = 0;
            } else {
                z8 = z8;
                i12 = i11;
                i13 = i8;
                iZ5 = iZ5;
                i14 = 0;
            }
            StringBuilder sb3 = new StringBuilder("Inconsistent stbl box for track ");
            d8 = d6;
            A0.O.J(sb3, d8.f12738a, ": remainingSynchronizationSamples ", i14, ", remainingSamplesAtTimestampDelta ");
            A0.O.J(sb3, iZ7, ", remainingSamplesInChunk ", i12, ", remainingTimestampDeltaChanges ");
            sb3.append(i13);
            sb3.append(", remainingSamplesAtTimestampOffset ");
            sb3.append(iZ5);
            if (true != z8) {
                str = ", ctts invalid";
            } else {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            sb3.append(str);
            Zo.f("AtomParsers", sb3.toString());
            jArr = jArrCopyOf;
            j10 = j29;
            jArr2 = jArrCopyOf2;
            iArr = iArrCopyOf2;
            iArr2 = iArrCopyOf;
            i15 = iZzb;
            i16 = i9;
        } else {
            jArrCopyOf = new long[iZzb];
            iArrCopyOf = new int[iZzb];
            jArrCopyOf2 = new long[iZzb];
            iArrCopyOf2 = new int[iZzb];
            i8 = iZ6;
            iZ4 = iZ3;
            i9 = 0;
            i10 = 0;
            i11 = 0;
            iR = 0;
            iZ5 = 0;
            j8 = 0;
            j9 = 0;
            interfaceC1857q1 = bVar;
            while (true) {
                if (i10 < iZzb) {
                    iZ2 = iZ2;
                    break;
                }
                j11 = j8;
                zB = true;
                while (true) {
                    if (i11 != 0) {
                        i17 = i11;
                        break;
                    }
                    zB = bVar2.b();
                    if (zB) {
                        i17 = 0;
                        break;
                    }
                    int i314 = iZ2;
                    long j114 = bVar2.f27679d;
                    i11 = bVar2.f27678c;
                    j11 = j114;
                    iZ2 = i314;
                    iZ8 = iZ8;
                    iZzb = iZzb;
                }
                if (!zB) {
                    Zo.f("AtomParsers", "Unexpected end of chunk data");
                    jArrCopyOf = Arrays.copyOf(jArrCopyOf, i10);
                    iArrCopyOf = Arrays.copyOf(iArrCopyOf, i10);
                    jArrCopyOf2 = Arrays.copyOf(jArrCopyOf2, i10);
                    iArrCopyOf2 = Arrays.copyOf(iArrCopyOf2, i10);
                    iZzb = i10;
                    break;
                }
                if (c1534jr3 != null) {
                    while (iZ5 == 0) {
                        if (iZ > 0) {
                            iZ5 = 0;
                            break;
                        }
                        iZ--;
                        iZ5 = c1534jr3.z();
                        iR = c1534jr3.r();
                    }
                    iZ5--;
                }
                int i315 = iR;
                jArrCopyOf[i10] = j11;
                iZzc = interfaceC1857q1.zzc();
                iArrCopyOf[i10] = iZzc;
                if (iZzc > i9) {
                    i9 = iZzc;
                }
                InterfaceC1857q1 interfaceC1857q5 = interfaceC1857q1;
                jArrCopyOf2[i10] = j9 + ((long) i315);
                if (c1534jr2 == null) {
                    i18 = 1;
                } else {
                    i18 = 0;
                }
                iArrCopyOf2[i10] = i18;
                if (i10 == iZ4) {
                    iArrCopyOf2[i10] = 1;
                    i19 = iZ2 - 1;
                    if (i19 > 0) {
                        c1534jr2.getClass();
                        iZ4 = c1534jr2.z() - 1;
                    }
                } else {
                    i19 = iZ2;
                }
                iR2 = iZ8;
                j9 += (long) iR2;
                iZ7--;
                if (iZ7 != 0) {
                    if (i8 > 0) {
                        i8--;
                        iZ7 = c1534jr4.z();
                        iR2 = c1534jr4.r();
                    } else {
                        iZ7 = 0;
                    }
                }
                long j115 = j11 + ((long) iArrCopyOf[i10]);
                i10++;
                iR = i315;
                i11 = i17 - 1;
                iZzb = iZzb;
                iZ2 = i19;
                iZ8 = iR2;
                i9 = i9;
                interfaceC1857q1 = interfaceC1857q5;
                j8 = j115;
            }
            long j210 = j9 + ((long) iR);
            if (c1534jr3 != null) {
                z8 = true;
                break;
            }
            while (true) {
                if (iZ > 0) {
                    z8 = true;
                    break;
                }
                if (c1534jr3.z() != 0) {
                    z8 = false;
                    break;
                }
                c1534jr3.r();
                iZ--;
            }
            if (iZ2 == 0) {
                z8 = z8;
                i12 = i11;
                i13 = i8;
                iZ5 = iZ5;
                i14 = iZ2;
            } else if (iZ7 == 0) {
                if (i11 == 0) {
                    i12 = i11;
                    i13 = i8;
                    i14 = 0;
                } else if (i8 == 0) {
                    if (iZ5 == 0) {
                        i14 = 0;
                        i12 = 0;
                        i13 = 0;
                    } else if (z8) {
                        i14 = 0;
                        i12 = 0;
                        i13 = 0;
                        iZ5 = 0;
                        iZ7 = 0;
                        z8 = false;
                    } else {
                        d8 = d6;
                    }
                    jArr = jArrCopyOf;
                    j10 = j210;
                    jArr2 = jArrCopyOf2;
                    iArr = iArrCopyOf2;
                    iArr2 = iArrCopyOf;
                    i15 = iZzb;
                    i16 = i9;
                } else {
                    i13 = i8;
                    i14 = 0;
                    i12 = 0;
                }
                iZ7 = 0;
            } else {
                z8 = z8;
                i12 = i11;
                i13 = i8;
                iZ5 = iZ5;
                i14 = 0;
            }
            StringBuilder sb4 = new StringBuilder("Inconsistent stbl box for track ");
            d8 = d6;
            A0.O.J(sb4, d8.f12738a, ": remainingSynchronizationSamples ", i14, ", remainingSamplesAtTimestampDelta ");
            A0.O.J(sb4, iZ7, ", remainingSamplesInChunk ", i12, ", remainingTimestampDeltaChanges ");
            sb4.append(i13);
            sb4.append(", remainingSamplesAtTimestampOffset ");
            sb4.append(iZ5);
            if (true != z8) {
                str = ", ctts invalid";
            } else {
                str = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            sb4.append(str);
            Zo.f("AtomParsers", sb4.toString());
            jArr = jArrCopyOf;
            j10 = j210;
            jArr2 = jArrCopyOf2;
            iArr = iArrCopyOf2;
            iArr2 = iArrCopyOf;
            i15 = iZzb;
            i16 = i9;
        }
        RoundingMode roundingMode4 = RoundingMode.FLOOR;
        jV = Et.v(j10, 1000000L, d8.f12740c, roundingMode4);
        j12 = d8.f12740c;
        jArr3 = d8.f12745h;
        if (jArr3 == null) {
            Et.b(j12, jArr2);
            return new G1(d6, jArr, iArr2, i16, jArr2, iArr, jV);
        }
        length = jArr3.length;
        i20 = d8.f12739b;
        jArr4 = d8.f12746i;
        if (length != 1) {
            i21 = i15;
            iArr3 = iArr2;
            i22 = i16;
            i23 = i20;
            jArr5 = jArr4;
            jArr6 = jArr3;
            iArr4 = iArr;
        } else {
            i21 = i15;
            iArr3 = iArr2;
            i22 = i16;
            i23 = i20;
            jArr5 = jArr4;
            jArr6 = jArr3;
            iArr4 = iArr;
        }
        length2 = jArr6.length;
        z9 = true;
        if (length2 == 1) {
            if (jArr6[0] == 0) {
                jArr5.getClass();
                j16 = jArr5[0];
                while (i37 < jArr2.length) {
                    jArr2[i37] = Et.v(jArr2[i37] - j16, 1000000L, d8.f12740c, RoundingMode.FLOOR);
                }
                return new G1(d6, jArr, iArr3, i22, jArr2, iArr4, Et.v(j10 - j16, 1000000L, d8.f12740c, RoundingMode.FLOOR));
            }
            length2 = 1;
            z9 = true;
        }
        if (i23 == z9) {
            z10 = true;
        } else {
            z10 = false;
        }
        iArr5 = new int[length2];
        iArr6 = new int[length2];
        jArr5.getClass();
        i24 = 0;
        i25 = 0;
        z11 = false;
        i26 = 0;
        while (i24 < jArr6.length) {
            j15 = jArr5[i24];
            if (j15 != -1) {
                iArr14 = iArr5;
                boolean z19 = z11;
                i33 = i26;
                long jV10 = Et.v(jArr6[i24], d8.f12740c, d8.f12741d, RoundingMode.FLOOR);
                iArr14[i24] = Et.k(jArr2, j15, true);
                long j211 = j15 + jV10;
                iBinarySearch = Arrays.binarySearch(jArr2, j211);
                if (iBinarySearch < 0) {
                    iBinarySearch = ~iBinarySearch;
                } else {
                    while (true) {
                        i34 = iBinarySearch + 1;
                        if (i34 < jArr2.length) {
                            break;
                            break;
                        }
                        break;
                        break;
                        iBinarySearch = i34;
                    }
                    if (!z10) {
                        iBinarySearch = i34;
                    }
                }
                iArr6[i24] = iBinarySearch;
                while (true) {
                    i35 = iArr14[i24];
                    i36 = iArr6[i24];
                    if (i35 < i36) {
                        break;
                        break;
                    }
                    break;
                    break;
                    iArr14[i24] = i35 + 1;
                }
                int i511 = (i36 - i35) + i25;
                if (i33 != i35) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                i26 = i36;
                i25 = i511;
                z11 = z19 | z14;
            } else {
                iArr14 = iArr5;
            }
            i24++;
            iArr5 = iArr14;
        }
        iArr7 = iArr5;
        boolean z110 = z11;
        if (i25 != i21) {
            z12 = true;
        } else {
            z12 = false;
        }
        z13 = z110 | z12;
        if (z13) {
            jArr7 = new long[i25];
        } else {
            jArr7 = jArr;
        }
        if (z13) {
            iArr8 = new int[i25];
        } else {
            iArr8 = iArr3;
        }
        if (true == z13) {
            i22 = 0;
        }
        if (z13) {
            iArr9 = new int[i25];
        } else {
            iArr9 = iArr4;
        }
        jArr8 = new long[i25];
        j13 = 0;
        i27 = 0;
        i28 = 0;
        while (i27 < jArr6.length) {
            j14 = jArr5[i27];
            i29 = iArr7[i27];
            int[] iArr112 = iArr7;
            i30 = iArr6[i27];
            if (z13) {
                int i512 = i30 - i29;
                System.arraycopy(jArr, i29, jArr7, i28, i512);
                iArr11 = iArr3;
                System.arraycopy(iArr11, i29, iArr8, i28, i512);
                iArr10 = iArr4;
                System.arraycopy(iArr10, i29, iArr9, i28, i512);
            } else {
                iArr10 = iArr4;
                iArr11 = iArr3;
            }
            i31 = i22;
            while (i29 < i30) {
                RoundingMode roundingMode5 = RoundingMode.FLOOR;
                iArr12 = iArr11;
                i32 = i31;
                long jV11 = Et.v(j13, 1000000L, d8.f12741d, roundingMode5);
                long[] jArr15 = jArr2;
                int i513 = i30;
                jV2 = Et.v(jArr2[i29] - j14, 1000000L, d8.f12740c, roundingMode5);
                int[] iArr113 = iArr10;
                iArr13 = iArr8;
                if (i23 != 1) {
                    jV2 = Math.max(0L, jV2);
                }
                jArr8[i28] = jV11 + jV2;
                if (z13) {
                    i31 = i32;
                    if (iArr13[i28] > i31) {
                        i31 = iArr12[i29];
                    }
                } else {
                    i31 = i32;
                }
                i28++;
                i29++;
                iArr11 = iArr12;
                iArr8 = iArr13;
                iArr10 = iArr113;
                jArr2 = jArr15;
                i30 = i513;
            }
            iArr3 = iArr11;
            iArr4 = iArr10;
            j13 += jArr6[i27];
            i27++;
            iArr7 = iArr112;
            i22 = i31;
            iArr6 = iArr6;
            iArr8 = iArr8;
            jArr = jArr;
            jArr2 = jArr2;
            jArr7 = jArr7;
        }
        return new G1(d6, jArr7, iArr8, i22, jArr8, iArr9, Et.v(j13, 1000000L, d8.f12741d, RoundingMode.FLOOR));
    }

    /* JADX WARN: Code duplicated, block: B:201:0x03d2  */
    /* JADX WARN: Code duplicated, block: B:29:0x0080  */
    /* JADX WARN: Code duplicated, block: B:79:0x0141  */
    public static void g(C1534jr c1534jr, int i8, int i9, int i10, int i11, String str, boolean z7, C1672mO c1672mO, p016c.g gVar, int i12) throws C0800Ka {
        int i13;
        int iA;
        int iR;
        int iRound;
        int i14;
        String str2;
        int i15;
        int i16;
        p111o1.c cVar;
        String str3;
        PA paW;
        String str4;
        String str5;
        String str6;
        boolean z8;
        int i17;
        String str7;
        C1534jr c1534jr2 = c1534jr;
        int i18 = i9;
        int i19 = i10;
        C1672mO c1672mOA = c1672mO;
        c1534jr2.j(i18 + 16);
        if (z7) {
            int iA2 = c1534jr.A();
            c1534jr2.k(6);
            i13 = iA2;
        } else {
            c1534jr2.k(8);
            i13 = 0;
        }
        if (i13 == 0 || i13 == 1) {
            iA = c1534jr.A();
            c1534jr2.k(6);
            int iX = c1534jr.x();
            c1534jr2.j(c1534jr2.f19516b - 4);
            iR = c1534jr.r();
            if (i13 == 1) {
                c1534jr2.k(16);
            }
            iRound = iX;
            i14 = -1;
        } else {
            if (i13 != 2) {
                return;
            }
            c1534jr2.k(16);
            iRound = (int) Math.round(Double.longBitsToDouble(c1534jr.D()));
            iA = c1534jr.z();
            c1534jr2.k(4);
            int iZ = c1534jr.z();
            int iZ2 = c1534jr.z();
            int i20 = iZ2 & 1;
            int i21 = iZ2 & 2;
            if (i20 == 0) {
                if (iZ == 8) {
                    i14 = 3;
                } else if (iZ == 16) {
                    i14 = i21 != 0 ? 268435456 : 2;
                } else if (iZ == 24) {
                    i14 = i21 != 0 ? 1342177280 : 21;
                } else if (iZ == 32) {
                    i14 = i21 != 0 ? 1610612736 : 22;
                } else {
                    i14 = -1;
                }
            } else if (iZ == 32) {
                i14 = 4;
            } else {
                i14 = -1;
            }
            c1534jr2.k(8);
            iR = 0;
        }
        int i22 = c1534jr2.f19516b;
        int iIntValue = 1701733217;
        if (i8 == 1701733217) {
            Pair pairD = d(c1534jr2, i18, i19);
            if (pairD != null) {
                iIntValue = ((Integer) pairD.first).intValue();
                c1672mOA = c1672mOA == null ? null : c1672mOA.a(((E1) pairD.second).f12925b);
                ((E1[]) gVar.f10556J)[i12] = (E1) pairD.second;
            }
            c1534jr2.j(i22);
        } else {
            iIntValue = i8;
        }
        String str8 = "audio/mhm1";
        String str9 = "audio/ac3";
        if (iIntValue == 1633889587) {
            str2 = "audio/ac3";
        } else if (iIntValue == 1700998451) {
            str2 = "audio/eac3";
        } else if (iIntValue == 1633889588) {
            str2 = "audio/ac4";
        } else if (iIntValue == 1685353315) {
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
            i14 = 2;
        } else if (iIntValue == 1953984371) {
            str2 = "audio/raw";
            i14 = 268435456;
        } else if (iIntValue == 1819304813) {
            if (i14 == -1) {
                str2 = "audio/raw";
                i14 = 2;
            } else {
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
        } else {
            str2 = iIntValue == 1767992678 ? "audio/iamf" : null;
        }
        int i23 = i14;
        int i24 = iRound;
        List listW = null;
        p111o1.c cVar2 = null;
        String str10 = str2;
        int i25 = i22;
        String str11 = null;
        while (i25 - i18 < i19) {
            c1534jr2.j(i25);
            int iR2 = c1534jr.r();
            String str12 = "childAtomSize must be positive";
            AbstractC2987b.t0("childAtomSize must be positive", iR2 > 0);
            int iR3 = c1534jr.r();
            iA = iA;
            if (iR3 == 1835557187) {
                c1534jr2.j(i25 + 8);
                c1534jr2.k(1);
                int iW = c1534jr.w();
                c1534jr2.k(1);
                if (Objects.equals(str10, str8)) {
                    i17 = 0;
                    str7 = String.format("mhm1.%02X", Integer.valueOf(iW));
                } else {
                    i17 = 0;
                    str7 = String.format("mha1.%02X", Integer.valueOf(iW));
                }
                int iA3 = c1534jr.A();
                byte[] bArr = new byte[iA3];
                c1534jr2.f(i17, bArr, iA3);
                listW = listW == null ? AbstractC2073uA.w(bArr) : AbstractC2073uA.x(bArr, (byte[]) listW.get(i17));
                str11 = str7;
            } else {
                str8 = str8;
                if (iR3 == 1835557200) {
                    c1534jr2.j(i25 + 8);
                    int iW2 = c1534jr.w();
                    if (iW2 > 0) {
                        byte[] bArr2 = new byte[iW2];
                        c1534jr2.f(0, bArr2, iW2);
                        listW = listW == null ? AbstractC2073uA.w(bArr2) : AbstractC2073uA.x((byte[]) listW.get(0), bArr2);
                    } else {
                        str9 = str9;
                        listW = listW;
                        str10 = str10;
                        i24 = i24;
                        iA = iA;
                    }
                } else {
                    if (iR3 != 1702061171) {
                        if (z7 && iR3 == 2002876005) {
                            int i26 = c1534jr2.f19516b;
                            if (i26 >= i25) {
                                str6 = null;
                                z8 = true;
                            } else {
                                str6 = null;
                                z8 = false;
                            }
                            AbstractC2987b.t0(str6, z8);
                            while (true) {
                                if (i26 - i25 >= iR2) {
                                    i15 = -1;
                                    break;
                                }
                                c1534jr2.j(i26);
                                int iR4 = c1534jr.r();
                                AbstractC2987b.t0(str12, iR4 > 0);
                                String str13 = str12;
                                if (c1534jr.r() == 1702061171) {
                                    i15 = i26;
                                    break;
                                } else {
                                    i26 += iR4;
                                    str12 = str13;
                                }
                            }
                            i16 = -1;
                        } else {
                            int[] iArr = AbstractC1717nH.f20118f;
                            int[] iArr2 = AbstractC1717nH.f20114d;
                            if (iR3 == 1684103987) {
                                c1534jr2.j(i25 + 8);
                                String string = Integer.toString(i11);
                                C1286f0 c1286f0 = new C1286f0();
                                c1286f0.r(c1534jr2);
                                int i27 = iArr2[c1286f0.g(2)];
                                listW = listW;
                                c1286f0.v(8);
                                int i28 = iArr[c1286f0.g(3)];
                                if (c1286f0.g(1) != 0) {
                                    i28++;
                                }
                                int i29 = AbstractC1717nH.f20120g[c1286f0.g(5)] * 1000;
                                c1286f0.l();
                                c1534jr2.j(c1286f0.c());
                                K k8 = new K();
                                k8.f14260a = string;
                                k8.f(str9);
                                k8.f14285z = i28;
                                k8.f14253A = i27;
                                k8.f14275p = c1672mOA;
                                k8.f14263d = str;
                                k8.f14266g = i29;
                                k8.f14267h = i29;
                                gVar.f10557K = new C1804p0(k8);
                                str9 = str9;
                                str10 = str10;
                            } else {
                                listW = listW;
                                if (iR3 == 1684366131) {
                                    c1534jr2.j(i25 + 8);
                                    String string2 = Integer.toString(i11);
                                    C1286f0 c1286f1 = new C1286f0();
                                    c1286f1.r(c1534jr2);
                                    int iG = c1286f1.g(13) * 1000;
                                    c1286f1.v(3);
                                    int i30 = iArr2[c1286f1.g(2)];
                                    str9 = str9;
                                    c1286f1.v(10);
                                    int i31 = iArr[c1286f1.g(3)];
                                    if (c1286f1.g(1) != 0) {
                                        i31++;
                                    }
                                    c1286f1.v(3);
                                    int iG2 = c1286f1.g(4);
                                    c1286f1.v(1);
                                    str4 = str10;
                                    if (iG2 > 0) {
                                        c1286f1.v(6);
                                        if (c1286f1.g(1) != 0) {
                                            i31 += 2;
                                        }
                                        c1286f1.v(1);
                                    }
                                    if (c1286f1.a() > 7) {
                                        c1286f1.v(7);
                                        if (c1286f1.g(1) != 0) {
                                            str5 = "audio/eac3-joc";
                                        } else {
                                            str5 = "audio/eac3";
                                        }
                                    } else {
                                        str5 = "audio/eac3";
                                    }
                                    c1286f1.l();
                                    c1534jr2.j(c1286f1.c());
                                    K k9 = new K();
                                    k9.f14260a = string2;
                                    k9.f(str5);
                                    k9.f14285z = i31;
                                    k9.f14253A = i30;
                                    k9.f14275p = c1672mOA;
                                    k9.f14263d = str;
                                    k9.f14267h = iG;
                                    gVar.f10557K = new C1804p0(k9);
                                } else {
                                    str9 = str9;
                                    str4 = str10;
                                    if (iR3 == 1684103988) {
                                        c1534jr2.j(i25 + 8);
                                        String string3 = Integer.toString(i11);
                                        c1534jr2.k(1);
                                        int iW3 = c1534jr.w() & 32;
                                        K k10 = new K();
                                        k10.f14260a = string3;
                                        k10.f("audio/ac4");
                                        k10.f14285z = 2;
                                        k10.f14253A = 1 != (iW3 >> 5) ? 44100 : 48000;
                                        k10.f14275p = c1672mOA;
                                        k10.f14263d = str;
                                        gVar.f10557K = new C1804p0(k10);
                                    } else if (iR3 == 1684892784) {
                                        if (iR <= 0) {
                                            throw C0800Ka.a("Invalid sample rate for Dolby TrueHD MLP stream: " + iR, null);
                                        }
                                        i24 = iR;
                                        iR = i24;
                                        listW = listW;
                                        str10 = str4;
                                        iA = 2;
                                    } else if (iR3 == 1684305011 || iR3 == 1969517683) {
                                        K k11 = new K();
                                        k11.c(i11);
                                        str10 = str4;
                                        k11.f(str10);
                                        iA = iA;
                                        k11.f14285z = iA;
                                        i24 = i24;
                                        k11.f14253A = i24;
                                        k11.f14275p = c1672mOA;
                                        k11.f14263d = str;
                                        gVar.f10557K = new C1804p0(k11);
                                        str10 = str10;
                                        iA = iA;
                                        listW = listW;
                                    } else if (iR3 == 1682927731) {
                                        int i32 = iR2 - 8;
                                        byte[] bArr3 = f20670a;
                                        byte[] bArrCopyOf = Arrays.copyOf(bArr3, bArr3.length + i32);
                                        c1534jr2.j(i25 + 8);
                                        c1534jr2.f(bArr3.length, bArrCopyOf, i32);
                                        listW = Q3.b.S(bArrCopyOf);
                                        iA = iA;
                                        str10 = str4;
                                        iR = iR;
                                    } else {
                                        if (iR3 == 1684425825) {
                                            byte[] bArr4 = new byte[iR2 - 8];
                                            bArr4[0] = 102;
                                            bArr4[1] = 76;
                                            bArr4[2] = 97;
                                            bArr4[3] = 67;
                                            c1534jr2.j(i25 + 12);
                                            c1534jr2.f(4, bArr4, iR2 - 12);
                                            listW = AbstractC2073uA.w(bArr4);
                                        } else if (iR3 == 1634492771) {
                                            int i33 = iR2 - 12;
                                            byte[] bArr5 = new byte[i33];
                                            c1534jr2.j(i25 + 12);
                                            c1534jr2.f(0, bArr5, i33);
                                            C1534jr c1534jr3 = new C1534jr(bArr5);
                                            c1534jr3.j(9);
                                            int iW4 = c1534jr3.w();
                                            c1534jr3.j(20);
                                            Pair pairCreate = Pair.create(Integer.valueOf(c1534jr3.z()), Integer.valueOf(iW4));
                                            int iIntValue2 = ((Integer) pairCreate.first).intValue();
                                            int iIntValue3 = ((Integer) pairCreate.second).intValue();
                                            listW = AbstractC2073uA.w(bArr5);
                                            i24 = iIntValue2;
                                            iR = iR;
                                            str10 = str4;
                                            iA = iIntValue3;
                                        } else if (iR3 == 1767990114) {
                                            c1534jr2.j(i25 + 9);
                                            long j8 = 0;
                                            for (int i34 = 0; i34 < 9; i34++) {
                                                if (c1534jr2.f19516b == c1534jr2.f19517c) {
                                                    throw new IllegalStateException("Attempting to read a byte over the limit.");
                                                }
                                                long jW = c1534jr.w();
                                                j8 |= (jW & 127) << (i34 * 7);
                                                if ((jW & 128) == 0) {
                                                    break;
                                                }
                                            }
                                            int iW0 = Cw.w0(j8);
                                            byte[] bArr6 = new byte[iW0];
                                            c1534jr2.f(0, bArr6, iW0);
                                            listW = AbstractC2073uA.w(bArr6);
                                        } else {
                                            iA = iA;
                                            i24 = i24;
                                            str10 = str4;
                                        }
                                        i24 = i24;
                                        str10 = str4;
                                        iR = iR;
                                    }
                                }
                                str10 = str4;
                            }
                        }
                        i25 += iR2;
                        c1534jr2 = c1534jr;
                        i19 = i10;
                        str8 = str8;
                        iR = iR;
                        str9 = str9;
                        i24 = i24;
                        i18 = i9;
                    } else {
                        str9 = str9;
                        listW = listW;
                        str10 = str10;
                        i24 = i24;
                        i15 = i25;
                        i16 = -1;
                    }
                    if (i15 != i16) {
                        p111o1.c cVarE = e(i15, c1534jr2);
                        str10 = cVarE.f27685a;
                        byte[] bArr7 = cVarE.f27686b;
                        if (bArr7 != null) {
                            if ("audio/vorbis".equals(str10)) {
                                C1534jr c1534jr4 = new C1534jr(bArr7);
                                c1534jr4.k(1);
                                int i35 = 0;
                                while (c1534jr4.o() > 0 && (c1534jr4.f19515a[c1534jr4.f19516b] & 255) == 255) {
                                    c1534jr4.k(1);
                                    i35 += 255;
                                }
                                int iW5 = c1534jr4.w() + i35;
                                int i36 = 0;
                                while (true) {
                                    if (c1534jr4.o() <= 0) {
                                        cVar = cVarE;
                                        iR = iR;
                                        break;
                                    }
                                    cVar = cVarE;
                                    iR = iR;
                                    if ((c1534jr4.f19515a[c1534jr4.f19516b] & 255) != 255) {
                                        break;
                                    }
                                    c1534jr4.k(1);
                                    i36 += 255;
                                    cVarE = cVar;
                                    iR = iR;
                                }
                                int iW6 = c1534jr4.w() + i36;
                                byte[] bArr8 = new byte[iW5];
                                int i37 = c1534jr4.f19516b;
                                System.arraycopy(bArr7, i37, bArr8, 0, iW5);
                                int i38 = i37 + iW5 + iW6;
                                int length = bArr7.length - i38;
                                byte[] bArr9 = new byte[length];
                                System.arraycopy(bArr7, i38, bArr9, 0, length);
                                paW = AbstractC2073uA.x(bArr8, bArr9);
                                iA = iA;
                            } else {
                                cVar = cVarE;
                                iR = iR;
                                if ("audio/mp4a-latm".equals(str10)) {
                                    W0.r rVarC = AbstractC1717nH.c(new C1286f0(bArr7, bArr7.length), false);
                                    i24 = rVarC.f7455b;
                                    iA = rVarC.f7456c;
                                    str3 = rVarC.f7454a;
                                } else {
                                    iA = iA;
                                    str3 = str11;
                                }
                                paW = AbstractC2073uA.w(bArr7);
                                str11 = str3;
                            }
                            cVar2 = cVar;
                            listW = paW;
                        } else {
                            iR = iR;
                            str10 = str10;
                            iA = iA;
                            cVar2 = cVarE;
                            listW = listW;
                        }
                    } else {
                        str10 = str10;
                        iA = iA;
                        listW = listW;
                    }
                    i25 += iR2;
                    c1534jr2 = c1534jr;
                    i19 = i10;
                    str8 = str8;
                    iR = iR;
                    str9 = str9;
                    i24 = i24;
                    i18 = i9;
                }
                str10 = str10;
                iA = iA;
                listW = listW;
                i25 += iR2;
                c1534jr2 = c1534jr;
                i19 = i10;
                str8 = str8;
                iR = iR;
                str9 = str9;
                i24 = i24;
                i18 = i9;
            }
            str9 = str9;
            iR = iR;
            i25 += iR2;
            c1534jr2 = c1534jr;
            i19 = i10;
            str8 = str8;
            iR = iR;
            str9 = str9;
            i24 = i24;
            i18 = i9;
        }
        List list = listW;
        String str14 = str10;
        int i39 = iA;
        int i40 = i24;
        if (((C1804p0) gVar.f10557K) != null || str14 == null) {
            return;
        }
        K k12 = new K();
        k12.c(i11);
        k12.f(str14);
        k12.f14268i = str11;
        k12.f14285z = i39;
        k12.f14253A = i40;
        k12.f14254B = i23;
        k12.f14274o = list;
        k12.f14275p = c1672mOA;
        k12.f14263d = str;
        p111o1.c cVar3 = cVar2;
        if (cVar3 != null) {
            k12.f14266g = Cw.u1(cVar3.f27687c);
            k12.f14267h = Cw.u1(cVar3.f27688d);
        }
        gVar.f10557K = new C1804p0(k12);
    }
}
