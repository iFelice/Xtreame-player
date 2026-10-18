package R6;

import Q6.j;
import Q6.u;
import Q6.y;
import java.io.EOFException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f6313a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(I6.a.f4021a);
        q0.g(bytes, "this as java.lang.String).getBytes(charset)");
        f6313a = bytes;
    }

    public static final boolean a(y yVar, int i8, byte[] bArr, int i9) {
        int i10 = yVar.f6099c;
        byte[] bArr2 = yVar.f6097a;
        for (int i11 = 1; i11 < i9; i11++) {
            if (i8 == i10) {
                yVar = yVar.f6102f;
                q0.e(yVar);
                i8 = yVar.f6098b;
                i10 = yVar.f6099c;
                bArr2 = yVar.f6097a;
            }
            if (bArr2[i8] != bArr[i11]) {
                return false;
            }
            i8++;
        }
        return true;
    }

    public static final String b(j jVar, long j8) throws EOFException {
        q0.h(jVar, "<this>");
        if (j8 > 0) {
            long j9 = j8 - 1;
            if (jVar.a0(j9) == 13) {
                String strG0 = jVar.g0(j9, I6.a.f4021a);
                jVar.b(2L);
                return strG0;
            }
        }
        String strG1 = jVar.g0(j8, I6.a.f4021a);
        jVar.b(1L);
        return strG1;
    }

    public static final int c(j jVar, u uVar, boolean z7) {
        int i8;
        int i9;
        y yVar;
        byte[] bArr;
        int i10;
        q0.h(jVar, "<this>");
        q0.h(uVar, "options");
        y yVar2 = jVar.f6063G;
        int i11 = -2;
        if (yVar2 == null) {
            return z7 ? -2 : -1;
        }
        int i12 = yVar2.f6098b;
        int i13 = yVar2.f6099c;
        byte[] bArr2 = yVar2.f6097a;
        y yVar3 = yVar2;
        int i14 = 0;
        int i15 = -1;
        loop0: while (true) {
            int i16 = i14 + 1;
            int[] iArr = uVar.f6084H;
            int i17 = iArr[i14];
            int i18 = i14 + 2;
            int i19 = iArr[i16];
            if (i19 != -1) {
                i15 = i19;
            }
            if (yVar3 == null) {
                break;
            }
            if (i17 >= 0) {
                int i20 = i12 + 1;
                int i21 = bArr2[i12] & 255;
                int i22 = i18 + i17;
                while (i18 != i22) {
                    if (i21 == iArr[i18]) {
                        i8 = iArr[i18 + i17];
                        if (i20 == i13) {
                            yVar3 = yVar3.f6102f;
                            q0.e(yVar3);
                            i9 = yVar3.f6098b;
                            i13 = yVar3.f6099c;
                            bArr2 = yVar3.f6097a;
                            if (yVar3 == yVar2) {
                                yVar3 = null;
                            }
                        } else {
                            i9 = i20;
                        }
                    } else {
                        i18++;
                    }
                }
                return i15;
            }
            int i23 = (i17 * (-1)) + i18;
            while (true) {
                int i24 = i12 + 1;
                int i25 = i18 + 1;
                if ((bArr2[i12] & 255) != iArr[i18]) {
                    return i15;
                }
                boolean z8 = i25 == i23;
                if (i24 == i13) {
                    q0.e(yVar3);
                    y yVar4 = yVar3.f6102f;
                    q0.e(yVar4);
                    i10 = yVar4.f6098b;
                    int i26 = yVar4.f6099c;
                    bArr = yVar4.f6097a;
                    if (yVar4 != yVar2) {
                        yVar = yVar4;
                        i13 = i26;
                    } else {
                        if (!z8) {
                            break loop0;
                        }
                        i13 = i26;
                        yVar = null;
                    }
                } else {
                    yVar = yVar3;
                    bArr = bArr2;
                    i10 = i24;
                }
                if (z8) {
                    i8 = iArr[i25];
                    i9 = i10;
                    bArr2 = bArr;
                    yVar3 = yVar;
                    break;
                }
                i12 = i10;
                bArr2 = bArr;
                yVar3 = yVar;
                i18 = i25;
            }
            if (i8 >= 0) {
                return i8;
            }
            i14 = -i8;
            i12 = i9;
            i11 = -2;
        }
        return z7 ? i11 : i15;
    }
}
