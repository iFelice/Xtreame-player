package com.google.ads.interactivemedia.v3.internal;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zztj {
    public static /* synthetic */ boolean zza(Unsafe unsafe, Object obj, long j8, Object obj2, Object obj3) {
        while (!a.a(unsafe, obj, j8, obj2, obj3)) {
            if (unsafe.getObject(obj, j8) != obj2) {
                return false;
            }
        }
        return true;
    }
}
