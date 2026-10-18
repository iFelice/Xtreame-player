package com.google.android.gms.internal.pal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class Z2 extends S2 {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final Z2 f23714M = new Z2(null, new Object[0], 0);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object f23715J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f23716K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f23717L;

    public Z2(Object obj, Object[] objArr, int i8) {
        this.f23715J = obj;
        this.f23716K = objArr;
        this.f23717L = i8;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x0194  */
    /* JADX WARN: Code duplicated, block: B:81:0x019c  */
    /* JADX WARN: Code duplicated, block: B:82:0x01b1  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v6 */
    public static Z2 b(int i8, Object[] objArr, R2 r7) {
        int iHighestOneBit;
        short[] sArr;
        char c8;
        char c9;
        Object[] objArr2;
        ?? r8;
        boolean z7;
        ?? r9;
        Object[] objArr3;
        Q2 q7;
        int i9 = i8;
        Object[] objArrCopyOf = objArr;
        byte b8 = -1;
        if (i9 == 0) {
            return f23714M;
        }
        Q2 q8 = null;
        ?? r10 = 0;
        Q2 q9 = null;
        if (i9 == 1) {
            objArrCopyOf[0].getClass();
            objArrCopyOf[1].getClass();
            return new Z2(null, objArrCopyOf, 1);
        }
        AbstractC2864y4.J(i9, objArrCopyOf.length >> 1);
        int iMax = Math.max(i9, 2);
        if (iMax < 751619276) {
            iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
        } else {
            iHighestOneBit = 1073741824;
            if (iMax >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i9 != 1) {
            int i10 = iHighestOneBit - 1;
            if (iHighestOneBit <= 128) {
                byte[] bArr = new byte[iHighestOneBit];
                Arrays.fill(bArr, (byte) -1);
                int i11 = 0;
                for (int i12 = 0; i12 < i9; i12++) {
                    int i13 = i12 + i12;
                    int i14 = i11 + i11;
                    Object obj = objArrCopyOf[i13];
                    obj.getClass();
                    Object obj2 = objArrCopyOf[i13 ^ 1];
                    obj2.getClass();
                    int iB = AbstractC2864y4.b(obj.hashCode());
                    while (true) {
                        int i15 = iB & i10;
                        int i16 = bArr[i15] & 255;
                        if (i16 == 255) {
                            bArr[i15] = (byte) i14;
                            if (i11 < i12) {
                                objArrCopyOf[i14] = obj;
                                objArrCopyOf[i14 ^ 1] = obj2;
                            }
                            i11++;
                            break;
                        }
                        if (obj.equals(objArrCopyOf[i16 == true ? 1 : 0])) {
                            int i17 = ~i16;
                            Object obj3 = objArrCopyOf[i17 == true ? 1 : 0];
                            obj3.getClass();
                            Q2 q10 = new Q2(obj, obj2, obj3);
                            objArrCopyOf[i17 == true ? 1 : 0] = obj2;
                            q9 = q10;
                            break;
                        }
                        iB = i15 + 1;
                    }
                }
                if (i11 == i9) {
                    r10 = bArr;
                } else {
                    c9 = 2;
                    objArr2 = new Object[]{bArr, Integer.valueOf(i11), q9};
                    r8 = objArr2;
                    c8 = 0;
                }
            } else {
                if (iHighestOneBit <= 32768) {
                    sArr = new short[iHighestOneBit];
                    Arrays.fill(sArr, (short) -1);
                    int i18 = 0;
                    for (int i19 = 0; i19 < i9; i19++) {
                        int i20 = i19 + i19;
                        int i21 = i18 + i18;
                        Object obj4 = objArrCopyOf[i20];
                        obj4.getClass();
                        Object obj5 = objArrCopyOf[i20 ^ 1];
                        obj5.getClass();
                        int iB2 = AbstractC2864y4.b(obj4.hashCode());
                        while (true) {
                            int i22 = iB2 & i10;
                            char c10 = (char) sArr[i22];
                            if (c10 == 65535) {
                                sArr[i22] = (short) i21;
                                if (i18 < i19) {
                                    objArrCopyOf[i21] = obj4;
                                    objArrCopyOf[i21 ^ 1] = obj5;
                                }
                                i18++;
                                break;
                            }
                            if (obj4.equals(objArrCopyOf[c10])) {
                                int i23 = c10 ^ 1;
                                Object obj6 = objArrCopyOf[i23 == true ? 1 : 0];
                                obj6.getClass();
                                Q2 q11 = new Q2(obj4, obj5, obj6);
                                objArrCopyOf[i23 == true ? 1 : 0] = obj5;
                                q8 = q11;
                                break;
                            }
                            iB2 = i22 + 1;
                        }
                    }
                    if (i18 != i9) {
                        c9 = 2;
                        objArr2 = new Object[]{sArr, Integer.valueOf(i18), q8};
                        r8 = objArr2;
                        c8 = 0;
                    }
                } else {
                    sArr = new int[iHighestOneBit];
                    Arrays.fill((int[]) sArr, -1);
                    Q2 q12 = null;
                    int i24 = 0;
                    int i25 = 0;
                    while (i24 < i9) {
                        int i26 = i24 + i24;
                        int i27 = i25 + i25;
                        Object obj7 = objArrCopyOf[i26];
                        obj7.getClass();
                        Object obj8 = objArrCopyOf[i26 ^ 1];
                        obj8.getClass();
                        int iB3 = AbstractC2864y4.b(obj7.hashCode());
                        while (true) {
                            int i28 = iB3 & i10;
                            ?? r15 = sArr[i28];
                            if (r15 == b8) {
                                sArr[i28] = i27;
                                if (i25 < i24) {
                                    objArrCopyOf[i27] = obj7;
                                    objArrCopyOf[i27 ^ 1] = obj8;
                                }
                                i25++;
                                break;
                            }
                            if (obj7.equals(objArrCopyOf[r15])) {
                                int i29 = r15 ^ 1;
                                Object obj9 = objArrCopyOf[i29 == true ? 1 : 0];
                                obj9.getClass();
                                q12 = new Q2(obj7, obj8, obj9);
                                objArrCopyOf[i29 == true ? 1 : 0] = obj8;
                                break;
                            }
                            iB3 = i28 + 1;
                            b8 = -1;
                        }
                        i24++;
                        b8 = -1;
                    }
                    if (i25 != i9) {
                        c8 = 0;
                        c9 = 2;
                        r8 = new Object[]{sArr, Integer.valueOf(i25), q12};
                    }
                }
                r10 = sArr;
            }
            z7 = r8 instanceof Object[];
            r9 = r8;
            if (z7) {
                objArr3 = (Object[]) r8;
                q7 = (Q2) objArr3[c9];
                if (r7 != null) {
                    throw q7.a();
                }
                r7.f23643c = q7;
                Object obj10 = objArr3[c8];
                int iIntValue = ((Integer) objArr3[1]).intValue();
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
                r9 = obj10;
                i9 = iIntValue;
            }
            return new Z2(r9, objArrCopyOf, i9);
        }
        objArrCopyOf[0].getClass();
        objArrCopyOf[1].getClass();
        c8 = 0;
        c9 = 2;
        r8 = r10;
        z7 = r8 instanceof Object[];
        r9 = r8;
        if (z7) {
            objArr3 = (Object[]) r8;
            q7 = (Q2) objArr3[c9];
            if (r7 != null) {
                throw q7.a();
            }
            r7.f23643c = q7;
            Object obj11 = objArr3[c8];
            int iIntValue2 = ((Integer) objArr3[1]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue2 + iIntValue2);
            r9 = obj11;
            i9 = iIntValue2;
        }
        return new Z2(r9, objArrCopyOf, i9);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.pal.S2, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.f23716K;
            if (this.f23717L == 1) {
                Object obj3 = objArr[0];
                obj3.getClass();
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    obj2.getClass();
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.f23715J;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iB = AbstractC2864y4.b(obj.hashCode());
                    while (true) {
                        int i8 = iB & length;
                        int i9 = bArr[i8] & 255;
                        if (i9 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i9])) {
                            obj2 = objArr[i9 ^ 1];
                        } else {
                            iB = i8 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iB2 = AbstractC2864y4.b(obj.hashCode());
                    while (true) {
                        int i10 = iB2 & length2;
                        char c8 = (char) sArr[i10];
                        if (c8 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c8])) {
                            obj2 = objArr[c8 ^ 1];
                        } else {
                            iB2 = i10 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iB3 = AbstractC2864y4.b(obj.hashCode());
                    while (true) {
                        int i11 = iB3 & length3;
                        int i12 = iArr[i11];
                        if (i12 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i12])) {
                            obj2 = objArr[i12 ^ 1];
                        } else {
                            iB3 = i11 + 1;
                        }
                    }
                    obj2 = null;
                }
            }
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f23717L;
    }
}
