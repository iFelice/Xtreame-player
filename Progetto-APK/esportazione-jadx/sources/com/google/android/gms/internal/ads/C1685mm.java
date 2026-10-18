package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1685mm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p113o3.v f19992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final P3.a f19993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f19994c;

    public C1685mm(p113o3.v vVar, P3.a aVar, C1936re c1936re) {
        this.f19992a = vVar;
        this.f19993b = aVar;
        this.f19994c = c1936re;
    }

    public final Bitmap a(byte[] bArr, BitmapFactory.Options options) {
        P3.b bVar = (P3.b) this.f19993b;
        bVar.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        bVar.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        if (bitmapDecodeByteArray != null) {
            long j8 = jElapsedRealtime2 - jElapsedRealtime;
            int width = bitmapDecodeByteArray.getWidth();
            int height = bitmapDecodeByteArray.getHeight();
            int allocationByteCount = bitmapDecodeByteArray.getAllocationByteCount();
            boolean z7 = Looper.getMainLooper().getThread() == Thread.currentThread();
            StringBuilder sbD = A0.O.D("Decoded image w: ", width, " h:", height, " bytes: ");
            sbD.append(allocationByteCount);
            sbD.append(" time: ");
            sbD.append(j8);
            sbD.append(" on ui thread: ");
            sbD.append(z7);
            p113o3.I.k(sbD.toString());
        }
        return bitmapDecodeByteArray;
    }
}
