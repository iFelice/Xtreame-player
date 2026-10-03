package androidx.media3.decoder.flac;

import W0.AbstractC0378k;
import androidx.media3.extractor.FlacStreamMetadata;

/* JADX INFO: loaded from: classes.dex */
public final class d extends AbstractC0378k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FlacDecoderJni f9416e;

    public d(FlacStreamMetadata flacStreamMetadata, long j8, long j9, FlacDecoderJni flacDecoderJni, c cVar) {
        super(new a(0, flacStreamMetadata), new b(flacDecoderJni, cVar), flacStreamMetadata.getDurationUs(), flacStreamMetadata.totalSamples, j8, j9, flacStreamMetadata.getApproxBytesPerFrame(), Math.max(6, flacStreamMetadata.minFrameSize));
        this.f9416e = flacDecoderJni;
    }

    @Override // W0.AbstractC0378k
    public final void b(long j8, boolean z7) {
        if (z7) {
            return;
        }
        this.f9416e.reset(j8);
    }
}
