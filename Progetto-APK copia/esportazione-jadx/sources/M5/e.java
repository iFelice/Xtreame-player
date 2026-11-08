package M5;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import p130q5.p;

/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final d f4824f = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p176w5.b f4825a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f4827c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p f4829e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f4826b = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f4828d = new int[5];

    public e(p176w5.b bVar, p pVar) {
        this.f4825a = bVar;
        this.f4829e = pVar;
    }

    public static float a(int[] iArr, int i8) {
        return ((i8 - iArr[4]) - iArr[3]) - (iArr[2] / 2.0f);
    }

    public static boolean b(int[] iArr) {
        int i8 = 0;
        for (int i9 = 0; i9 < 5; i9++) {
            int i10 = iArr[i9];
            if (i10 == 0) {
                return false;
            }
            i8 += i10;
        }
        if (i8 < 7) {
            return false;
        }
        float f8 = i8 / 7.0f;
        float f9 = f8 / 2.0f;
        return Math.abs(f8 - ((float) iArr[0])) < f9 && Math.abs(f8 - ((float) iArr[1])) < f9 && Math.abs((f8 * 3.0f) - ((float) iArr[2])) < 3.0f * f9 && Math.abs(f8 - ((float) iArr[3])) < f9 && Math.abs(f8 - ((float) iArr[4])) < f9;
    }

    public static double e(c cVar, c cVar2) {
        double d6 = cVar.f29645a - cVar2.f29645a;
        double d8 = cVar.f29646b - cVar2.f29646b;
        return (d8 * d8) + (d6 * d6);
    }

    /* JADX WARN: Code duplicated, block: B:70:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:9:0x003e  */
    public final boolean c(int i8, int i9, int[] iArr) {
        float fA;
        float fA2;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        int iA = (int) a(iArr, i9);
        int i15 = iArr[2];
        p176w5.b bVar = this.f4825a;
        int i16 = bVar.f31092H;
        int[] iArr2 = this.f4828d;
        Arrays.fill(iArr2, 0);
        int i17 = i8;
        while (i17 >= 0 && bVar.b(iA, i17)) {
            iArr2[2] = iArr2[2] + 1;
            i17--;
        }
        if (i17 < 0) {
            fA = Float.NaN;
        } else {
            while (i17 >= 0 && !bVar.b(iA, i17)) {
                int i18 = iArr2[1];
                if (i18 > i15) {
                    break;
                }
                iArr2[1] = i18 + 1;
                i17--;
            }
            if (i17 < 0 || iArr2[1] > i15) {
                fA = Float.NaN;
            } else {
                while (i17 >= 0 && bVar.b(iA, i17)) {
                    int i19 = iArr2[0];
                    if (i19 > i15) {
                        break;
                    }
                    iArr2[0] = i19 + 1;
                    i17--;
                }
                if (iArr2[0] > i15) {
                    fA = Float.NaN;
                } else {
                    int i20 = i8 + 1;
                    while (i20 < i16 && bVar.b(iA, i20)) {
                        iArr2[2] = iArr2[2] + 1;
                        i20++;
                    }
                    if (i20 == i16) {
                        fA = Float.NaN;
                    } else {
                        while (i20 < i16 && !bVar.b(iA, i20)) {
                            int i21 = iArr2[3];
                            if (i21 >= i15) {
                                break;
                            }
                            iArr2[3] = i21 + 1;
                            i20++;
                        }
                        if (i20 == i16 || iArr2[3] >= i15) {
                            fA = Float.NaN;
                        } else {
                            while (i20 < i16 && bVar.b(iA, i20)) {
                                int i22 = iArr2[4];
                                if (i22 >= i15) {
                                    break;
                                }
                                iArr2[4] = i22 + 1;
                                i20++;
                            }
                            int i23 = iArr2[4];
                            if (i23 < i15 && Math.abs(((((iArr2[0] + iArr2[1]) + iArr2[2]) + iArr2[3]) + i23) - i14) * 5 < i14 * 2 && b(iArr2)) {
                                fA = a(iArr2, i20);
                            } else {
                                fA = Float.NaN;
                            }
                        }
                    }
                }
            }
        }
        if (Float.isNaN(fA)) {
            return false;
        }
        int i24 = (int) fA;
        int i25 = iArr[2];
        Arrays.fill(iArr2, 0);
        int i26 = iA;
        while (i26 >= 0 && bVar.b(i26, i24)) {
            iArr2[2] = iArr2[2] + 1;
            i26--;
        }
        int i27 = bVar.f31091G;
        if (i26 < 0) {
            fA2 = Float.NaN;
        } else {
            while (i26 >= 0 && !bVar.b(i26, i24)) {
                int i28 = iArr2[1];
                if (i28 > i25) {
                    break;
                }
                iArr2[1] = i28 + 1;
                i26--;
            }
            if (i26 < 0 || iArr2[1] > i25) {
                fA2 = Float.NaN;
            } else {
                while (i26 >= 0 && bVar.b(i26, i24)) {
                    int i29 = iArr2[0];
                    if (i29 > i25) {
                        break;
                    }
                    iArr2[0] = i29 + 1;
                    i26--;
                }
                if (iArr2[0] > i25) {
                    fA2 = Float.NaN;
                } else {
                    int i30 = iA + 1;
                    while (i30 < i27 && bVar.b(i30, i24)) {
                        iArr2[2] = iArr2[2] + 1;
                        i30++;
                    }
                    if (i30 == i27) {
                        fA2 = Float.NaN;
                    } else {
                        while (i30 < i27 && !bVar.b(i30, i24)) {
                            int i31 = iArr2[3];
                            if (i31 >= i25) {
                                break;
                            }
                            iArr2[3] = i31 + 1;
                            i30++;
                        }
                        if (i30 == i27 || iArr2[3] >= i25) {
                            fA2 = Float.NaN;
                        } else {
                            while (i30 < i27 && bVar.b(i30, i24)) {
                                int i32 = iArr2[4];
                                if (i32 >= i25) {
                                    break;
                                }
                                iArr2[4] = i32 + 1;
                                i30++;
                            }
                            int i33 = iArr2[4];
                            if (i33 < i25 && Math.abs(((((iArr2[0] + iArr2[1]) + iArr2[2]) + iArr2[3]) + i33) - i14) * 5 < i14 && b(iArr2)) {
                                fA2 = a(iArr2, i30);
                            } else {
                                fA2 = Float.NaN;
                            }
                        }
                    }
                }
            }
        }
        if (Float.isNaN(fA2)) {
            return false;
        }
        int i34 = (int) fA2;
        Arrays.fill(iArr2, 0);
        int i35 = 0;
        while (i24 >= i35 && i34 >= i35 && bVar.b(i34 - i35, i24 - i35)) {
            iArr2[2] = iArr2[2] + 1;
            i35++;
        }
        if (iArr2[2] == 0) {
            return false;
        }
        while (i24 >= i35 && i34 >= i35 && !bVar.b(i34 - i35, i24 - i35)) {
            iArr2[1] = iArr2[1] + 1;
            i35++;
        }
        if (iArr2[1] == 0) {
            return false;
        }
        while (i24 >= i35 && i34 >= i35 && bVar.b(i34 - i35, i24 - i35)) {
            iArr2[0] = iArr2[0] + 1;
            i35++;
        }
        if (iArr2[0] == 0) {
            return false;
        }
        int i36 = 1;
        while (true) {
            int i37 = i24 + i36;
            i10 = bVar.f31092H;
            if (i37 >= i10 || (i13 = i34 + i36) >= i27 || !bVar.b(i13, i37)) {
                break;
            }
            iArr2[2] = iArr2[2] + 1;
            i36++;
        }
        while (true) {
            int i38 = i24 + i36;
            if (i38 >= i10 || (i12 = i34 + i36) >= i27 || bVar.b(i12, i38)) {
                break;
            }
            iArr2[3] = iArr2[3] + 1;
            i36++;
        }
        if (iArr2[3] == 0) {
            return false;
        }
        while (true) {
            int i39 = i24 + i36;
            if (i39 >= i10 || (i11 = i34 + i36) >= i27 || !bVar.b(i11, i39)) {
                break;
            }
            iArr2[4] = iArr2[4] + 1;
            i36++;
        }
        if (iArr2[4] == 0) {
            return false;
        }
        int i40 = 0;
        for (int i41 = 0; i41 < 5; i41++) {
            int i42 = iArr2[i41];
            if (i42 == 0) {
                return false;
            }
            i40 += i42;
        }
        if (i40 < 7) {
            return false;
        }
        float f8 = i40 / 7.0f;
        float f9 = f8 / 1.333f;
        if (Math.abs(f8 - iArr2[0]) >= f9 || Math.abs(f8 - iArr2[1]) >= f9 || Math.abs((f8 * 3.0f) - iArr2[2]) >= 3.0f * f9 || Math.abs(f8 - iArr2[3]) >= f9 || Math.abs(f8 - iArr2[4]) >= f9) {
            return false;
        }
        float f10 = i14 / 7.0f;
        int i43 = 0;
        while (true) {
            ArrayList arrayList = this.f4826b;
            if (i43 >= arrayList.size()) {
                c cVar = new c(fA2, fA, f10, 1);
                arrayList.add(cVar);
                p pVar = this.f4829e;
                if (pVar == null) {
                    break;
                }
                pVar.a(cVar);
                break;
            }
            c cVar2 = (c) arrayList.get(i43);
            if (Math.abs(fA - cVar2.f29646b) <= f10) {
                float f11 = cVar2.f29645a;
                if (Math.abs(fA2 - f11) <= f10) {
                    float f12 = cVar2.f4822c;
                    float fAbs = Math.abs(f10 - f12);
                    if (fAbs <= 1.0f || fAbs <= f12) {
                        int i44 = cVar2.f4823d;
                        int i45 = i44 + 1;
                        float f13 = i44;
                        float f14 = (f11 * f13) + fA2;
                        float f15 = i45;
                        arrayList.set(i43, new c(f14 / f15, ((cVar2.f29646b * f13) + fA) / f15, ((f13 * f12) + f10) / f15, i45));
                        break;
                    }
                } else {
                    continue;
                }
            }
            i43++;
        }
        return true;
    }

    public final boolean d() {
        ArrayList<c> arrayList = this.f4826b;
        int size = arrayList.size();
        float fAbs = 0.0f;
        int i8 = 0;
        float f8 = 0.0f;
        for (c cVar : arrayList) {
            if (cVar.f4823d >= 2) {
                i8++;
                f8 += cVar.f4822c;
            }
        }
        if (i8 < 3) {
            return false;
        }
        float f9 = f8 / size;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            fAbs += Math.abs(((c) it.next()).f4822c - f9);
        }
        return fAbs <= f8 * 0.05f;
    }
}
