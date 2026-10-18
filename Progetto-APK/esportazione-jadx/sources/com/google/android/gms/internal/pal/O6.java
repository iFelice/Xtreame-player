package com.google.android.gms.internal.pal;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public abstract class O6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final K3.X f23620a = new K3.X(17);

    public static byte[] a(int i8) {
        byte[] bArr = new byte[i8];
        ((SecureRandom) f23620a.get()).nextBytes(bArr);
        return bArr;
    }
}
