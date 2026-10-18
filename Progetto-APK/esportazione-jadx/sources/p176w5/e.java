package p176w5;

import java.lang.reflect.Array;
import p018c1.d;
import p130q5.g;
import p130q5.i;

/* JADX INFO: loaded from: classes2.dex */
public final class e extends d {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final byte[] f31107K = new byte[0];

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public byte[] f31108H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int[] f31109I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public b f31110J;

    public e(g gVar) {
        super(gVar);
        this.f31108H = f31107K;
        this.f31109I = new int[32];
    }

    public static int n(int[] iArr) throws i {
        int length = iArr.length;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            int i12 = iArr[i11];
            if (i12 > i8) {
                i10 = i11;
                i8 = i12;
            }
            if (i12 > i9) {
                i9 = i12;
            }
        }
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < length; i15++) {
            int i16 = i15 - i10;
            int i17 = iArr[i15] * i16 * i16;
            if (i17 > i14) {
                i13 = i15;
                i14 = i17;
            }
        }
        if (i10 <= i13) {
            int i18 = i10;
            i10 = i13;
            i13 = i18;
        }
        if (i10 - i13 <= length / 16) {
            throw i.f29623I;
        }
        int i19 = i10 - 1;
        int i20 = i19;
        int i21 = -1;
        while (i19 > i13) {
            int i22 = i19 - i13;
            int i23 = (i9 - iArr[i19]) * (i10 - i19) * i22 * i22;
            if (i23 > i21) {
                i20 = i19;
                i21 = i23;
            }
            i19--;
        }
        return i20 << 3;
    }

    @Override // p018c1.d
    public final e f(g gVar) {
        return new e(gVar);
    }

    @Override // p018c1.d
    public final b g() throws i {
        int[] iArr;
        int i8;
        b bVar = this.f31110J;
        if (bVar != null) {
            return bVar;
        }
        g gVar = (g) this.f10616G;
        int i9 = gVar.f29618a;
        if (i9 < 40 || (i8 = gVar.f29619b) < 40) {
            int i10 = gVar.f29619b;
            b bVar2 = new b(i9, i10);
            if (this.f31108H.length < i9) {
                this.f31108H = new byte[i9];
            }
            int i11 = 0;
            while (true) {
                iArr = this.f31109I;
                if (i11 >= 32) {
                    break;
                }
                iArr[i11] = 0;
                i11++;
            }
            for (int i12 = 1; i12 < 5; i12++) {
                byte[] bArrB = gVar.b((i10 * i12) / 5, this.f31108H);
                int i13 = (i9 << 2) / 5;
                for (int i14 = i9 / 5; i14 < i13; i14++) {
                    int i15 = (bArrB[i14] & 255) >> 3;
                    iArr[i15] = iArr[i15] + 1;
                }
            }
            int iN = n(iArr);
            byte[] bArrA = gVar.a();
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = i16 * i9;
                for (int i18 = 0; i18 < i9; i18++) {
                    if ((bArrA[i17 + i18] & 255) < iN) {
                        bVar2.f(i18, i16);
                    }
                }
            }
            this.f31110J = bVar2;
        } else {
            byte[] bArrA2 = gVar.a();
            int i19 = i9 >> 3;
            if ((i9 & 7) != 0) {
                i19++;
            }
            int i20 = i8 >> 3;
            if ((i8 & 7) != 0) {
                i20++;
            }
            int i21 = i8 - 8;
            int i22 = i9 - 8;
            int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i20, i19);
            int i23 = 0;
            while (true) {
                int i24 = 8;
                if (i23 >= i20) {
                    break;
                }
                int i25 = i23 << 3;
                if (i25 > i21) {
                    i25 = i21;
                }
                int i26 = 0;
                while (i26 < i19) {
                    int i27 = i26 << 3;
                    if (i27 > i22) {
                        i27 = i22;
                    }
                    int i28 = (i25 * i9) + i27;
                    int i29 = 0;
                    int i30 = 0;
                    int i31 = 0;
                    int i32 = 255;
                    while (i29 < i24) {
                        int i33 = i31;
                        int i34 = i32;
                        int i35 = 0;
                        while (i35 < i24) {
                            int i36 = i25;
                            int i37 = bArrA2[i28 + i35] & 255;
                            i30 += i37;
                            int i38 = i34;
                            i34 = i37 < i38 ? i37 : i38;
                            if (i37 > i33) {
                                i33 = i37;
                            }
                            i35++;
                            i25 = i36;
                            i24 = 8;
                        }
                        int i39 = i25;
                        int i40 = i34;
                        if (i33 - i40 > 24) {
                            while (true) {
                                i29++;
                                i28 += i9;
                                if (i29 < 8) {
                                    int i41 = 0;
                                    for (int i42 = 8; i41 < i42; i42 = 8) {
                                        i30 += bArrA2[i28 + i41] & 255;
                                        i41++;
                                        i33 = i33;
                                    }
                                }
                            }
                        }
                        i31 = i33;
                        i29++;
                        i28 += i9;
                        i32 = i40;
                        i25 = i39;
                        i24 = 8;
                    }
                    int i43 = i25;
                    int i44 = i30 >> 6;
                    int i45 = i32;
                    if (i31 - i45 <= 24) {
                        i44 = i45 / 2;
                        if (i23 > 0 && i26 > 0) {
                            int[] iArr3 = iArr2[i23 - 1];
                            int i46 = i26 - 1;
                            int i47 = (((iArr2[i23][i46] * 2) + iArr3[i26]) + iArr3[i46]) / 4;
                            if (i45 < i47) {
                                i44 = i47;
                            }
                        }
                    }
                    iArr2[i23][i26] = i44;
                    i26++;
                    i25 = i43;
                    i24 = 8;
                }
                i23++;
            }
            b bVar3 = new b(i9, i8);
            int i48 = 0;
            while (i48 < i20) {
                int i49 = i48 << 3;
                if (i49 > i21) {
                    i49 = i21;
                }
                int iMin = i48 < 2 ? 2 : Math.min(i48, i20 - 3);
                int i50 = 0;
                while (i50 < i19) {
                    int i51 = i50 << 3;
                    if (i51 > i22) {
                        i51 = i22;
                    }
                    int iMin2 = i50 < 2 ? 2 : Math.min(i50, i19 - 3);
                    int i52 = i19;
                    int i53 = -2;
                    int i54 = 0;
                    for (int i55 = 2; i53 <= i55; i55 = 2) {
                        int[] iArr4 = iArr2[iMin + i53];
                        i54 = iArr4[iMin2 - 2] + iArr4[iMin2 - 1] + iArr4[iMin2] + iArr4[iMin2 + 1] + iArr4[iMin2 + 2] + i54;
                        i53++;
                    }
                    int i56 = i54 / 25;
                    int i57 = (i49 * i9) + i51;
                    int i58 = iMin;
                    int i59 = 0;
                    while (true) {
                        if (i59 < 8) {
                            int i60 = i20;
                            int i61 = 0;
                            for (int i62 = 8; i61 < i62; i62 = 8) {
                                byte[] bArr = bArrA2;
                                if ((bArrA2[i57 + i61] & 255) <= i56) {
                                    bVar3.f(i51 + i61, i49 + i59);
                                }
                                i61++;
                                bArrA2 = bArr;
                            }
                            i59++;
                            i57 += i9;
                            i20 = i60;
                        }
                    }
                    i50++;
                    i19 = i52;
                    iMin = i58;
                }
                i48++;
            }
            this.f31110J = bVar3;
        }
        return this.f31110J;
    }

    @Override // p018c1.d
    public final a h(int i8, a aVar) throws i {
        int[] iArr;
        g gVar = (g) this.f10616G;
        int i9 = gVar.f29618a;
        if (aVar == null || aVar.f31090H < i9) {
            aVar = new a(i9);
        } else {
            int length = aVar.f31089G.length;
            for (int i10 = 0; i10 < length; i10++) {
                aVar.f31089G[i10] = 0;
            }
        }
        if (this.f31108H.length < i9) {
            this.f31108H = new byte[i9];
        }
        int i11 = 0;
        while (true) {
            iArr = this.f31109I;
            if (i11 >= 32) {
                break;
            }
            iArr[i11] = 0;
            i11++;
        }
        byte[] bArrB = gVar.b(i8, this.f31108H);
        for (int i12 = 0; i12 < i9; i12++) {
            int i13 = (bArrB[i12] & 255) >> 3;
            iArr[i13] = iArr[i13] + 1;
        }
        int iN = n(iArr);
        if (i9 < 3) {
            for (int i14 = 0; i14 < i9; i14++) {
                if ((bArrB[i14] & 255) < iN) {
                    aVar.j(i14);
                }
            }
        } else {
            int i15 = 1;
            int i16 = bArrB[0] & 255;
            int i17 = bArrB[1] & 255;
            while (i15 < i9 - 1) {
                int i18 = i15 + 1;
                int i19 = bArrB[i18] & 255;
                if ((((i17 << 2) - i16) - i19) / 2 < iN) {
                    aVar.j(i15);
                }
                i16 = i17;
                i15 = i18;
                i17 = i19;
            }
        }
        return aVar;
    }
}
