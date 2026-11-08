package androidx.media3.decoder.mpegh;

import B0.C0055j;
import D0.B;
import D0.InterfaceC0125o;
import D0.InterfaceC0131v;
import android.os.Handler;
import android.os.Trace;
import androidx.media3.decoder.CryptoConfig;
import java.util.Objects;
import p094m0.C3135s;
import p094m0.C3136t;
import p094m0.O;
import p102n0.g;

/* JADX INFO: loaded from: classes.dex */
public final class MpeghAudioRenderer extends B {
    private static final int NUM_BUFFERS = 16;
    private static final String TAG = "MpeghAudioRenderer";

    public MpeghAudioRenderer() {
        this((Handler) null, (InterfaceC0125o) null, new g[0]);
    }

    @Override // D0.B
    public C0055j canReuseDecoder(String str, C3136t c3136t, C3136t c3136t2) {
        return (Objects.equals(c3136t.f27041o, c3136t2.f27041o) && Objects.equals(c3136t.f27041o, "audio/mhm1")) ? new C0055j(str, c3136t, c3136t2, 3, 0) : super.canReuseDecoder(str, c3136t, c3136t2);
    }

    @Override // B0.AbstractC0051h
    public /* bridge */ /* synthetic */ void enableMayRenderStartOfStream() {
    }

    @Override // B0.AbstractC0051h, B0.D0
    public String getName() {
        return TAG;
    }

    @Override // B0.AbstractC0051h
    public /* bridge */ /* synthetic */ void setPlaybackSpeed(float f8, float f9) {
    }

    @Override // D0.B
    public int supportsFormatInternal(C3136t c3136t) {
        if (MpeghLibrary.isAvailable()) {
            return (Objects.equals(c3136t.f27041o, "audio/mhm1") || Objects.equals(c3136t.f27041o, "audio/mha1")) ? 4 : 0;
        }
        return 0;
    }

    public MpeghAudioRenderer(Handler handler, InterfaceC0125o interfaceC0125o, g... gVarArr) {
        super(handler, interfaceC0125o, gVarArr);
    }

    @Override // D0.B
    public MpeghDecoder createDecoder(C3136t c3136t, CryptoConfig cryptoConfig) {
        Trace.beginSection("createMpeghDecoder");
        MpeghDecoder mpeghDecoder = new MpeghDecoder(c3136t, 16, 16);
        Trace.endSection();
        return mpeghDecoder;
    }

    @Override // D0.B
    public C3136t getOutputFormat(MpeghDecoder mpeghDecoder) {
        C3135s c3135s = new C3135s();
        c3135s.f26973F = mpeghDecoder.getChannelCount();
        c3135s.f26974G = mpeghDecoder.getSampleRate();
        c3135s.f26996n = O.p("audio/raw");
        c3135s.f26975H = 2;
        return c3135s.a();
    }

    public MpeghAudioRenderer(Handler handler, InterfaceC0125o interfaceC0125o, InterfaceC0131v interfaceC0131v) {
        super(handler, interfaceC0125o, interfaceC0131v);
    }
}
