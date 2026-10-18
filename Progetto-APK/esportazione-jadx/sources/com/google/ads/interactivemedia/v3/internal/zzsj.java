package com.google.ads.interactivemedia.v3.internal;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzsj extends zzrp {
    static final zzrp zza = new zzsj(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzsj(Object obj, Object[] objArr, int i8) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i8;
    }

    /* JADX WARN: Code duplicated, block: B:73:0x0185  */
    /* JADX WARN: Code duplicated, block: B:75:0x018d  */
    /* JADX WARN: Code duplicated, block: B:76:0x01a2  */
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
    public static zzsj zzl(int i8, Object[] objArr, zzro zzroVar) {
        short[] sArr;
        char c8;
        char c9;
        Object[] objArr2;
        ?? r8;
        ?? r9;
        boolean z7;
        ?? r10;
        Object[] objArr3;
        zzrn zzrnVar;
        int i9 = i8;
        Object[] objArrCopyOf = objArr;
        byte b8 = -1;
        if (i9 == 0) {
            return (zzsj) zza;
        }
        zzrn zzrnVar2 = null;
        ?? r11 = 0;
        zzrn zzrnVar3 = null;
        if (i9 == 1) {
            Object obj = objArrCopyOf[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArrCopyOf[1];
            Objects.requireNonNull(obj2);
            zzqt.zzb(obj, obj2);
            return new zzsj(null, objArrCopyOf, 1);
        }
        zzqh.zzb(i9, objArrCopyOf.length >> 1, "index");
        int iZzj = zzrr.zzj(i8);
        if (i9 != 1) {
            int i10 = iZzj - 1;
            if (iZzj <= 128) {
                byte[] bArr = new byte[iZzj];
                Arrays.fill(bArr, (byte) -1);
                int i11 = 0;
                for (int i12 = 0; i12 < i9; i12++) {
                    int i13 = i11 + i11;
                    int i14 = i12 + i12;
                    Object obj3 = objArrCopyOf[i14];
                    Objects.requireNonNull(obj3);
                    Object obj4 = objArrCopyOf[i14 ^ 1];
                    Objects.requireNonNull(obj4);
                    zzqt.zzb(obj3, obj4);
                    int iZzb = zzrg.zzb(obj3.hashCode());
                    while (true) {
                        int i15 = iZzb & i10;
                        int i16 = bArr[i15] & 255;
                        if (i16 == 255) {
                            bArr[i15] = (byte) i13;
                            if (i11 < i12) {
                                objArrCopyOf[i13] = obj3;
                                objArrCopyOf[i13 ^ 1] = obj4;
                            }
                            i11++;
                            break;
                        }
                        if (obj3.equals(objArrCopyOf[i16 == true ? 1 : 0])) {
                            int i17 = ~i16;
                            Object obj5 = objArrCopyOf[i17 == true ? 1 : 0];
                            Objects.requireNonNull(obj5);
                            zzrn zzrnVar4 = new zzrn(obj3, obj4, obj5);
                            objArrCopyOf[i17 == true ? 1 : 0] = obj4;
                            zzrnVar3 = zzrnVar4;
                            break;
                        }
                        iZzb = i15 + 1;
                    }
                }
                if (i11 == i9) {
                    r11 = bArr;
                } else {
                    c9 = 2;
                    objArr2 = new Object[]{bArr, Integer.valueOf(i11), zzrnVar3};
                    r8 = objArr2;
                    c8 = 0;
                    r9 = r8;
                }
            } else {
                if (iZzj <= 32768) {
                    sArr = new short[iZzj];
                    Arrays.fill(sArr, (short) -1);
                    int i18 = 0;
                    for (int i19 = 0; i19 < i9; i19++) {
                        int i20 = i18 + i18;
                        int i21 = i19 + i19;
                        Object obj6 = objArrCopyOf[i21];
                        Objects.requireNonNull(obj6);
                        Object obj7 = objArrCopyOf[i21 ^ 1];
                        Objects.requireNonNull(obj7);
                        zzqt.zzb(obj6, obj7);
                        int iZzb2 = zzrg.zzb(obj6.hashCode());
                        while (true) {
                            int i22 = iZzb2 & i10;
                            char c10 = (char) sArr[i22];
                            if (c10 == 65535) {
                                sArr[i22] = (short) i20;
                                if (i18 < i19) {
                                    objArrCopyOf[i20] = obj6;
                                    objArrCopyOf[i20 ^ 1] = obj7;
                                }
                                i18++;
                                break;
                            }
                            if (obj6.equals(objArrCopyOf[c10])) {
                                int i23 = c10 ^ 1;
                                Object obj8 = objArrCopyOf[i23 == true ? 1 : 0];
                                Objects.requireNonNull(obj8);
                                zzrn zzrnVar5 = new zzrn(obj6, obj7, obj8);
                                objArrCopyOf[i23 == true ? 1 : 0] = obj7;
                                zzrnVar2 = zzrnVar5;
                                break;
                            }
                            iZzb2 = i22 + 1;
                        }
                    }
                    if (i18 != i9) {
                        c9 = 2;
                        objArr2 = new Object[]{sArr, Integer.valueOf(i18), zzrnVar2};
                        r8 = objArr2;
                        c8 = 0;
                        r9 = r8;
                    }
                } else {
                    sArr = new int[iZzj];
                    Arrays.fill((int[]) sArr, -1);
                    zzrn zzrnVar6 = null;
                    int i24 = 0;
                    int i25 = 0;
                    while (i24 < i9) {
                        int i26 = i25 + i25;
                        int i27 = i24 + i24;
                        Object obj9 = objArrCopyOf[i27];
                        Objects.requireNonNull(obj9);
                        Object obj10 = objArrCopyOf[i27 ^ 1];
                        Objects.requireNonNull(obj10);
                        zzqt.zzb(obj9, obj10);
                        int iZzb3 = zzrg.zzb(obj9.hashCode());
                        while (true) {
                            int i28 = iZzb3 & i10;
                            ?? r15 = sArr[i28];
                            if (r15 == b8) {
                                sArr[i28] = i26;
                                if (i25 < i24) {
                                    objArrCopyOf[i26] = obj9;
                                    objArrCopyOf[i26 ^ 1] = obj10;
                                }
                                i25++;
                                break;
                            }
                            if (obj9.equals(objArrCopyOf[r15])) {
                                int i29 = r15 ^ 1;
                                Object obj11 = objArrCopyOf[i29 == true ? 1 : 0];
                                Objects.requireNonNull(obj11);
                                zzrnVar6 = new zzrn(obj9, obj10, obj11);
                                objArrCopyOf[i29 == true ? 1 : 0] = obj10;
                                break;
                            }
                            iZzb3 = i28 + 1;
                            b8 = -1;
                        }
                        i24++;
                        b8 = -1;
                    }
                    if (i25 != i9) {
                        c8 = 0;
                        c9 = 2;
                        r9 = new Object[]{sArr, Integer.valueOf(i25), zzrnVar6};
                    }
                }
                r11 = sArr;
            }
            z7 = r9 instanceof Object[];
            r10 = r9;
            if (z7) {
                objArr3 = (Object[]) r9;
                zzrnVar = (zzrn) objArr3[c9];
                if (zzroVar != null) {
                    throw zzrnVar.zza();
                }
                zzroVar.zzc = zzrnVar;
                Object obj12 = objArr3[c8];
                int iIntValue = ((Integer) objArr3[1]).intValue();
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
                r10 = obj12;
                i9 = iIntValue;
            }
            return new zzsj(r10, objArrCopyOf, i9);
        }
        Object obj13 = objArrCopyOf[0];
        Objects.requireNonNull(obj13);
        Object obj14 = objArrCopyOf[1];
        Objects.requireNonNull(obj14);
        zzqt.zzb(obj13, obj14);
        i9 = 1;
        c9 = 2;
        r8 = r11;
        c8 = 0;
        r9 = r8;
        z7 = r9 instanceof Object[];
        r10 = r9;
        if (z7) {
            objArr3 = (Object[]) r9;
            zzrnVar = (zzrn) objArr3[c9];
            if (zzroVar != null) {
                throw zzrnVar.zza();
            }
            zzroVar.zzc = zzrnVar;
            Object obj15 = objArr3[c8];
            int iIntValue2 = ((Integer) objArr3[1]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue2 + iIntValue2);
            r10 = obj15;
            i9 = iIntValue2;
        }
        return new zzsj(r10, objArrCopyOf, i9);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.ads.interactivemedia.v3.internal.zzrp, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i8 = this.zzd;
            Object[] objArr = this.zzb;
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
                Object obj4 = this.zzc;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iZzb = zzrg.zzb(obj.hashCode());
                    while (true) {
                        int i9 = iZzb & length;
                        int i10 = bArr[i9] & 255;
                        if (i10 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i10])) {
                            obj2 = objArr[i10 ^ 1];
                        } else {
                            iZzb = i9 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iZzb2 = zzrg.zzb(obj.hashCode());
                    while (true) {
                        int i11 = iZzb2 & length2;
                        char c8 = (char) sArr[i11];
                        if (c8 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c8])) {
                            obj2 = objArr[c8 ^ 1];
                        } else {
                            iZzb2 = i11 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iZzb3 = zzrg.zzb(obj.hashCode());
                    while (true) {
                        int i12 = iZzb3 & length3;
                        int i13 = iArr[i12];
                        if (i13 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iZzb3 = i12 + 1;
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
        return this.zzd;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final zzri zza() {
        return new zzsi(this.zzb, 1, this.zzd);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final zzrr zzg() {
        return new zzsg(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final zzrr zzh() {
        return new zzsh(this, new zzsi(this.zzb, 0, this.zzd));
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzrp
    public final boolean zzk() {
        return false;
    }
}
