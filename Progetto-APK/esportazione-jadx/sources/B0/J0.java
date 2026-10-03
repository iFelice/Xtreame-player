package B0;

import android.os.SystemClock;
import p117p0.InterfaceC3168f;

/* JADX INFO: loaded from: classes.dex */
public final class J0 implements InterfaceC0046e0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC3168f f735G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f736H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f737I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f738J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p094m0.S f739K = p094m0.S.f26785d;

    public J0(p117p0.G g8) {
        this.f735G = g8;
    }

    public final void a(long j8) {
        this.f737I = j8;
        if (this.f736H) {
            ((p117p0.G) this.f735G).getClass();
            this.f738J = SystemClock.elapsedRealtime();
        }
    }

    public final void b() {
        if (this.f736H) {
            return;
        }
        ((p117p0.G) this.f735G).getClass();
        this.f738J = SystemClock.elapsedRealtime();
        this.f736H = true;
    }

    @Override // B0.InterfaceC0046e0
    public final p094m0.S getPlaybackParameters() {
        return this.f739K;
    }

    @Override // B0.InterfaceC0046e0
    public final long getPositionUs() {
        long j8 = this.f737I;
        if (!this.f736H) {
            return j8;
        }
        ((p117p0.G) this.f735G).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.f738J;
        p094m0.S s7 = this.f739K;
        return j8 + (s7.f26786a == 1.0f ? p117p0.M.R(jElapsedRealtime) : jElapsedRealtime * ((long) s7.f26788c));
    }

    @Override // B0.InterfaceC0046e0
    public final /* synthetic */ boolean hasSkippedSilenceSinceLastCall() {
        return false;
    }

    @Override // B0.InterfaceC0046e0
    public final void setPlaybackParameters(p094m0.S s7) {
        if (this.f736H) {
            a(getPositionUs());
        }
        this.f739K = s7;
    }
}
