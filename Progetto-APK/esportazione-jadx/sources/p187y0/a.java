package p187y0;

import D0.B;
import D0.InterfaceC0125o;
import D0.InterfaceC0131v;
import android.os.Handler;
import android.os.Trace;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.opus.OpusDecoder;
import androidx.media3.decoder.opus.OpusLibrary;
import com.google.android.gms.internal.measurement.H1;
import p094m0.C3136t;
import p117p0.M;
import p171w0.d;
import p179x0.b;

/* JADX INFO: loaded from: classes.dex */
public class a extends B {
    public a(Handler handler, InterfaceC0125o interfaceC0125o, InterfaceC0131v interfaceC0131v) {
        super(handler, interfaceC0125o, interfaceC0131v);
    }

    @Override // D0.B
    public final d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createOpusDecoder");
        boolean z7 = getSinkFormatSupport(M.B(4, c3136t.f27016G, c3136t.f27017H)) == 2;
        int i8 = c3136t.f27042p;
        if (i8 == -1) {
            i8 = 5760;
        }
        OpusDecoder opusDecoder = new OpusDecoder(i8, c3136t.f27044r, cryptoConfig, z7);
        opusDecoder.f9438g = false;
        Trace.endSection();
        return opusDecoder;
    }

    @Override // D0.B
    public final int[] getChannelMapping(d dVar) {
        return H1.q(((OpusDecoder) dVar).f9433b);
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "LibopusAudioRenderer";
    }

    @Override // D0.B
    public final C3136t getOutputFormat(d dVar) {
        OpusDecoder opusDecoder = (OpusDecoder) dVar;
        return M.B(opusDecoder.f9432a ? 4 : 2, opusDecoder.f9433b, 48000);
    }

    @Override // D0.B
    public final int supportsFormatInternal(C3136t c3136t) {
        int i8 = c3136t.f27025P;
        b bVar = OpusLibrary.f9440a;
        boolean z7 = i8 == 0 || (i8 != 1 && i8 == OpusLibrary.f9441b);
        if (!OpusLibrary.f9440a.isAvailable() || !"audio/opus".equalsIgnoreCase(c3136t.f27041o)) {
            return 0;
        }
        if (sinkSupportsFormat(M.B(2, c3136t.f27016G, c3136t.f27017H))) {
            return !z7 ? 2 : 4;
        }
        return 1;
    }
}
