package com.google.ads.interactivemedia.v3.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
final class zzgs implements Runnable {
    private zzgs() {
        throw null;
    }

    public /* synthetic */ zzgs(zzgr zzgrVar) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        CountDownLatch countDownLatch;
        try {
            zzgt.zzd = MessageDigest.getInstance("MD5");
            countDownLatch = zzgt.zzb;
        } catch (NoSuchAlgorithmException unused) {
            countDownLatch = zzgt.zzb;
        } catch (Throwable th) {
            zzgt.zzb.countDown();
            throw th;
        }
        countDownLatch.countDown();
    }
}
