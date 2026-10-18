package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
import p039f.AbstractC2987b;

/* JADX INFO: loaded from: classes.dex */
public final class UA extends AbstractC2229xA {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final UA f16803M = new UA(null, new Object[0], 0);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final transient Object f16804J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object[] f16805K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int f16806L;

    public UA(Object obj, Object[] objArr, int i8) {
        this.f16804J = obj;
        this.f16805K = objArr;
        this.f16806L = i8;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0172  */
    /* JADX WARN: Code duplicated, block: B:75:0x017a  */
    /* JADX WARN: Code duplicated, block: B:76:0x018f  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [int[]] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v17 */
    /* JADX WARN: Type inference failed for: r8v18, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v6 */
    public static UA c(int i8, Object[] objArr, C1294f8 c1294f8) {
        short[] sArr;
        char c8;
        char c9;
        Object[] objArr2;
        ?? r8;
        ?? r9;
        boolean z7;
        ?? r10;
        Object[] objArr3;
        C2125vA c2125vA;
        int i9 = i8;
        Object[] objArrCopyOf = objArr;
        byte b8 = -1;
        if (i9 == 0) {
            return f16803M;
        }
        C2125vA c2125vA2 = null;
        ?? r11 = 0;
        C2125vA c2125vA3 = null;
        if (i9 == 1) {
            Objects.requireNonNull(objArrCopyOf[0]);
            Objects.requireNonNull(objArrCopyOf[1]);
            return new UA(null, objArrCopyOf, 1);
        }
        AbstractC2987b.o0(i9, objArrCopyOf.length >> 1);
        int iQ = AbstractC2333zA.q(i8);
        if (i9 != 1) {
            int i10 = iQ - 1;
            if (iQ <= 128) {
                byte[] bArr = new byte[iQ];
                Arrays.fill(bArr, (byte) -1);
                int i11 = 0;
                for (int i12 = 0; i12 < i9; i12++) {
                    int i13 = i11 + i11;
                    int i14 = i12 + i12;
                    Object obj = objArrCopyOf[i14];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArrCopyOf[i14 ^ 1];
                    Objects.requireNonNull(obj2);
                    int iJ = p113o3.r.j(obj.hashCode());
                    while (true) {
                        int i15 = iJ & i10;
                        int i16 = bArr[i15] & 255;
                        if (i16 == 255) {
                            bArr[i15] = (byte) i13;
                            if (i11 < i12) {
                                objArrCopyOf[i13] = obj;
                                objArrCopyOf[i13 ^ 1] = obj2;
                            }
                            i11++;
                            break;
                        }
                        if (obj.equals(objArrCopyOf[i16 == true ? 1 : 0])) {
                            int i17 = ~i16;
                            Object obj3 = objArrCopyOf[i17 == true ? 1 : 0];
                            Objects.requireNonNull(obj3);
                            C2125vA c2125vA4 = new C2125vA(obj, obj2, obj3);
                            objArrCopyOf[i17 == true ? 1 : 0] = obj2;
                            c2125vA3 = c2125vA4;
                            break;
                        }
                        iJ = i15 + 1;
                    }
                }
                if (i11 == i9) {
                    r11 = bArr;
                } else {
                    c9 = 2;
                    objArr2 = new Object[]{bArr, Integer.valueOf(i11), c2125vA3};
                    r8 = objArr2;
                    c8 = 0;
                    r9 = r8;
                }
            } else {
                if (iQ <= 32768) {
                    sArr = new short[iQ];
                    Arrays.fill(sArr, (short) -1);
                    int i18 = 0;
                    for (int i19 = 0; i19 < i9; i19++) {
                        int i20 = i18 + i18;
                        int i21 = i19 + i19;
                        Object obj4 = objArrCopyOf[i21];
                        Objects.requireNonNull(obj4);
                        Object obj5 = objArrCopyOf[i21 ^ 1];
                        Objects.requireNonNull(obj5);
                        int iJ2 = p113o3.r.j(obj4.hashCode());
                        while (true) {
                            int i22 = iJ2 & i10;
                            char c10 = (char) sArr[i22];
                            if (c10 == 65535) {
                                sArr[i22] = (short) i20;
                                if (i18 < i19) {
                                    objArrCopyOf[i20] = obj4;
                                    objArrCopyOf[i20 ^ 1] = obj5;
                                }
                                i18++;
                                break;
                            }
                            if (obj4.equals(objArrCopyOf[c10])) {
                                int i23 = c10 ^ 1;
                                Object obj6 = objArrCopyOf[i23 == true ? 1 : 0];
                                Objects.requireNonNull(obj6);
                                C2125vA c2125vA5 = new C2125vA(obj4, obj5, obj6);
                                objArrCopyOf[i23 == true ? 1 : 0] = obj5;
                                c2125vA2 = c2125vA5;
                                break;
                            }
                            iJ2 = i22 + 1;
                        }
                    }
                    if (i18 != i9) {
                        c9 = 2;
                        objArr2 = new Object[]{sArr, Integer.valueOf(i18), c2125vA2};
                        r8 = objArr2;
                        c8 = 0;
                        r9 = r8;
                    }
                } else {
                    sArr = new int[iQ];
                    Arrays.fill((int[]) sArr, -1);
                    C2125vA c2125vA6 = null;
                    int i24 = 0;
                    int i25 = 0;
                    while (i24 < i9) {
                        int i26 = i25 + i25;
                        int i27 = i24 + i24;
                        Object obj7 = objArrCopyOf[i27];
                        Objects.requireNonNull(obj7);
                        Object obj8 = objArrCopyOf[i27 ^ 1];
                        Objects.requireNonNull(obj8);
                        int iJ3 = p113o3.r.j(obj7.hashCode());
                        while (true) {
                            int i28 = iJ3 & i10;
                            ?? r15 = sArr[i28];
                            if (r15 == b8) {
                                sArr[i28] = i26;
                                if (i25 < i24) {
                                    objArrCopyOf[i26] = obj7;
                                    objArrCopyOf[i26 ^ 1] = obj8;
                                }
                                i25++;
                                break;
                            }
                            if (obj7.equals(objArrCopyOf[r15])) {
                                int i29 = r15 ^ 1;
                                Object obj9 = objArrCopyOf[i29 == true ? 1 : 0];
                                Objects.requireNonNull(obj9);
                                c2125vA6 = new C2125vA(obj7, obj8, obj9);
                                objArrCopyOf[i29 == true ? 1 : 0] = obj8;
                                break;
                            }
                            iJ3 = i28 + 1;
                            b8 = -1;
                        }
                        i24++;
                        b8 = -1;
                    }
                    if (i25 != i9) {
                        c8 = 0;
                        c9 = 2;
                        r9 = new Object[]{sArr, Integer.valueOf(i25), c2125vA6};
                    }
                }
                r11 = sArr;
            }
            z7 = r9 instanceof Object[];
            r10 = r9;
            if (z7) {
                objArr3 = (Object[]) r9;
                c2125vA = (C2125vA) objArr3[c9];
                if (c1294f8 != null) {
                    throw c2125vA.a();
                }
                c1294f8.f18728J = c2125vA;
                Object obj10 = objArr3[c8];
                int iIntValue = ((Integer) objArr3[1]).intValue();
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
                r10 = obj10;
                i9 = iIntValue;
            }
            return new UA(r10, objArrCopyOf, i9);
        }
        Objects.requireNonNull(objArrCopyOf[0]);
        Objects.requireNonNull(objArrCopyOf[1]);
        i9 = 1;
        c9 = 2;
        r8 = r11;
        c8 = 0;
        r9 = r8;
        z7 = r9 instanceof Object[];
        r10 = r9;
        if (z7) {
            objArr3 = (Object[]) r9;
            c2125vA = (C2125vA) objArr3[c9];
            if (c1294f8 != null) {
                throw c2125vA.a();
            }
            c1294f8.f18728J = c2125vA;
            Object obj11 = objArr3[c8];
            int iIntValue2 = ((Integer) objArr3[1]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue2 + iIntValue2);
            r10 = obj11;
            i9 = iIntValue2;
        }
        return new UA(r10, objArrCopyOf, i9);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.ads.AbstractC2229xA, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i8 = this.f16806L;
            Object[] objArr = this.f16805K;
            if (i8 == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.f16804J;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iJ = p113o3.r.j(obj.hashCode());
                    while (true) {
                        int i9 = iJ & length;
                        int i10 = bArr[i9] & 255;
                        if (i10 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i10])) {
                            obj2 = objArr[i10 ^ 1];
                        } else {
                            iJ = i9 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iJ2 = p113o3.r.j(obj.hashCode());
                    while (true) {
                        int i11 = iJ2 & length2;
                        char c8 = (char) sArr[i11];
                        if (c8 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c8])) {
                            obj2 = objArr[c8 ^ 1];
                        } else {
                            iJ2 = i11 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iJ3 = p113o3.r.j(obj.hashCode());
                    while (true) {
                        int i12 = iJ3 & length3;
                        int i13 = iArr[i12];
                        if (i13 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iJ3 = i12 + 1;
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
        return this.f16806L;
    }
}
