package androidx.media3.decoder.ffmpeg;

import D0.B;
import D0.InterfaceC0125o;
import D0.InterfaceC0131v;
import android.os.Handler;
import android.os.Trace;
import androidx.media3.decoder.CryptoConfig;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p117p0.M;
import p171w0.d;

/* JADX INFO: loaded from: classes.dex */
public final class c extends B {
    public c(Handler handler, InterfaceC0125o interfaceC0125o, InterfaceC0131v interfaceC0131v) {
        super(handler, interfaceC0125o, interfaceC0131v);
    }

    @Override // D0.B
    public final d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createFfmpegAudioDecoder");
        int i8 = c3136t.f27042p;
        if (i8 == -1) {
            i8 = 5760;
        }
        int i9 = c3136t.f27016G;
        int i10 = c3136t.f27017H;
        boolean zEquals = true;
        if (sinkSupportsFormat(M.B(2, i9, i10))) {
            zEquals = getSinkFormatSupport(M.B(4, i9, i10)) != 2 ? false : true ^ "audio/ac3".equals(c3136t.f27041o);
        }
        FfmpegAudioDecoder ffmpegAudioDecoder = new FfmpegAudioDecoder(c3136t, i8, zEquals);
        Trace.endSection();
        return ffmpegAudioDecoder;
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "FfmpegAudioRenderer";
    }

    @Override // D0.B
    public final C3136t getOutputFormat(d dVar) {
        FfmpegAudioDecoder ffmpegAudioDecoder = (FfmpegAudioDecoder) dVar;
        ffmpegAudioDecoder.getClass();
        C3135s c3135s = new C3135s();
        c3135s.f26996n = O.p("audio/raw");
        c3135s.f26973F = ffmpegAudioDecoder.f9404g;
        c3135s.f26974G = ffmpegAudioDecoder.f9405h;
        c3135s.f26975H = ffmpegAudioDecoder.f9400c;
        return c3135s.a();
    }

    @Override // D0.B
    public final int supportsFormatInternal(C3136t c3136t) {
        String str = c3136t.f27041o;
        str.getClass();
        if (!FfmpegLibrary.f9406a.isAvailable() || !O.k(str)) {
            return 0;
        }
        if (!FfmpegLibrary.d(str)) {
            return 1;
        }
        int i8 = c3136t.f27016G;
        int i9 = c3136t.f27017H;
        if (sinkSupportsFormat(M.B(2, i8, i9)) || sinkSupportsFormat(M.B(4, i8, i9))) {
            return c3136t.f27025P != 0 ? 2 : 4;
        }
        return 1;
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }
}
