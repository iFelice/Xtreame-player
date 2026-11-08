package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class DM implements MM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f12817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GM f12818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final NM f12819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final JM f12820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f12821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12822f = 0;

    public /* synthetic */ DM(MediaCodec mediaCodec, HandlerThread handlerThread, NM nm, JM jm) {
        this.f12817a = mediaCodec;
        this.f12818b = new GM(handlerThread);
        this.f12819c = nm;
        this.f12820d = jm;
    }

    public static void j(DM dm, MediaFormat mediaFormat, Surface surface, int i8) {
        JM jm;
        GM gm = dm.f12818b;
        p113o3.r.M(gm.f13524c == null);
        HandlerThread handlerThread = gm.f13523b;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        MediaCodec mediaCodec = dm.f12817a;
        mediaCodec.setCallback(gm, handler);
        gm.f13524c = handler;
        Trace.beginSection("configureCodec");
        mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, i8);
        Trace.endSection();
        dm.f12819c.zzh();
        Trace.beginSection("startCodec");
        mediaCodec.start();
        Trace.endSection();
        if (Et.f13234a >= 35 && (jm = dm.f12820d) != null) {
            jm.a(mediaCodec);
        }
        dm.f12822f = 1;
    }

    public static String k(int i8, String str) {
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

    @Override // com.google.android.gms.internal.ads.MM
    public final void O(int i8) {
        this.f12817a.releaseOutputBuffer(i8, false);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final ByteBuffer a(int i8) {
        return this.f12817a.getInputBuffer(i8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void b(Surface surface) {
        this.f12817a.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final boolean c(TM tm) {
        GM gm = this.f12818b;
        synchronized (gm.f13522a) {
            gm.f13536o = tm;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void d(int i8, long j8) {
        this.f12817a.releaseOutputBuffer(i8, j8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void e(int i8) {
        this.f12817a.setVideoScalingMode(i8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void f(int i8, p171w0.c cVar, long j8) {
        this.f12819c.d(i8, cVar, j8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final int g(MediaCodec.BufferInfo bufferInfo) {
        int i8;
        this.f12819c.zzc();
        GM gm = this.f12818b;
        synchronized (gm.f13522a) {
            try {
                IllegalStateException illegalStateException = gm.f13535n;
                if (illegalStateException != null) {
                    gm.f13535n = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = gm.f13531j;
                if (codecException != null) {
                    gm.f13531j = null;
                    throw codecException;
                }
                MediaCodec.CryptoException cryptoException = gm.f13532k;
                if (cryptoException != null) {
                    gm.f13532k = null;
                    throw cryptoException;
                }
                i8 = -1;
                if (!(gm.f13533l > 0 || gm.f13534m)) {
                    p132r.h hVar = gm.f13526e;
                    if (hVar.f29664b != hVar.f29665c) {
                        int iF = hVar.f();
                        if (iF >= 0) {
                            p113o3.r.x(gm.f13529h);
                            MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) gm.f13527f.remove();
                            bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                        } else if (iF == -2) {
                            gm.f13529h = (MediaFormat) gm.f13528g.remove();
                            i8 = -2;
                        }
                        i8 = iF;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i8;
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void h(long j8, int i8, int i9, int i10) {
        this.f12819c.b(j8, i8, i9, i10);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void i(Bundle bundle) {
        this.f12819c.a(bundle);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final int zza() {
        int iF;
        this.f12819c.zzc();
        GM gm = this.f12818b;
        synchronized (gm.f13522a) {
            try {
                IllegalStateException illegalStateException = gm.f13535n;
                if (illegalStateException != null) {
                    gm.f13535n = null;
                    throw illegalStateException;
                }
                MediaCodec.CodecException codecException = gm.f13531j;
                if (codecException != null) {
                    gm.f13531j = null;
                    throw codecException;
                }
                MediaCodec.CryptoException cryptoException = gm.f13532k;
                if (cryptoException != null) {
                    gm.f13532k = null;
                    throw cryptoException;
                }
                iF = -1;
                if (!(gm.f13533l > 0 || gm.f13534m)) {
                    p132r.h hVar = gm.f13525d;
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

    @Override // com.google.android.gms.internal.ads.MM
    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        GM gm = this.f12818b;
        synchronized (gm.f13522a) {
            try {
                mediaFormat = gm.f13529h;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final ByteBuffer zzg(int i8) {
        return this.f12817a.getOutputBuffer(i8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void zzi() {
        this.f12817a.detachOutputSurface();
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void zzj() {
        this.f12819c.zzb();
        this.f12817a.flush();
        GM gm = this.f12818b;
        synchronized (gm.f13522a) {
            gm.f13533l++;
            Handler handler = gm.f13524c;
            int i8 = Et.f13234a;
            handler.post(new RunnableC1026Zn(gm, 23));
        }
        this.f12817a.start();
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void zzm() {
        JM jm;
        JM jm2;
        JM jm3;
        try {
            try {
                if (this.f12822f == 1) {
                    this.f12819c.zzg();
                    GM gm = this.f12818b;
                    synchronized (gm.f13522a) {
                        gm.f13534m = true;
                        gm.f13523b.quit();
                        gm.a();
                    }
                }
                this.f12822f = 2;
                if (this.f12821e) {
                    return;
                }
                int i8 = Et.f13234a;
                if (i8 >= 30 && i8 < 33) {
                    this.f12817a.stop();
                }
                if (i8 >= 35 && (jm3 = this.f12820d) != null) {
                    jm3.c(this.f12817a);
                }
                this.f12817a.release();
                this.f12821e = true;
            } catch (Throwable th) {
                if (!this.f12821e) {
                    int i9 = Et.f13234a;
                    if (i9 >= 30 && i9 < 33) {
                        this.f12817a.stop();
                    }
                    if (i9 >= 35 && (jm2 = this.f12820d) != null) {
                        jm2.c(this.f12817a);
                    }
                    this.f12817a.release();
                    this.f12821e = true;
                }
                throw th;
            }
        } catch (Throwable th2) {
            if (Et.f13234a >= 35 && (jm = this.f12820d) != null) {
                jm.c(this.f12817a);
            }
            this.f12817a.release();
            this.f12821e = true;
            throw th2;
        }
    }
}
