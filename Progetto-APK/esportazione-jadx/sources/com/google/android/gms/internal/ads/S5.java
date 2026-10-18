package com.google.android.gms.internal.ads;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes.dex */
public abstract class S5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static MessageDigest f16406b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f16407a = new Object();

    public final MessageDigest a() {
        synchronized (this.f16407a) {
            MessageDigest messageDigest = f16406b;
            if (messageDigest != null) {
                return messageDigest;
            }
            for (int i8 = 0; i8 < 2; i8++) {
                try {
                    f16406b = MessageDigest.getInstance("MD5");
                } catch (NoSuchAlgorithmException unused) {
                }
            }
            return f16406b;
        }
    }

    public abstract byte[] b(String str);
}
