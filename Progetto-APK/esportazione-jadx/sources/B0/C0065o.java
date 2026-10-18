package B0;

/* JADX INFO: renamed from: B0.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0065o implements InterfaceC0046e0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final J0 f1039G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final InterfaceC0063n f1040H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public AbstractC0051h f1041I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public InterfaceC0046e0 f1042J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f1043K = true;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f1044L;

    public C0065o(InterfaceC0063n interfaceC0063n, p117p0.G g8) {
        this.f1040H = interfaceC0063n;
        this.f1039G = new J0(g8);
    }

    public final void a(AbstractC0051h abstractC0051h) {
        InterfaceC0046e0 interfaceC0046e0;
        InterfaceC0046e0 mediaClock = abstractC0051h.getMediaClock();
        if (mediaClock == null || mediaClock == (interfaceC0046e0 = this.f1042J)) {
            return;
        }
        if (interfaceC0046e0 != null) {
            throw new C0072w(2, new IllegalStateException("Multiple renderer media clocks enabled."), 1000);
        }
        this.f1042J = mediaClock;
        this.f1041I = abstractC0051h;
        mediaClock.setPlaybackParameters(this.f1039G.f739K);
    }

    @Override // B0.InterfaceC0046e0
    public final p094m0.S getPlaybackParameters() {
        InterfaceC0046e0 interfaceC0046e0 = this.f1042J;
        return interfaceC0046e0 != null ? interfaceC0046e0.getPlaybackParameters() : this.f1039G.f739K;
    }

    @Override // B0.InterfaceC0046e0
    public final long getPositionUs() {
        if (this.f1043K) {
            return this.f1039G.getPositionUs();
        }
        InterfaceC0046e0 interfaceC0046e0 = this.f1042J;
        interfaceC0046e0.getClass();
        return interfaceC0046e0.getPositionUs();
    }

    @Override // B0.InterfaceC0046e0
    public final boolean hasSkippedSilenceSinceLastCall() {
        if (this.f1043K) {
            this.f1039G.getClass();
            return false;
        }
        InterfaceC0046e0 interfaceC0046e0 = this.f1042J;
        interfaceC0046e0.getClass();
        return interfaceC0046e0.hasSkippedSilenceSinceLastCall();
    }

    @Override // B0.InterfaceC0046e0
    public final void setPlaybackParameters(p094m0.S s7) {
        InterfaceC0046e0 interfaceC0046e0 = this.f1042J;
        if (interfaceC0046e0 != null) {
            interfaceC0046e0.setPlaybackParameters(s7);
            s7 = this.f1042J.getPlaybackParameters();
        }
        this.f1039G.setPlaybackParameters(s7);
    }
}
