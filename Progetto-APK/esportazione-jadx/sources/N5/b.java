package N5;

import L5.f;
import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;
import p130q5.q;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f4954a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[][] f4955b = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[][] f4956c = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[][] f4957d = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, WebSocketProtocol.PAYLOAD_SHORT, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[][] f4958e = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* JADX WARN: Code duplicated, block: B:101:0x0233  */
    public static void a(p176w5.a aVar, L5.b bVar, f fVar, int i8, V.b bVar2) {
        boolean zD;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        for (byte[] bArr : (byte[][]) bVar2.f6995d) {
            Arrays.fill(bArr, (byte) -1);
        }
        int length = f4955b[0].length;
        d(0, 0, bVar2);
        d(bVar2.f6993b - length, 0, bVar2);
        d(0, bVar2.f6993b - length, bVar2);
        c(0, 7, bVar2);
        c(bVar2.f6993b - 8, 7, bVar2);
        c(0, bVar2.f6993b - 8, bVar2);
        e(7, 0, bVar2);
        e(bVar2.f6994c - 8, 0, bVar2);
        e(7, bVar2.f6994c - 7, bVar2);
        if (bVar2.f(8, bVar2.f6994c - 8) == 0) {
            throw new q();
        }
        bVar2.g(8, bVar2.f6994c - 8, 1);
        int i14 = fVar.f4726a;
        int i15 = 5;
        if (i14 >= 2) {
            int[] iArr = f4957d[i14 - 1];
            int length2 = iArr.length;
            int i16 = 0;
            while (i16 < length2) {
                int i17 = iArr[i16];
                if (i17 >= 0) {
                    int length3 = iArr.length;
                    int i18 = 0;
                    while (i18 < length3) {
                        int i19 = iArr[i18];
                        if (i19 >= 0 && f(bVar2.f(i19, i17))) {
                            int i20 = i19 - 2;
                            int i21 = i17 - 2;
                            int i22 = 0;
                            while (i22 < i15) {
                                int[] iArr2 = f4956c[i22];
                                int i23 = 0;
                                while (i23 < i15) {
                                    bVar2.g(i20 + i23, i21 + i22, iArr2[i23]);
                                    i23++;
                                    i15 = 5;
                                }
                                i22++;
                                i15 = 5;
                            }
                        }
                        i18++;
                        i15 = 5;
                    }
                }
                i16++;
                i15 = 5;
            }
        }
        int i24 = 8;
        while (i24 < bVar2.f6993b - 8) {
            int i25 = i24 + 1;
            int i26 = i25 % 2;
            if (f(bVar2.f(i24, 6))) {
                bVar2.g(i24, 6, i26);
            }
            if (f(bVar2.f(6, i24))) {
                bVar2.g(6, i24, i26);
            }
            i24 = i25;
        }
        p176w5.a aVar2 = new p176w5.a();
        if (i8 < 0 || i8 >= 8) {
            throw new q("Invalid mask pattern");
        }
        int i27 = (bVar.f4707G << 3) | i8;
        aVar2.b(i27, 5);
        aVar2.b(b(i27, 1335), 10);
        p176w5.a aVar3 = new p176w5.a();
        aVar3.b(21522, 15);
        if (aVar2.f31090H != aVar3.f31090H) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i28 = 0;
        while (true) {
            int[] iArr3 = aVar2.f31089G;
            if (i28 >= iArr3.length) {
                break;
            }
            iArr3[i28] = iArr3[i28] ^ aVar3.f31089G[i28];
            i28++;
        }
        if (aVar2.f31090H != 15) {
            throw new q("should not happen but we got: " + aVar2.f31090H);
        }
        int i29 = 0;
        while (true) {
            int i30 = aVar2.f31090H;
            if (i29 >= i30) {
                break;
            }
            boolean zD2 = aVar2.d((i30 - 1) - i29);
            int[] iArr4 = f4958e[i29];
            bVar2.h(zD2, iArr4[0], iArr4[1]);
            if (i29 < 8) {
                i13 = (bVar2.f6993b - i29) - 1;
                i12 = 8;
            } else {
                i12 = (bVar2.f6994c - 7) + (i29 - 8);
                i13 = 8;
            }
            bVar2.h(zD2, i13, i12);
            i29++;
        }
        if (i14 >= 7) {
            p176w5.a aVar4 = new p176w5.a();
            aVar4.b(i14, 6);
            aVar4.b(b(i14, 7973), 12);
            if (aVar4.f31090H != 18) {
                throw new q("should not happen but we got: " + aVar4.f31090H);
            }
            int i31 = 17;
            for (int i32 = 0; i32 < 6; i32++) {
                for (int i33 = 0; i33 < 3; i33++) {
                    boolean zD3 = aVar4.d(i31);
                    i31--;
                    bVar2.h(zD3, i32, (bVar2.f6994c - 11) + i33);
                    bVar2.h(zD3, (bVar2.f6994c - 11) + i33, i32);
                }
            }
        }
        int i34 = bVar2.f6993b - 1;
        int i35 = bVar2.f6994c - 1;
        int i36 = 0;
        int i37 = -1;
        while (i34 > 0) {
            if (i34 == 6) {
                i34--;
            }
            while (i35 >= 0 && i35 < bVar2.f6994c) {
                for (int i38 = 0; i38 < 2; i38++) {
                    int i39 = i34 - i38;
                    if (f(bVar2.f(i39, i35))) {
                        if (i36 < aVar.f31090H) {
                            zD = aVar.d(i36);
                            i36++;
                        } else {
                            zD = false;
                        }
                        if (i8 != -1) {
                            switch (i8) {
                                case 0:
                                    i9 = (i35 + i39) & 1;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 1:
                                    i9 = i35 & 1;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 2:
                                    i9 = i39 % 3;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 3:
                                    i9 = (i35 + i39) % 3;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 4:
                                    i9 = ((i39 / 3) + (i35 / 2)) & 1;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 5:
                                    int i40 = i35 * i39;
                                    i9 = (i40 % 3) + (i40 & 1);
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 6:
                                    int i41 = i35 * i39;
                                    i10 = i41 & 1;
                                    i11 = i41 % 3;
                                    i9 = (i11 + i10) & 1;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                case 7:
                                    i11 = (i35 * i39) % 3;
                                    i10 = (i35 + i39) & 1;
                                    i9 = (i11 + i10) & 1;
                                    if (i9 == 0) {
                                        zD = !zD;
                                    }
                                    break;
                                default:
                                    throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i8)));
                            }
                        }
                        bVar2.h(zD, i39, i35);
                    }
                }
                i35 += i37;
            }
            i37 = -i37;
            i35 += i37;
            i34 -= 2;
        }
        if (i36 == aVar.f31090H) {
            return;
        }
        throw new q("Not all bits consumed: " + i36 + '/' + aVar.f31090H);
    }

    public static int b(int i8, int i9) {
        if (i9 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iNumberOfLeadingZeros = Integer.numberOfLeadingZeros(i9);
        int i10 = 32 - iNumberOfLeadingZeros;
        int iNumberOfLeadingZeros2 = i8 << (31 - iNumberOfLeadingZeros);
        while (32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2) >= i10) {
            iNumberOfLeadingZeros2 ^= i9 << ((32 - Integer.numberOfLeadingZeros(iNumberOfLeadingZeros2)) - i10);
        }
        return iNumberOfLeadingZeros2;
    }

    public static void c(int i8, int i9, V.b bVar) throws q {
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = i8 + i10;
            if (!f(bVar.f(i11, i9))) {
                throw new q();
            }
            bVar.g(i11, i9, 0);
        }
    }

    public static void d(int i8, int i9, V.b bVar) {
        for (int i10 = 0; i10 < 7; i10++) {
            int[] iArr = f4955b[i10];
            for (int i11 = 0; i11 < 7; i11++) {
                bVar.g(i8 + i11, i9 + i10, iArr[i11]);
            }
        }
    }

    public static void e(int i8, int i9, V.b bVar) throws q {
        for (int i10 = 0; i10 < 7; i10++) {
            int i11 = i9 + i10;
            if (!f(bVar.f(i8, i11))) {
                throw new q();
            }
            bVar.g(i8, i11, 0);
        }
    }

    public static boolean f(int i8) {
        return i8 == -1;
    }
}
