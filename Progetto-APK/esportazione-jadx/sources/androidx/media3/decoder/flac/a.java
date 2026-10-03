package androidx.media3.decoder.flac;

import W0.InterfaceC0375h;
import androidx.media3.extractor.FlacStreamMetadata;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements InterfaceC0375h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f9410G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ FlacStreamMetadata f9411H;

    public /* synthetic */ a(int i8, FlacStreamMetadata flacStreamMetadata) {
        this.f9410G = i8;
        this.f9411H = flacStreamMetadata;
    }

    @Override // W0.InterfaceC0375h
    public final long b(long j8) {
        int i8 = this.f9410G;
        return this.f9411H.getSampleNumber(j8);
    }
}
