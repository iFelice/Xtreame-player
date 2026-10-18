package p179x0;

import A0.O;
import B0.C0055j;
import U0.AbstractC0335a;
import U0.N;
import android.os.Handler;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.av1.Gav1Decoder;
import org.videolan.libvlc.MediaDiscoverer;
import p094m0.C3136t;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public class d extends AbstractC0335a {

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final int f31180q0 = ((M.f(720, 64) * M.f(MediaDiscoverer.Event.Started, 64)) * 6144) / 2;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int f31181m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final int f31182n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final int f31183o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public Gav1Decoder f31184p0;

    public d(long j8, Handler handler, N n7, int i8) {
        super(j8, handler, n7, i8);
        this.f31183o0 = 0;
        this.f31181m0 = 4;
        this.f31182n0 = 4;
    }

    @Override // U0.AbstractC0335a
    public final C0055j canReuseDecoder(String str, C3136t c3136t, C3136t c3136t2) {
        return new C0055j(str, c3136t, c3136t2, 3, 0);
    }

    @Override // U0.AbstractC0335a
    public final p171w0.d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createGav1Decoder");
        int i8 = c3136t.f27042p;
        if (i8 == -1) {
            i8 = f31180q0;
        }
        Gav1Decoder gav1Decoder = new Gav1Decoder(this.f31181m0, this.f31182n0, i8, this.f31183o0);
        this.f31184p0 = gav1Decoder;
        Trace.endSection();
        return gav1Decoder;
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "Libgav1VideoRenderer";
    }

    @Override // U0.AbstractC0335a
    public final void h(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws a {
        Gav1Decoder gav1Decoder = this.f31184p0;
        if (gav1Decoder == null) {
            throw new a("Failed to render output buffer to surface: decoder is not initialized.");
        }
        gav1Decoder.d(videoDecoderOutputBuffer, surface);
        videoDecoderOutputBuffer.release();
    }

    @Override // U0.AbstractC0335a
    public final void i(int i8) {
        Gav1Decoder gav1Decoder = this.f31184p0;
        if (gav1Decoder != null) {
            gav1Decoder.f9397b = i8;
        }
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        if (!"video/av01".equalsIgnoreCase(c3136t.f27041o) || !c.f31179a.isAvailable()) {
            return O.o(0, 0, 0, 0);
        }
        if (c3136t.f27025P != 0) {
            return O.o(2, 0, 0, 0);
        }
        return 148;
    }
}
