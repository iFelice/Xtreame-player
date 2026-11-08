package com.google.android.gms.internal.pal;

import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC2752k3 {
    public static /* synthetic */ boolean a(Unsafe unsafe, Object obj, long j8, Object obj2, Object obj3) {
        while (!com.google.ads.interactivemedia.v3.internal.a.a(unsafe, obj, j8, obj2, obj3)) {
            if (unsafe.getObject(obj, j8) != obj2) {
                return false;
            }
        }
        return true;
    }
}
