package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1867qB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f20558a;

    static {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i8 = 0; i8 < 10; i8++) {
            bArr[i8 + 48] = (byte) i8;
        }
        for (int i9 = 0; i9 < 26; i9++) {
            byte b8 = (byte) (i9 + 10);
            bArr[i9 + 65] = b8;
            bArr[i9 + 97] = b8;
        }
        f20558a = bArr;
    }
}
