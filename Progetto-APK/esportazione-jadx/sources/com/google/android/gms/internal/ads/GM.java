package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public final class GM extends MediaCodec.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HandlerThread f13523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f13524c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public MediaFormat f13529h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaFormat f13530i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MediaCodec.CodecException f13531j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public MediaCodec.CryptoException f13532k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f13533l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f13534m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public IllegalStateException f13535n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public TM f13536o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f13522a = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p132r.h f13525d = new p132r.h(0, 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final p132r.h f13526e = new p132r.h(0, 0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayDeque f13527f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayDeque f13528g = new ArrayDeque();

    public GM(HandlerThread handlerThread) {
        this.f13523b = handlerThread;
    }

    public final void a() {
        ArrayDeque arrayDeque = this.f13528g;
        if (!arrayDeque.isEmpty()) {
            this.f13530i = (MediaFormat) arrayDeque.getLast();
        }
        p132r.h hVar = this.f13525d;
        hVar.f29665c = hVar.f29664b;
        p132r.h hVar2 = this.f13526e;
        hVar2.f29665c = hVar2.f29664b;
        this.f13527f.clear();
        arrayDeque.clear();
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.f13522a) {
            this.f13532k = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.f13522a) {
            this.f13531j = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i8) {
        C2291yK c2291yK;
        synchronized (this.f13522a) {
            try {
                this.f13525d.a(i8);
                TM tm = this.f13536o;
                if (tm != null && (c2291yK = tm.f16630a.f17010D) != null) {
                    c2291yK.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i8, MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.f13522a) {
            try {
                MediaFormat mediaFormat = this.f13530i;
                if (mediaFormat != null) {
                    this.f13526e.a(-2);
                    this.f13528g.add(mediaFormat);
                    this.f13530i = null;
                }
                this.f13526e.a(i8);
                this.f13527f.add(bufferInfo);
                TM tm = this.f13536o;
                if (tm != null) {
                    C2291yK c2291yK = tm.f16630a.f17010D;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.f13522a) {
            this.f13526e.a(-2);
            this.f13528g.add(mediaFormat);
            this.f13530i = null;
        }
    }
}
