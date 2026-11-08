package D0;

import android.media.AudioTrack;

/* JADX INFO: loaded from: classes.dex */
public final class P extends AudioTrack.StreamEventCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q f1786a;

    public P(Q q7) {
        this.f1786a = q7;
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onDataRequest(AudioTrack audioTrack, int i8) {
        S s7;
        InterfaceC0128s interfaceC0128s;
        if (audioTrack.equals(this.f1786a.f1789c.f1858y) && (interfaceC0128s = (s7 = this.f1786a.f1789c).f1854u) != null && s7.f1817Y) {
            interfaceC0128s.C();
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onPresentationEnded(AudioTrack audioTrack) {
        if (audioTrack.equals(this.f1786a.f1789c.f1858y)) {
            this.f1786a.f1789c.f1816X = true;
        }
    }

    @Override // android.media.AudioTrack.StreamEventCallback
    public final void onTearDown(AudioTrack audioTrack) {
        S s7;
        InterfaceC0128s interfaceC0128s;
        if (audioTrack.equals(this.f1786a.f1789c.f1858y) && (interfaceC0128s = (s7 = this.f1786a.f1789c).f1854u) != null && s7.f1817Y) {
            interfaceC0128s.C();
        }
    }
}
