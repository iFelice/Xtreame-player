package K0;

import D0.U;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class e extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerThread f4330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f4331c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaFormat f4336h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaFormat f4337i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaCodec.CodecException f4338j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaCodec.CryptoException f4339k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4340l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4341m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public IllegalStateException f4342n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public U f4343o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4329a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p132r.h f4332d = new p132r.h(0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p132r.h f4333e = new p132r.h(0, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f4334f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f4335g = new ArrayDeque();

    public e(HandlerThread handlerThread) {
        this.f4330b = handlerThread;
    }

    public final void a() {
        ArrayDeque arrayDeque = this.f4335g;
        if (!arrayDeque.isEmpty()) {
            this.f4337i = (MediaFormat) arrayDeque.getLast();
        }
        p132r.h hVar = this.f4332d;
        hVar.f29665c = hVar.f29664b;
        p132r.h hVar2 = this.f4333e;
        hVar2.f29665c = hVar2.f29664b;
        this.f4334f.clear();
        arrayDeque.clear();
    }

    public final void b(IllegalStateException illegalStateException) {
        synchronized (this.f4329a) {
            this.f4342n = illegalStateException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f4329a) {
            this.f4339k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f4329a) {
            this.f4338j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i8) {
        synchronized (this.f4329a) {
            this.f4332d.a(i8);
            U u7 = this.f4343o;
            if (u7 != null) {
                Object obj = u7.f1868H;
                if (((r) obj).f4415V != null) {
                    ((r) obj).f4415V.a();
                }
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i8, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f4329a) {
            try {
                MediaFormat mediaFormat = this.f4337i;
                if (mediaFormat != null) {
                    this.f4333e.a(-2);
                    this.f4335g.add(mediaFormat);
                    this.f4337i = null;
                }
                this.f4333e.a(i8);
                this.f4334f.add(bufferInfo);
                U u7 = this.f4343o;
                if (u7 != null) {
                    Object obj = u7.f1868H;
                    if (((r) obj).f4415V != null) {
                        ((r) obj).f4415V.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f4329a) {
            this.f4333e.a(-2);
            this.f4335g.add(mediaFormat);
            this.f4337i = null;
        }
    }
}
