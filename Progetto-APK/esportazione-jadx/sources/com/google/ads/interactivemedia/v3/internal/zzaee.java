package com.google.ads.interactivemedia.v3.internal;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class zzaee {
    static final Charset zza;
    public static final byte[] zzb;

    static {
        Charset.forName("US-ASCII");
        zza = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        zzb = bArr;
        ByteBuffer.wrap(bArr);
        zzada.zzE(bArr, 0, 0, false);
    }

    public static int zza(boolean z7) {
        return z7 ? 1231 : 1237;
    }

    public static int zzb(int i8, byte[] bArr, int i9, int i10) {
        for (int i11 = i9; i11 < i9 + i10; i11++) {
            i8 = (i8 * 31) + bArr[i11];
        }
        return i8;
    }

    public static Object zzc(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("messageType");
    }
}
