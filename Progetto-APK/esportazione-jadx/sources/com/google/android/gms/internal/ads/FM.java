package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Bundle;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class FM implements NM {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final ArrayDeque f13347M = new ArrayDeque();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Object f13348N = new Object();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MediaCodec f13349G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HandlerThread f13350H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public p064i0.a f13351I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicReference f13352J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final G.c f13353K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f13354L;

    public FM(MediaCodec mediaCodec, HandlerThread handlerThread) {
        G.c cVar = new G.c(0);
        this.f13349G = mediaCodec;
        this.f13350H = handlerThread;
        this.f13353K = cVar;
        this.f13352J = new AtomicReference();
    }

    public static EM c() {
        ArrayDeque arrayDeque = f13347M;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new EM();
                }
                return (EM) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void a(Bundle bundle) {
        zzc();
        p064i0.a aVar = this.f13351I;
        int i8 = Et.f13234a;
        aVar.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void b(long j8, int i8, int i9, int i10) {
        zzc();
        EM emC = c();
        emC.f12969a = i8;
        emC.f12970b = i9;
        emC.f12972d = j8;
        emC.f12973e = i10;
        p064i0.a aVar = this.f13351I;
        int i11 = Et.f13234a;
        aVar.obtainMessage(1, emC).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void d(int i8, p171w0.c cVar, long j8) {
        int length;
        int length2;
        int length3;
        int length4;
        zzc();
        EM emC = c();
        emC.f12969a = i8;
        emC.f12970b = 0;
        emC.f12972d = j8;
        emC.f12973e = 0;
        int i9 = cVar.f30897f;
        MediaCodec.CryptoInfo cryptoInfo = emC.f12971c;
        cryptoInfo.numSubSamples = i9;
        int[] iArr = cVar.f30895d;
        int[] iArrCopyOf = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArrCopyOf == null || iArrCopyOf.length < (length4 = iArr.length)) {
                iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, length4);
            }
        }
        cryptoInfo.numBytesOfClearData = iArrCopyOf;
        int[] iArr2 = cVar.f30896e;
        int[] iArrCopyOf2 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 != null) {
            if (iArrCopyOf2 == null || iArrCopyOf2.length < (length3 = iArr2.length)) {
                iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
            } else {
                System.arraycopy(iArr2, 0, iArrCopyOf2, 0, length3);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArrCopyOf2;
        byte[] bArr = cVar.f30893b;
        byte[] bArrCopyOf = cryptoInfo.key;
        if (bArr != null) {
            if (bArrCopyOf == null || bArrCopyOf.length < (length2 = bArr.length)) {
                bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArrCopyOf, 0, length2);
            }
        }
        bArrCopyOf.getClass();
        cryptoInfo.key = bArrCopyOf;
        byte[] bArr2 = cVar.f30892a;
        byte[] bArrCopyOf2 = cryptoInfo.iv;
        if (bArr2 != null) {
            if (bArrCopyOf2 == null || bArrCopyOf2.length < (length = bArr2.length)) {
                bArrCopyOf2 = Arrays.copyOf(bArr2, bArr2.length);
            } else {
                System.arraycopy(bArr2, 0, bArrCopyOf2, 0, length);
            }
        }
        bArrCopyOf2.getClass();
        cryptoInfo.iv = bArrCopyOf2;
        cryptoInfo.mode = cVar.f30894c;
        if (Et.f13234a >= 24) {
            cryptoInfo.setPattern(new MediaCodec.CryptoInfo.Pattern(cVar.f30898g, cVar.f30899h));
        }
        this.f13351I.obtainMessage(2, emC).sendToTarget();
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzb() {
        G.c cVar = this.f13353K;
        if (this.f13354L) {
            try {
                p064i0.a aVar = this.f13351I;
                aVar.getClass();
                aVar.removeCallbacksAndMessages(null);
                synchronized (cVar) {
                    cVar.f3280H = false;
                }
                p064i0.a aVar2 = this.f13351I;
                aVar2.getClass();
                aVar2.obtainMessage(3).sendToTarget();
                cVar.b();
            } catch (InterruptedException e8) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e8);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzc() {
        RuntimeException runtimeException = (RuntimeException) this.f13352J.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzg() {
        if (this.f13354L) {
            zzb();
            this.f13350H.quit();
        }
        this.f13354L = false;
    }

    @Override // com.google.android.gms.internal.ads.NM
    public final void zzh() {
        if (this.f13354L) {
            return;
        }
        HandlerThread handlerThread = this.f13350H;
        handlerThread.start();
        this.f13351I = new p064i0.a(this, handlerThread.getLooper(), 4);
        this.f13354L = true;
    }
}
