package H5;

import W0.C0371d;
import Z3.C0433o;
import java.util.Arrays;
import p027d2.v;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public abstract class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final C0433o f3780a = new C0433o(20);

    public static b a(d dVar) {
        int[] iArr;
        int i8;
        o oVar;
        o oVar2;
        o oVar3;
        o oVar4;
        if (dVar == null) {
            return null;
        }
        C0371d c0371dI = dVar.I();
        int iMax = -1;
        boolean z7 = dVar.f3778K;
        if (c0371dI == null) {
            iArr = null;
        } else {
            b bVar = (b) dVar.f22390H;
            int iP = dVar.p((int) (z7 ? bVar.f3768c : bVar.f3770e).f29646b);
            C0371d[] c0371dArr = (C0371d[]) dVar.f22391I;
            int i9 = -1;
            int i10 = 0;
            int iMax2 = 1;
            for (int iP2 = dVar.p((int) (z7 ? bVar.f3767b : bVar.f3769d).f29646b); iP2 < iP; iP2++) {
                C0371d c0371d = c0371dArr[iP2];
                if (c0371d != null) {
                    c0371d.c();
                    int i11 = c0371d.f7392f;
                    int i12 = i11 - i9;
                    if (i12 == 0) {
                        i10++;
                    } else {
                        if (i12 == 1) {
                            iMax2 = Math.max(iMax2, i10);
                            i9 = c0371d.f7392f;
                        } else if (i11 >= c0371dI.f7392f) {
                            c0371dArr[iP2] = null;
                        } else {
                            i9 = i11;
                        }
                        i10 = 1;
                    }
                }
            }
            int i13 = c0371dI.f7392f;
            iArr = new int[i13];
            for (C0371d c0371d2 : (C0371d[]) dVar.f22391I) {
                if (c0371d2 != null && (i8 = c0371d2.f7392f) < i13) {
                    iArr[i8] = iArr[i8] + 1;
                }
            }
        }
        if (iArr == null) {
            return null;
        }
        for (int i14 : iArr) {
            iMax = Math.max(iMax, i14);
        }
        int i15 = 0;
        for (int i16 : iArr) {
            i15 += iMax - i16;
            if (i16 > 0) {
                break;
            }
        }
        C0371d[] c0371dArr2 = (C0371d[]) dVar.f22391I;
        for (int i17 = 0; i15 > 0 && c0371dArr2[i17] == null; i17++) {
            i15--;
        }
        int i18 = 0;
        for (int length = iArr.length - 1; length >= 0; length--) {
            int i19 = iArr[length];
            i18 += iMax - i19;
            if (i19 > 0) {
                break;
            }
        }
        for (int length2 = c0371dArr2.length - 1; i18 > 0 && c0371dArr2[length2] == null; length2--) {
            i18--;
        }
        b bVar2 = (b) dVar.f22390H;
        o oVar5 = bVar2.f3767b;
        o oVar6 = bVar2.f3769d;
        if (i15 > 0) {
            o oVar7 = z7 ? oVar5 : oVar6;
            int i20 = ((int) oVar7.f29646b) - i15;
            o oVar8 = new o(oVar7.f29645a, i20 >= 0 ? i20 : 0);
            if (z7) {
                oVar2 = oVar6;
                oVar = oVar8;
            } else {
                oVar = oVar5;
                oVar2 = oVar8;
            }
        } else {
            oVar = oVar5;
            oVar2 = oVar6;
        }
        o oVar9 = bVar2.f3768c;
        o oVar10 = bVar2.f3770e;
        if (i18 > 0) {
            o oVar11 = z7 ? oVar9 : oVar10;
            int i21 = ((int) oVar11.f29646b) + i18;
            int i22 = bVar2.f3766a.f31092H;
            if (i21 >= i22) {
                i21 = i22 - 1;
            }
            o oVar12 = new o(oVar11.f29645a, i21);
            if (z7) {
                oVar4 = oVar10;
                oVar3 = oVar12;
            } else {
                oVar3 = oVar9;
                oVar4 = oVar12;
            }
        } else {
            oVar3 = oVar9;
            oVar4 = oVar10;
        }
        return new b(bVar2.f3766a, oVar, oVar3, oVar2, oVar4);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:118:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:120:0x02d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:121:0x02db  */
    /* JADX WARN: Code duplicated, block: B:125:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:126:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:127:0x030d  */
    /* JADX WARN: Code duplicated, block: B:128:0x0319  */
    /* JADX WARN: Code duplicated, block: B:129:0x0325  */
    /* JADX WARN: Code duplicated, block: B:130:0x0338  */
    /* JADX WARN: Code duplicated, block: B:131:0x034b  */
    /* JADX WARN: Code duplicated, block: B:134:0x035d  */
    /* JADX WARN: Code duplicated, block: B:151:0x03ad  */
    /* JADX WARN: Code duplicated, block: B:157:0x03cc  */
    /* JADX WARN: Code duplicated, block: B:160:0x03d3  */
    /* JADX WARN: Code duplicated, block: B:166:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:168:0x03ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:169:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:170:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:172:0x03f7 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:175:0x03fc A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:183:0x0417  */
    /* JADX WARN: Code duplicated, block: B:208:0x047c A[LOOP:15: B:207:0x047a->B:208:0x047c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:263:0x0358 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:264:0x02e2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x0412 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:125:0x02e7 -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:126:0x02fa -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:127:0x030d -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:128:0x0319 -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:129:0x0325 -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:130:0x0338 -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:131:0x034b -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:134:0x035d -> B:114:0x02cb). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static p176w5.d b(int r22, int[] r23, int[] r24) throws p130q5.b, p130q5.e {
        /*
            Method dump skipped, instruction units count: 1350
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: H5.f.b(int, int[], int[]):w5.d");
    }

    /* JADX WARN: Code duplicated, block: B:116:0x002c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:120:0x0031 A[EDGE_INSN: B:120:0x0031->B:19:0x0031 BREAK  A[LOOP:1: B:9:0x0017->B:18:0x002f], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:0x005f A[EDGE_INSN: B:123:0x005f->B:34:0x005f BREAK  A[LOOP:2: B:25:0x0044->B:126:0x0044], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:124:0x005a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x0053 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:13:0x001e  */
    /* JADX WARN: Code duplicated, block: B:15:0x0024  */
    /* JADX WARN: Code duplicated, block: B:18:0x002f A[LOOP:1: B:9:0x0017->B:18:0x002f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x004b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x004d  */
    public static C0371d c(p176w5.b bVar, int i8, int i9, boolean z7, int i10, int i11, int i12, int i13) {
        int i14;
        int i15 = i8;
        int i16 = z7 ? -1 : 1;
        boolean z8 = z7;
        int i17 = i10;
        loop0: for (int i18 = 0; i18 < 2; i18++) {
            while (true) {
                if (!z8) {
                    if (i17 >= i9) {
                        break;
                    }
                    if (z8 == bVar.b(i17, i11)) {
                        break;
                        break;
                    }
                    if (Math.abs(i10 - i17) > 2) {
                        i17 = i10;
                        break loop0;
                    }
                    i17 += i16;
                } else {
                    if (i17 < i15) {
                        break;
                    }
                    if (z8 == bVar.b(i17, i11)) {
                        break;
                    }
                    if (Math.abs(i10 - i17) > 2) {
                        i17 = i10;
                        break loop0;
                    }
                    i17 += i16;
                }
            }
            i16 = -i16;
            z8 = !z8;
        }
        int[] iArr = new int[8];
        int i19 = z7 ? 1 : -1;
        boolean z9 = z7;
        int i20 = i17;
        int i21 = 0;
        while (true) {
            if (!z7) {
                if (i20 < i15) {
                    break;
                }
                if (i21 < 8) {
                    break;
                    break;
                }
                if (bVar.b(i20, i11) == z9) {
                    iArr[i21] = iArr[i21] + 1;
                    i20 += i19;
                } else {
                    i21++;
                    z9 = !z9;
                }
            } else {
                if (i20 >= i9) {
                    break;
                }
                if (i21 < 8) {
                    break;
                }
                if (bVar.b(i20, i11) == z9) {
                    iArr[i21] = iArr[i21] + 1;
                    i20 += i19;
                } else {
                    i21++;
                    z9 = !z9;
                }
            }
        }
        if (i21 != 8) {
            if (z7) {
                i15 = i9;
            }
            if (i20 != i15 || i21 != 7) {
                iArr = null;
            }
        }
        if (iArr == null) {
            return null;
        }
        int iT = v.t(iArr);
        if (z7) {
            i14 = i17 + iT;
        } else {
            for (int i22 = 0; i22 < iArr.length / 2; i22++) {
                int i23 = iArr[i22];
                iArr[i22] = iArr[(iArr.length - 1) - i22];
                iArr[(iArr.length - 1) - i22] = i23;
            }
            int i24 = i17;
            i17 -= iT;
            i14 = i24;
        }
        if (i12 - 2 > iT || iT > i13 + 2) {
            return null;
        }
        float[][] fArr = e.f3779a;
        float fT = v.t(iArr);
        int[] iArr2 = new int[8];
        int i25 = 0;
        int i26 = 0;
        for (int i27 = 0; i27 < 17; i27++) {
            float f8 = ((i27 * fT) / 17.0f) + (fT / 34.0f);
            int i28 = iArr[i26] + i25;
            if (i28 <= f8) {
                i26++;
                i25 = i28;
            }
            iArr2[i26] = iArr2[i26] + 1;
        }
        long j8 = 0;
        for (int i29 = 0; i29 < 8; i29++) {
            for (int i30 = 0; i30 < iArr2[i29]; i30++) {
                j8 = (j8 << 1) | ((long) (i29 % 2 == 0 ? 1 : 0));
            }
        }
        int i31 = (int) j8;
        int[] iArr3 = G5.a.f3410b;
        int iBinarySearch = Arrays.binarySearch(iArr3, i31 & 262143);
        int[] iArr4 = G5.a.f3411c;
        if (iBinarySearch < 0 || (iArr4[iBinarySearch] - 1) % 929 == -1) {
            i31 = -1;
        }
        if (i31 == -1) {
            int iT2 = v.t(iArr);
            float[] fArr2 = new float[8];
            if (iT2 > 1) {
                for (int i32 = 0; i32 < 8; i32++) {
                    fArr2[i32] = iArr[i32] / iT2;
                }
            }
            i31 = -1;
            float f9 = Float.MAX_VALUE;
            int i33 = 0;
            while (true) {
                float[][] fArr3 = e.f3779a;
                if (i33 >= fArr3.length) {
                    break;
                }
                float[] fArr4 = fArr3[i33];
                float f10 = 0.0f;
                for (int i34 = 0; i34 < 8; i34++) {
                    float f11 = fArr4[i34] - fArr2[i34];
                    f10 = (f11 * f11) + f10;
                    if (f10 >= f9) {
                        break;
                    }
                }
                if (f10 < f9) {
                    i31 = iArr3[i33];
                    f9 = f10;
                }
                i33++;
            }
        }
        int iBinarySearch2 = Arrays.binarySearch(iArr3, i31 & 262143);
        int i35 = iBinarySearch2 < 0 ? -1 : (iArr4[iBinarySearch2] - 1) % 929;
        if (i35 == -1) {
            return null;
        }
        int[] iArr5 = new int[8];
        int i36 = i31;
        int i37 = 7;
        int i38 = 0;
        while (true) {
            int i39 = i36 & 1;
            if (i39 != i38) {
                i37--;
                if (i37 < 0) {
                    return new C0371d(i17, i14, ((((iArr5[0] - iArr5[2]) + iArr5[4]) - iArr5[6]) + 9) % 9, i35, 3, 0);
                }
                i38 = i39;
            }
            iArr5[i37] = iArr5[i37] + 1;
            i36 >>= 1;
        }
    }

    public static d d(p176w5.b bVar, b bVar2, o oVar, boolean z7, int i8, int i9) {
        d dVar = new d(bVar2, z7);
        int i10 = 0;
        while (i10 < 2) {
            int i11 = i10 == 0 ? 1 : -1;
            int i12 = (int) oVar.f29645a;
            for (int i13 = (int) oVar.f29646b; i13 <= bVar2.f3774i && i13 >= bVar2.f3773h; i13 += i11) {
                C0371d c0371dC = c(bVar, 0, bVar.f31091G, z7, i12, i13, i8, i9);
                if (c0371dC != null) {
                    ((C0371d[]) dVar.f22391I)[dVar.p(i13)] = c0371dC;
                    i12 = z7 ? c0371dC.f7388b : c0371dC.f7389c;
                }
            }
            i10++;
        }
        return dVar;
    }
}
