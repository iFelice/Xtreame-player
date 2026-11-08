package androidx.media3.decoder.flac;

import W0.C0376i;
import W0.InterfaceC0377j;
import W0.t;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class b implements InterfaceC0377j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final FlacDecoderJni f9412G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final c f9413H;

    public b(FlacDecoderJni flacDecoderJni, c cVar) {
        this.f9412G = flacDecoderJni;
        this.f9413H = cVar;
    }

    @Override // W0.InterfaceC0377j
    public final C0376i a(t tVar, long j8) throws IOException {
        C0376i c0376i = C0376i.f7420d;
        c cVar = this.f9413H;
        ByteBuffer byteBuffer = cVar.f9414a;
        long jR = tVar.r();
        FlacDecoderJni flacDecoderJni = this.f9412G;
        flacDecoderJni.reset(jR);
        try {
            flacDecoderJni.decodeSampleWithBacktrackPosition(byteBuffer, jR);
            if (byteBuffer.limit() == 0) {
                return c0376i;
            }
            long lastFrameFirstSampleIndex = flacDecoderJni.getLastFrameFirstSampleIndex();
            long nextFrameFirstSampleIndex = flacDecoderJni.getNextFrameFirstSampleIndex();
            long decodePosition = flacDecoderJni.getDecodePosition();
            if (lastFrameFirstSampleIndex > j8 || nextFrameFirstSampleIndex <= j8) {
                return nextFrameFirstSampleIndex <= j8 ? new C0376i(-2, nextFrameFirstSampleIndex, decodePosition) : new C0376i(-1, lastFrameFirstSampleIndex, jR);
            }
            cVar.f9415b = flacDecoderJni.getLastFrameTimestamp();
            return C0376i.a(tVar.r());
        } catch (g unused) {
            return c0376i;
        }
    }

    @Override // W0.InterfaceC0377j
    public final /* synthetic */ void e() {
    }
}
