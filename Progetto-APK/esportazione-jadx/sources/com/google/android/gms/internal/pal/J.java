package com.google.android.gms.internal.pal;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public abstract class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f23560a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f23561b;

    static {
        Charset.forName("US-ASCII");
        f23560a = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f23561b = bArr;
        ByteBuffer.wrap(bArr);
        int i8 = 0 + 0;
        try {
            if (i8 < 0) {
                throw L.d();
            }
            if (i8 > Integer.MAX_VALUE) {
                throw L.e();
            }
        } catch (L e8) {
            throw new IllegalArgumentException(e8);
        }
    }

    public static int a(long j8) {
        return (int) (j8 ^ (j8 >>> 32));
    }

    public static D b(Object obj, Object obj2) {
        D d6 = (D) ((AbstractC2740j) obj);
        C c8 = (C) d6.l(5);
        c8.b(d6);
        AbstractC2740j abstractC2740j = (AbstractC2740j) obj2;
        if (!c8.f23474G.getClass().isInstance(abstractC2740j)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        c8.b((D) abstractC2740j);
        return c8.e();
    }
}
