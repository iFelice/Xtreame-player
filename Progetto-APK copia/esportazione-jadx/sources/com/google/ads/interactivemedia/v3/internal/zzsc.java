package com.google.ads.interactivemedia.v3.internal;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class zzsc {
    public static Object zza(Object obj, int i8) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(r.f("at index ", i8));
    }

    public static Object[] zzb(Object[] objArr, int i8) {
        for (int i9 = 0; i9 < i8; i9++) {
            zza(objArr[i9], i9);
        }
        return objArr;
    }
}
