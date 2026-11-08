package androidx.media3.decoder.ffmpeg;

import A0.O;
import B0.C0055j;
import U0.AbstractC0335a;
import U0.N;
import android.os.Handler;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.util.Objects;
import p094m0.C3136t;
import p171w0.d;

/* JADX INFO: loaded from: classes.dex */
public final class a extends AbstractC0335a {
    public a(long j8, Handler handler, N n7, int i8) {
        super(j8, handler, n7, i8);
    }

    @Override // U0.AbstractC0335a
    public final C0055j canReuseDecoder(String str, C3136t c3136t, C3136t c3136t2) {
        boolean zEquals = Objects.equals(c3136t.f27041o, c3136t2.f27041o);
        return new C0055j(str, c3136t, c3136t2, zEquals ? 3 : 0, zEquals ? 0 : 8);
    }

    @Override // U0.AbstractC0335a
    public final d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createFfmpegVideoDecoder");
        Trace.endSection();
        return null;
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "ExperimentalFfmpegVideoRenderer";
    }

    @Override // U0.AbstractC0335a
    public final void h(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) {
    }

    @Override // U0.AbstractC0335a
    public final void i(int i8) {
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        return O.o(0, 0, 0, 0);
    }
}
