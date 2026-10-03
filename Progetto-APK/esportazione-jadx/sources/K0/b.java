package K0;

import D0.U;
import U0.C0344j;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class b implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f4309a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f4310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final m f4311c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i f4312d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4313e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4314f = 0;

    public b(MediaCodec mediaCodec, HandlerThread handlerThread, m mVar, i iVar) {
        this.f4309a = mediaCodec;
        this.f4310b = new e(handlerThread);
        this.f4311c = mVar;
        this.f4312d = iVar;
    }

    public static void a(b bVar, MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i8) {
        i iVar;
        e eVar = bVar.f4310b;
        H1.i(eVar.f4331c == null);
        HandlerThread handlerThread = eVar.f4330b;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        MediaCodec mediaCodec = bVar.f4309a;
        mediaCodec.setCallback(eVar, handler);
        eVar.f4331c = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, mediaCrypto, i8);
        Trace.endSection();
        bVar.f4311c.start();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Build.VERSION.SDK_INT >= 35 && (iVar = bVar.f4312d) != null) {
            iVar.a(mediaCodec);
        }
        bVar.f4314f = 1;
    }

    public static String c(int i8, String str) {
        StringBuilder sb = new StringBuilder(str);
        if (i8 == 1) {
            sb.append("Audio");
        } else if (i8 == 2) {
            sb.append("Video");
        } else {
            sb.append("Unknown(");
            sb.append(i8);
            sb.append(")");
        }
        return sb.toString();
    }

    @Override // K0.l
    public final void b(int i8, p171w0.c cVar, long j8, int i9) {
        this.f4311c.b(i8, cVar, j8, i9);
    }

    @Override // K0.l
    public final void d(Bundle bundle) {
        this.f4311c.d(bundle);
    }

    @Override // K0.l
    public final void e(long j8, int i8, int i9, int i10) {
        this.f4311c.e(j8, i8, i9, i10);
    }

    @Override // K0.l
    public final void f(int i8) {
        this.f4309a.releaseOutputBuffer(i8, false);
    }

    @Override // K0.l
    public final void flush() {
        this.f4311c.flush();
        this.f4309a.flush();
        e eVar = this.f4310b;
        synchronized (eVar.f4329a) {
            eVar.f4340l++;
            Handler handler = eVar.f4331c;
            String str = M.f28050a;
            handler.post(new p000a.b(eVar, 18));
        }
        this.f4309a.start();
    }

    @Override // K0.l
    public final void g(C0344j c0344j, Handler handler) {
        this.f4309a.setOnFrameRenderedListener(new C0227a(this, c0344j, 0), handler);
    }

    @Override // K0.l
    public final MediaFormat h() {
        MediaFormat mediaFormat;
        e eVar = this.f4310b;
        synchronized (eVar.f4329a) {
            try {
                mediaFormat = eVar.f4336h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // K0.l
    public final void i() {
        this.f4309a.detachOutputSurface();
    }

    @Override // K0.l
    public final void j(int i8, long j8) {
        this.f4309a.releaseOutputBuffer(i8, j8);
    }

    @Override // K0.l
    public final int k() {
        int iF;
        this.f4311c.x();
        e eVar = this.f4310b;
        synchronized (eVar.f4329a) {
            try {
                IllegalStateException illegalStateException = eVar.f4342n;
                if (illegalStateException != null) {
                    eVar.f4342n = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = eVar.f4338j;
                if (codecException != null) {
                    eVar.f4338j = null;
                    throw codecException;
                }
                MediaCodec.CryptoException cryptoException = eVar.f4339k;
                if (cryptoException != null) {
                    eVar.f4339k = null;
                    throw cryptoException;
                }
                iF = -1;
                if (!(eVar.f4340l > 0 || eVar.f4341m)) {
                    p132r.h hVar = eVar.f4332d;
                    if (hVar.f29664b != hVar.f29665c) {
                        iF = hVar.f();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iF;
    }

    @Override // K0.l
    public final int l(MediaCodec.BufferInfo bufferInfo) {
        int iF;
        this.f4311c.x();
        e eVar = this.f4310b;
        synchronized (eVar.f4329a) {
            try {
                IllegalStateException illegalStateException = eVar.f4342n;
                if (illegalStateException != null) {
                    eVar.f4342n = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = eVar.f4338j;
                if (codecException != null) {
                    eVar.f4338j = null;
                    throw codecException;
                }
                MediaCodec.CryptoException cryptoException = eVar.f4339k;
                if (cryptoException != null) {
                    eVar.f4339k = null;
                    throw cryptoException;
                }
                iF = -1;
                if (!(eVar.f4340l > 0 || eVar.f4341m)) {
                    p132r.h hVar = eVar.f4333e;
                    if (hVar.f29664b != hVar.f29665c) {
                        iF = hVar.f();
                        if (iF >= 0) {
                            H1.j(eVar.f4336h);
                            MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) eVar.f4334f.remove();
                            bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                        } else if (iF == -2) {
                            eVar.f4336h = (MediaFormat) eVar.f4335g.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return iF;
    }

    @Override // K0.l
    public final void m(int i8) {
        this.f4309a.setVideoScalingMode(i8);
    }

    @Override // K0.l
    public final boolean n(U u7) {
        e eVar = this.f4310b;
        synchronized (eVar.f4329a) {
            eVar.f4343o = u7;
        }
        return true;
    }

    @Override // K0.l
    public final ByteBuffer o(int i8) {
        return this.f4309a.getInputBuffer(i8);
    }

    @Override // K0.l
    public final void p(Surface surface) {
        this.f4309a.setOutputSurface(surface);
    }

    @Override // K0.l
    public final ByteBuffer q(int i8) {
        return this.f4309a.getOutputBuffer(i8);
    }

    @Override // K0.l
    public final void release() {
        i iVar;
        i iVar2;
        try {
            if (this.f4314f == 1) {
                this.f4311c.shutdown();
                e eVar = this.f4310b;
                synchronized (eVar.f4329a) {
                    eVar.f4341m = true;
                    eVar.f4330b.quit();
                    eVar.a();
                }
            }
            this.f4314f = 2;
            if (this.f4313e) {
                return;
            }
            try {
                int i8 = Build.VERSION.SDK_INT;
                if (i8 >= 30 && i8 < 33) {
                    this.f4309a.stop();
                }
            } finally {
                if (Build.VERSION.SDK_INT >= 35 && (iVar2 = this.f4312d) != null) {
                    iVar2.c(this.f4309a);
                }
                this.f4309a.release();
                this.f4313e = true;
            }
        } catch (Throwable th) {
            if (!this.f4313e) {
                try {
                    int i9 = Build.VERSION.SDK_INT;
                    if (i9 >= 30 && i9 < 33) {
                        this.f4309a.stop();
                    }
                } finally {
                    if (Build.VERSION.SDK_INT >= 35 && (iVar = this.f4312d) != null) {
                        iVar.c(this.f4309a);
                    }
                    this.f4309a.release();
                    this.f4313e = true;
                }
            }
            throw th;
        }
    }
}
