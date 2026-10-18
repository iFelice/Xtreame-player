package com.google.android.gms.internal.atv_ads_framework;

import com.google.android.gms.internal.ads.Cw;

/* JADX INFO: renamed from: com.google.android.gms.internal.atv_ads_framework.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2420y extends AbstractC2406q {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final C2420y f22392N = new C2420y(null, new Object[0], 0);

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient Object f22393K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient Object[] f22394L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final transient int f22395M;

    public C2420y(Object obj, Object[] objArr, int i8) {
        super(0);
        this.f22393K = obj;
        this.f22394L = objArr;
        this.f22395M = i8;
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q
    public final C2419x a() {
        return new C2419x(this.f22394L, 1, this.f22395M);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q
    public final C2415v c() {
        return new C2415v(this, this.f22394L, this.f22395M);
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q
    public final C2417w e() {
        return new C2417w(this, new C2419x(this.f22394L, 0, this.f22395M));
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0003  */
    @Override // com.google.android.gms.internal.atv_ads_framework.AbstractC2406q, java.util.Map
    public final Object get(Object obj) {
        Object obj2;
        if (obj == null) {
            obj2 = null;
        } else {
            Object[] objArr = this.f22394L;
            if (this.f22395M == 1) {
                Object obj3 = objArr[0];
                obj3.getClass();
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    obj2.getClass();
                } else {
                    obj2 = null;
                }
            } else {
                Object obj4 = this.f22393K;
                if (obj4 == null) {
                    obj2 = null;
                } else if (obj4 instanceof byte[]) {
                    byte[] bArr = (byte[]) obj4;
                    int length = bArr.length - 1;
                    int iL0 = Cw.l0(obj.hashCode());
                    while (true) {
                        int i8 = iL0 & length;
                        int i9 = bArr[i8] & 255;
                        if (i9 == 255) {
                            break;
                        }
                        if (obj.equals(objArr[i9])) {
                            obj2 = objArr[i9 ^ 1];
                        } else {
                            iL0 = i8 + 1;
                        }
                    }
                    obj2 = null;
                } else if (obj4 instanceof short[]) {
                    short[] sArr = (short[]) obj4;
                    int length2 = sArr.length - 1;
                    int iL1 = Cw.l0(obj.hashCode());
                    while (true) {
                        int i10 = iL1 & length2;
                        char c8 = (char) sArr[i10];
                        if (c8 == 65535) {
                            break;
                        }
                        if (obj.equals(objArr[c8])) {
                            obj2 = objArr[c8 ^ 1];
                        } else {
                            iL1 = i10 + 1;
                        }
                    }
                    obj2 = null;
                } else {
                    int[] iArr = (int[]) obj4;
                    int length3 = iArr.length - 1;
                    int iL2 = Cw.l0(obj.hashCode());
                    while (true) {
                        int i11 = iL2 & length3;
                        int i12 = iArr[i11];
                        if (i12 == -1) {
                            break;
                        }
                        if (obj.equals(objArr[i12])) {
                            obj2 = objArr[i12 ^ 1];
                        } else {
                            iL2 = i11 + 1;
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
        return this.f22395M;
    }
}
