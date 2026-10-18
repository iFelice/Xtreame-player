package K0;

import D0.AbstractC0134y;
import android.media.MediaCodec;
import android.os.Build;
import android.os.Bundle;
import android.os.HandlerThread;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;
import p117p0.C3171i;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class d implements m {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final ArrayDeque f4321M = new ArrayDeque();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public static final Object f4322N = new Object();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final MediaCodec f4323G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HandlerThread f4324H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public p064i0.a f4325I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicReference f4326J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C3171i f4327K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f4328L;

    public d(MediaCodec mediaCodec, HandlerThread handlerThread) {
        C3171i c3171i = new C3171i();
        this.f4323G = mediaCodec;
        this.f4324H = handlerThread;
        this.f4327K = c3171i;
        this.f4326J = new AtomicReference();
    }

    public static c a() {
        ArrayDeque arrayDeque = f4321M;
        synchronized (arrayDeque) {
            try {
                if (arrayDeque.isEmpty()) {
                    return new c();
                }
                return (c) arrayDeque.removeFirst();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void c(c cVar) {
        ArrayDeque arrayDeque = f4321M;
        synchronized (arrayDeque) {
            arrayDeque.add(cVar);
        }
    }

    @Override // K0.m
    public final void b(int i8, p171w0.c cVar, long j8, int i9) {
        x();
        c cVarA = a();
        cVarA.f4315a = i8;
        cVarA.f4316b = 0;
        cVarA.f4317c = 0;
        cVarA.f4319e = j8;
        cVarA.f4320f = i9;
        int i10 = cVar.f30897f;
        MediaCodec.CryptoInfo cryptoInfo = cVarA.f4318d;
        cryptoInfo.numSubSamples = i10;
        int[] iArr = cVar.f30895d;
        int[] iArrCopyOf = cryptoInfo.numBytesOfClearData;
        if (iArr != null) {
            if (iArrCopyOf == null || iArrCopyOf.length < iArr.length) {
                iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            } else {
                System.arraycopy(iArr, 0, iArrCopyOf, 0, iArr.length);
            }
        }
        cryptoInfo.numBytesOfClearData = iArrCopyOf;
        int[] iArr2 = cVar.f30896e;
        int[] iArrCopyOf2 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr2 != null) {
            if (iArrCopyOf2 == null || iArrCopyOf2.length < iArr2.length) {
                iArrCopyOf2 = Arrays.copyOf(iArr2, iArr2.length);
            } else {
                System.arraycopy(iArr2, 0, iArrCopyOf2, 0, iArr2.length);
            }
        }
        cryptoInfo.numBytesOfEncryptedData = iArrCopyOf2;
        byte[] bArr = cVar.f30893b;
        byte[] bArrCopyOf = cryptoInfo.key;
        if (bArr != null) {
            if (bArrCopyOf == null || bArrCopyOf.length < bArr.length) {
                bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            } else {
                System.arraycopy(bArr, 0, bArrCopyOf, 0, bArr.length);
            }
        }
        bArrCopyOf.getClass();
        cryptoInfo.key = bArrCopyOf;
        byte[] bArr2 = cVar.f30892a;
        byte[] bArrCopyOf2 = cryptoInfo.iv;
        if (bArr2 != null) {
            if (bArrCopyOf2 == null || bArrCopyOf2.length < bArr2.length) {
                bArrCopyOf2 = Arrays.copyOf(bArr2, bArr2.length);
            } else {
                System.arraycopy(bArr2, 0, bArrCopyOf2, 0, bArr2.length);
            }
        }
        bArrCopyOf2.getClass();
        cryptoInfo.iv = bArrCopyOf2;
        cryptoInfo.mode = cVar.f30894c;
        if (Build.VERSION.SDK_INT >= 24) {
            AbstractC0134y.p();
            cryptoInfo.setPattern(AbstractC0134y.g(cVar.f30898g, cVar.f30899h));
        }
        p064i0.a aVar = this.f4325I;
        String str = M.f28050a;
        aVar.obtainMessage(2, cVarA).sendToTarget();
    }

    @Override // K0.m
    public final void d(Bundle bundle) {
        x();
        p064i0.a aVar = this.f4325I;
        String str = M.f28050a;
        aVar.obtainMessage(4, bundle).sendToTarget();
    }

    @Override // K0.m
    public final void e(long j8, int i8, int i9, int i10) {
        x();
        c cVarA = a();
        cVarA.f4315a = i8;
        cVarA.f4316b = 0;
        cVarA.f4317c = i9;
        cVarA.f4319e = j8;
        cVarA.f4320f = i10;
        p064i0.a aVar = this.f4325I;
        String str = M.f28050a;
        aVar.obtainMessage(1, cVarA).sendToTarget();
    }

    @Override // K0.m
    public final void flush() {
        if (this.f4328L) {
            try {
                p064i0.a aVar = this.f4325I;
                aVar.getClass();
                aVar.removeCallbacksAndMessages(null);
                C3171i c3171i = this.f4327K;
                c3171i.e();
                p064i0.a aVar2 = this.f4325I;
                aVar2.getClass();
                aVar2.obtainMessage(3).sendToTarget();
                c3171i.a();
            } catch (InterruptedException e8) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e8);
            }
        }
    }

    @Override // K0.m
    public final void shutdown() {
        if (this.f4328L) {
            flush();
            this.f4324H.quit();
        }
        this.f4328L = false;
    }

    @Override // K0.m
    public final void start() {
        if (this.f4328L) {
            return;
        }
        HandlerThread handlerThread = this.f4324H;
        handlerThread.start();
        this.f4325I = new p064i0.a(this, handlerThread.getLooper(), 1);
        this.f4328L = true;
    }

    @Override // K0.m
    public final void x() {
        RuntimeException runtimeException = (RuntimeException) this.f4326J.getAndSet(null);
        if (runtimeException != null) {
            throw runtimeException;
        }
    }
}
