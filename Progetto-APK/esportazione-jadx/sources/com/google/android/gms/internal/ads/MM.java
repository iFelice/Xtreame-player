package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface MM {
    void O(int i8);

    ByteBuffer a(int i8);

    void b(Surface surface);

    boolean c(TM tm);

    void d(int i8, long j8);

    void e(int i8);

    void f(int i8, p171w0.c cVar, long j8);

    int g(MediaCodec.BufferInfo bufferInfo);

    void h(long j8, int i8, int i9, int i10);

    void i(Bundle bundle);

    int zza();

    MediaFormat zzc();

    ByteBuffer zzg(int i8);

    void zzi();

    void zzj();

    void zzm();
}
