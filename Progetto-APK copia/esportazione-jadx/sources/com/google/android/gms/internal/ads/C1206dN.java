package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.dN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1206dN implements MM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaCodec f18332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final JM f18333b;

    public /* synthetic */ C1206dN(MediaCodec mediaCodec, JM jm) {
        this.f18332a = mediaCodec;
        this.f18333b = jm;
        if (Et.f13234a < 35 || jm == null) {
            return;
        }
        jm.a(mediaCodec);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void O(int i8) {
        this.f18332a.releaseOutputBuffer(i8, false);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final ByteBuffer a(int i8) {
        return this.f18332a.getInputBuffer(i8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void b(Surface surface) {
        this.f18332a.setOutputSurface(surface);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final /* synthetic */ boolean c(TM tm) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void d(int i8, long j8) {
        this.f18332a.releaseOutputBuffer(i8, j8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void e(int i8) {
        this.f18332a.setVideoScalingMode(i8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void f(int i8, p171w0.c cVar, long j8) {
        this.f18332a.queueSecureInputBuffer(i8, 0, cVar.f30900i, j8, 0);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final int g(MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.f18332a.dequeueOutputBuffer(bufferInfo, 0L);
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void h(long j8, int i8, int i9, int i10) {
        this.f18332a.queueInputBuffer(i8, 0, i9, j8, i10);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void i(Bundle bundle) {
        this.f18332a.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final int zza() {
        return this.f18332a.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final MediaFormat zzc() {
        return this.f18332a.getOutputFormat();
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final ByteBuffer zzg(int i8) {
        return this.f18332a.getOutputBuffer(i8);
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void zzi() {
        this.f18332a.detachOutputSurface();
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void zzj() {
        this.f18332a.flush();
    }

    @Override // com.google.android.gms.internal.ads.MM
    public final void zzm() {
        JM jm = this.f18333b;
        MediaCodec mediaCodec = this.f18332a;
        try {
            int i8 = Et.f13234a;
            if (i8 >= 30 && i8 < 33) {
                mediaCodec.stop();
            }
            if (i8 >= 35 && jm != null) {
            }
        } finally {
            if (Et.f13234a >= 35 && jm != null) {
                jm.c(mediaCodec);
            }
            mediaCodec.release();
        }
    }
}
