package K0;

import D0.U;
import U0.C0344j;
import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public interface l {
    void b(int i8, p171w0.c cVar, long j8, int i9);

    void d(Bundle bundle);

    void e(long j8, int i8, int i9, int i10);

    void f(int i8);

    void flush();

    void g(C0344j c0344j, Handler handler);

    MediaFormat h();

    void i();

    void j(int i8, long j8);

    int k();

    int l(MediaCodec.BufferInfo bufferInfo);

    void m(int i8);

    boolean n(U u7);

    ByteBuffer o(int i8);

    void p(Surface surface);

    ByteBuffer q(int i8);

    void release();
}
