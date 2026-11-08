package p194z0;

import A0.O;
import B0.C0055j;
import U0.AbstractC0335a;
import U0.N;
import android.os.Handler;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.decoder.vp9.VpxDecoder;
import androidx.media3.decoder.vp9.VpxLibrary;
import p094m0.C3136t;
import p171w0.d;

/* JADX INFO: loaded from: classes.dex */
public class a extends AbstractC0335a {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final int f31697m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final int f31698n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final int f31699o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public VpxDecoder f31700p0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(long j8, Handler handler, N n7, int i8) {
        super(j8, handler, n7, i8);
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        this.f31699o0 = iAvailableProcessors;
        this.f31697m0 = 4;
        this.f31698n0 = 4;
    }

    @Override // U0.AbstractC0335a
    public final C0055j canReuseDecoder(String str, C3136t c3136t, C3136t c3136t2) {
        return new C0055j(str, c3136t, c3136t2, 3, 0);
    }

    @Override // U0.AbstractC0335a
    public final d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createVpxDecoder");
        int i8 = c3136t.f27042p;
        VpxDecoder vpxDecoder = new VpxDecoder(this.f31697m0, this.f31698n0, i8 != -1 ? i8 : 786432, cryptoConfig, this.f31699o0);
        this.f31700p0 = vpxDecoder;
        Trace.endSection();
        return vpxDecoder;
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "LibvpxVideoRenderer";
    }

    @Override // U0.AbstractC0335a
    public final void h(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws p179x0.a {
        VpxDecoder vpxDecoder = this.f31700p0;
        if (vpxDecoder == null) {
            throw new p179x0.a("Failed to render output buffer to surface: decoder is not initialized.");
        }
        vpxDecoder.d(videoDecoderOutputBuffer, surface);
        videoDecoderOutputBuffer.release();
    }

    @Override // U0.AbstractC0335a
    public final void i(int i8) {
        VpxDecoder vpxDecoder = this.f31700p0;
        if (vpxDecoder != null) {
            vpxDecoder.f9445d = i8;
        }
    }

    @Override // B0.D0
    public final int supportsFormat(C3136t c3136t) {
        if (!VpxLibrary.f9446a.isAvailable() || !"video/x-vnd.on2.vp9".equalsIgnoreCase(c3136t.f27041o)) {
            return O.o(0, 0, 0, 0);
        }
        int i8 = c3136t.f27025P;
        if (i8 == 0) {
            return 148;
        }
        if (i8 == 1 || i8 != VpxLibrary.f9447b) {
            return O.o(2, 0, 0, 0);
        }
        return 148;
    }
}
