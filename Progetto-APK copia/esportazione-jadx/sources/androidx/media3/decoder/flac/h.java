package androidx.media3.decoder.flac;

import W0.E;
import W0.F;
import W0.G;

/* JADX INFO: loaded from: classes.dex */
public final class h implements F {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f9419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FlacDecoderJni f9420b;

    public h(long j8, FlacDecoderJni flacDecoderJni) {
        this.f9419a = j8;
        this.f9420b = flacDecoderJni;
    }

    @Override // W0.F
    public final boolean f() {
        return true;
    }

    @Override // W0.F
    public final E k(long j8) {
        E seekPoints = this.f9420b.getSeekPoints(j8);
        if (seekPoints != null) {
            return seekPoints;
        }
        G g8 = G.f7326c;
        return new E(g8, g8);
    }

    @Override // W0.F
    public final long m() {
        return this.f9419a;
    }
}
