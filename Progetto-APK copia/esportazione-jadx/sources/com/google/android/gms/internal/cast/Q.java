package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.atv_ads_framework.AbstractC2406q;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends AbstractC2406q {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Q f22521N = new Q(null, new Object[0], 0);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object f22522K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient Object[] f22523L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f22524M;

    public Q(Object obj, Object[] objArr, int i8) {
        super(1);
        this.f22522K = obj;
        this.f22523L = objArr;
        this.f22524M = i8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q
    public final P b() {
        return new P(this.f22523L, 1, this.f22524M);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q
    public final M f() {
        return new M(this, this.f22523L, this.f22524M);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q
    public final O g() {
        return new O(this, new P(this.f22523L, 0, this.f22524M));
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            int i8 = this.f22524M;
            Object[] objArr = this.f22523L;
            if (i8 == 1) {
                Object obj3 = objArr[0];
                obj3.getClass();
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    obj2.getClass();
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.f22522K;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iS = Cw.s(obj.hashCode());
                    while (true) {
                        int i9 = iS & length;
                        int i10 = bArr[i9] & 255;
                        if (i10 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i10])) {
                            obj2 = objArr[i10 ^ 1];
                        } else {
                            iS = i9 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iS2 = Cw.s(obj.hashCode());
                    while (true) {
                        int i11 = iS2 & length2;
                        char c8 = (char) sArr[i11];
                        if (c8 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c8])) {
                            obj2 = objArr[c8 ^ 1];
                        } else {
                            iS2 = i11 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iS3 = Cw.s(obj.hashCode());
                    while (true) {
                        int i12 = iS3 & length3;
                        int i13 = iArr[i12];
                        if (i13 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i13])) {
                            obj2 = objArr[i13 ^ 1];
                        } else {
                            iS3 = i12 + 1;
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
        return this.f22524M;
    }
}
