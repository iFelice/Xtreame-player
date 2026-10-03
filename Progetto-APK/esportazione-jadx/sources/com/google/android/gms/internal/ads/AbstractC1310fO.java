package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1310fO implements InterfaceC2087uO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0961Ve f18756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f18758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1804p0[] f18759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18760e;

    public AbstractC1310fO(C0961Ve c0961Ve, int[] iArr) {
        C1804p0[] c1804p0Arr;
        int length = iArr.length;
        p113o3.r.M(length > 0);
        c0961Ve.getClass();
        this.f18756a = c0961Ve;
        this.f18757b = length;
        this.f18759d = new C1804p0[length];
        int i8 = 0;
        while (true) {
            int length2 = iArr.length;
            c1804p0Arr = c0961Ve.f17072d;
            if (i8 >= length2) {
                break;
            }
            this.f18759d[i8] = c1804p0Arr[iArr[i8]];
            i8++;
        }
        Arrays.sort(this.f18759d, new C2065u2(5));
        this.f18758c = new int[this.f18757b];
        for (int i9 = 0; i9 < this.f18757b; i9++) {
            int[] iArr2 = this.f18758c;
            C1804p0 c1804p0 = this.f18759d[i9];
            int i10 = 0;
            while (true) {
                if (i10 >= c1804p0Arr.length) {
                    i10 = -1;
                    break;
                } else if (c1804p0 == c1804p0Arr[i10]) {
                    break;
                } else {
                    i10++;
                }
            }
            iArr2[i9] = i10;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            AbstractC1310fO abstractC1310fO = (AbstractC1310fO) obj;
            if (this.f18756a.equals(abstractC1310fO.f18756a) && Arrays.equals(this.f18758c, abstractC1310fO.f18758c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f18760e;
        if (i8 != 0) {
            return i8;
        }
        int iHashCode = Arrays.hashCode(this.f18758c) + (System.identityHashCode(this.f18756a) * 31);
        this.f18760e = iHashCode;
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final int zza(int i8) {
        return this.f18758c[i8];
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final int zzb(int i8) {
        for (int i9 = 0; i9 < this.f18757b; i9++) {
            if (this.f18758c[i9] == i8) {
                return i9;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final int zzc() {
        return this.f18758c.length;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final C1804p0 zzd(int i8) {
        return this.f18759d[i8];
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2087uO
    public final C0961Ve zze() {
        return this.f18756a;
    }
}
