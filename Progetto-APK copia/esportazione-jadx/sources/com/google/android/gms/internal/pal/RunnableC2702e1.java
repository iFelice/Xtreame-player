package com.google.android.gms.internal.pal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2702e1 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            AbstractC2710f1.f23811b = MessageDigest.getInstance("MD5");
            countDownLatch = AbstractC2710f1.f23814e;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = AbstractC2710f1.f23814e;
        } catch (Throwable th) {
            AbstractC2710f1.f23814e.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
