package z4;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class i0 extends J {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final i0 f31862M = new i0(null, new Object[0], 0);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object f31863J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f31864K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f31865L;

    public i0(Object obj, Object[] objArr, int i8) {
        this.f31863J = obj;
        this.f31864K = objArr;
        this.f31865L = i8;
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0179  */
    /* JADX WARN: Code duplicated, block: B:74:0x0181  */
    /* JADX WARN: Code duplicated, block: B:75:0x0197  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v22 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v8 */
    public static i0 e(int i8, Object[] objArr, p117p0.C c8) {
        short[] sArr;
        char c9;
        ?? r7;
        ?? r8;
        boolean z7;
        ?? r9;
        Object[] objArr2;
        I i9;
        int i10 = i8;
        Object[] objArrCopyOf = objArr;
        if (i10 == 0) {
            return f31862M;
        }
        I i11 = null;
        ?? r10 = 0;
        I i12 = null;
        I i13 = null;
        if (i10 == 1) {
            Objects.requireNonNull(objArrCopyOf[0]);
            Objects.requireNonNull(objArrCopyOf[1]);
            return new i0(null, objArrCopyOf, 1);
        }
        p190y4.k.t(i10, objArrCopyOf.length >> 1);
        int iP = L.p(i8);
        if (i10 != 1) {
            int i14 = iP - 1;
            byte b8 = -1;
            if (iP <= 128) {
                byte[] bArr = new byte[iP];
                Arrays.fill(bArr, (byte) -1);
                int i15 = 0;
                for (int i16 = 0; i16 < i10; i16++) {
                    int i17 = i16 * 2;
                    int i18 = i15 * 2;
                    Object obj = objArrCopyOf[i17];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArrCopyOf[i17 ^ 1];
                    Objects.requireNonNull(obj2);
                    int iG = a7.b.g(obj.hashCode());
                    while (true) {
                        int i19 = iG & i14;
                        int i20 = bArr[i19] & 255;
                        if (i20 == 255) {
                            bArr[i19] = (byte) i18;
                            if (i15 < i16) {
                                objArrCopyOf[i18] = obj;
                                objArrCopyOf[i18 ^ 1] = obj2;
                            }
                            i15++;
                            break;
                        }
                        if (obj.equals(objArrCopyOf[i20 == true ? 1 : 0])) {
                            int i21 = ~i20;
                            Object obj3 = objArrCopyOf[i21 == true ? 1 : 0];
                            Objects.requireNonNull(obj3);
                            I i22 = new I(obj, obj2, obj3);
                            objArrCopyOf[i21 == true ? 1 : 0] = obj2;
                            i12 = i22;
                            break;
                        }
                        iG = i19 + 1;
                    }
                }
                if (i15 == i10) {
                    r10 = bArr;
                } else {
                    c9 = 2;
                    r7 = new Object[]{bArr, Integer.valueOf(i15), i12};
                    r8 = r7;
                }
            } else if (iP <= 32768) {
                sArr = new short[iP];
                Arrays.fill(sArr, (short) -1);
                int i23 = 0;
                for (int i24 = 0; i24 < i10; i24++) {
                    int i25 = i24 * 2;
                    int i26 = i23 * 2;
                    Object obj4 = objArrCopyOf[i25];
                    Objects.requireNonNull(obj4);
                    Object obj5 = objArrCopyOf[i25 ^ 1];
                    Objects.requireNonNull(obj5);
                    int iG2 = a7.b.g(obj4.hashCode());
                    while (true) {
                        int i27 = iG2 & i14;
                        int i28 = sArr[i27] & 65535;
                        if (i28 == 65535) {
                            sArr[i27] = (short) i26;
                            if (i23 < i24) {
                                objArrCopyOf[i26] = obj4;
                                objArrCopyOf[i26 ^ 1] = obj5;
                            }
                            i23++;
                            break;
                        }
                        if (obj4.equals(objArrCopyOf[i28 == true ? 1 : 0])) {
                            int i29 = ~i28;
                            Object obj6 = objArrCopyOf[i29 == true ? 1 : 0];
                            Objects.requireNonNull(obj6);
                            i13 = new I(obj4, obj5, obj6);
                            objArrCopyOf[i29 == true ? 1 : 0] = obj5;
                            break;
                        }
                        iG2 = i27 + 1;
                    }
                }
                if (i23 != i10) {
                    c9 = 2;
                    r7 = new Object[]{sArr, Integer.valueOf(i23), i13};
                    r8 = r7;
                }
                r10 = sArr;
            } else {
                sArr = new int[iP];
                Arrays.fill((int[]) sArr, -1);
                int i30 = 0;
                int i31 = 0;
                while (i30 < i10) {
                    int i32 = i30 * 2;
                    int i33 = i31 * 2;
                    Object obj7 = objArrCopyOf[i32];
                    Objects.requireNonNull(obj7);
                    Object obj8 = objArrCopyOf[i32 ^ 1];
                    Objects.requireNonNull(obj8);
                    int iG3 = a7.b.g(obj7.hashCode());
                    while (true) {
                        int i34 = iG3 & i14;
                        ?? r15 = sArr[i34];
                        if (r15 == b8) {
                            sArr[i34] = i33;
                            if (i31 < i30) {
                                objArrCopyOf[i33] = obj7;
                                objArrCopyOf[i33 ^ 1] = obj8;
                            }
                            i31++;
                            break;
                        }
                        if (obj7.equals(objArrCopyOf[r15])) {
                            int i35 = r15 ^ 1;
                            Object obj9 = objArrCopyOf[i35 == true ? 1 : 0];
                            Objects.requireNonNull(obj9);
                            i11 = new I(obj7, obj8, obj9);
                            objArrCopyOf[i35 == true ? 1 : 0] = obj8;
                            break;
                        }
                        iG3 = i34 + 1;
                        b8 = -1;
                    }
                    i30++;
                    b8 = -1;
                }
                if (i31 != i10) {
                    c9 = 2;
                    r7 = new Object[]{sArr, Integer.valueOf(i31), i11};
                    r8 = r7;
                }
                r10 = sArr;
            }
            z7 = r8 instanceof Object[];
            r9 = r8;
            if (z7) {
                objArr2 = (Object[]) r8;
                i9 = (I) objArr2[c9];
                if (c8 != null) {
                    throw i9.a();
                }
                c8.f28026K = i9;
                Object obj10 = objArr2[0];
                int iIntValue = ((Integer) objArr2[1]).intValue();
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue * 2);
                r9 = obj10;
                i10 = iIntValue;
            }
            return new i0(r9, objArrCopyOf, i10);
        }
        Objects.requireNonNull(objArrCopyOf[0]);
        Objects.requireNonNull(objArrCopyOf[1]);
        c9 = 2;
        r8 = r10;
        z7 = r8 instanceof Object[];
        r9 = r8;
        if (z7) {
            objArr2 = (Object[]) r8;
            i9 = (I) objArr2[c9];
            if (c8 != null) {
                throw i9.a();
            }
            c8.f28026K = i9;
            Object obj11 = objArr2[0];
            int iIntValue2 = ((Integer) objArr2[1]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue2 * 2);
            r9 = obj11;
            i10 = iIntValue2;
        }
        return new i0(r9, objArrCopyOf, i10);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // z4.J, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.f31864K;
            if (this.f31865L == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.f31863J;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iG = a7.b.g(obj.hashCode());
                    while (true) {
                        int i8 = iG & length;
                        int i9 = bArr[i8] & 255;
                        if (i9 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i9])) {
                            obj2 = objArr[i9 ^ 1];
                        } else {
                            iG = i8 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iG2 = a7.b.g(obj.hashCode());
                    while (true) {
                        int i10 = iG2 & length2;
                        int i11 = sArr[i10] & 65535;
                        if (i11 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[i11])) {
                            obj2 = objArr[i11 ^ 1];
                        } else {
                            iG2 = i10 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iG3 = a7.b.g(obj.hashCode());
                    while (true) {
                        int i12 = iG3 & length3;
                        int i13 = iArr[i12];
                        if (i13 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iG3 = i12 + 1;
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
        return this.f31865L;
    }
}
