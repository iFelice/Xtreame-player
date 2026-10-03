package androidx.media3.decoder.flac;

import D0.B;
import D0.InterfaceC0125o;
import D0.InterfaceC0131v;
import android.os.Handler;
import android.os.Trace;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.extractor.FlacStreamMetadata;
import java.nio.ByteOrder;
import java.util.List;
import p094m0.C3136t;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class k extends B {
    public k(Handler handler, InterfaceC0125o interfaceC0125o, InterfaceC0131v interfaceC0131v) {
        super(handler, interfaceC0125o, interfaceC0131v);
    }

    @Override // D0.B
    public final p171w0.d createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createFlacDecoder");
        e eVar = new e(c3136t.f27042p, c3136t.f27044r);
        Trace.endSection();
        return eVar;
    }

    @Override // B0.AbstractC0051h, B0.D0
    public final String getName() {
        return "LibflacAudioRenderer";
    }

    @Override // D0.B
    public final C3136t getOutputFormat(p171w0.d dVar) {
        FlacStreamMetadata flacStreamMetadata = ((e) dVar).f9417a;
        int i8 = flacStreamMetadata.bitsPerSample;
        String str = M.f28050a;
        return M.B(M.A(i8, ByteOrder.LITTLE_ENDIAN), flacStreamMetadata.channels, flacStreamMetadata.sampleRate);
    }

    @Override // D0.B
    public final int supportsFormatInternal(C3136t c3136t) {
        C3136t c3136tB;
        if (!j.isAvailable() || !"audio/flac".equalsIgnoreCase(c3136t.f27041o)) {
            return 0;
        }
        List list = c3136t.f27044r;
        if (list.isEmpty()) {
            c3136tB = M.B(2, c3136t.f27016G, c3136t.f27017H);
        } else {
            FlacStreamMetadata flacStreamMetadata = new FlacStreamMetadata((byte[]) list.get(0), 8);
            int i8 = flacStreamMetadata.bitsPerSample;
            String str = M.f28050a;
            c3136tB = M.B(M.A(i8, ByteOrder.LITTLE_ENDIAN), flacStreamMetadata.channels, flacStreamMetadata.sampleRate);
        }
        if (sinkSupportsFormat(c3136tB)) {
            return c3136t.f27025P != 0 ? 2 : 4;
        }
        return 1;
    }
}
