package B0;

import android.media.MediaFormat;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final class M implements U0.B, V0.a, y0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public U0.B f744G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public V0.a f745H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public U0.B f746I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public V0.a f747J;

    @Override // V0.a
    public final void a(long j8, float[] fArr) {
        V0.a aVar = this.f747J;
        if (aVar != null) {
            aVar.a(j8, fArr);
        }
        V0.a aVar2 = this.f745H;
        if (aVar2 != null) {
            aVar2.a(j8, fArr);
        }
    }

    @Override // U0.B
    public final void b(long j8, long j9, C3136t c3136t, MediaFormat mediaFormat) {
        U0.B b8 = this.f746I;
        if (b8 != null) {
            b8.b(j8, j9, c3136t, mediaFormat);
        }
        U0.B b9 = this.f744G;
        if (b9 != null) {
            b9.b(j8, j9, c3136t, mediaFormat);
        }
    }

    @Override // V0.a
    public final void c() {
        V0.a aVar = this.f747J;
        if (aVar != null) {
            aVar.c();
        }
        V0.a aVar2 = this.f745H;
        if (aVar2 != null) {
            aVar2.c();
        }
    }

    @Override // B0.y0
    public final void handleMessage(int i8, Object obj) {
        if (i8 == 7) {
            this.f744G = (U0.B) obj;
            return;
        }
        if (i8 == 8) {
            this.f745H = (V0.a) obj;
            return;
        }
        if (i8 != 10000) {
            return;
        }
        V0.k kVar = (V0.k) obj;
        if (kVar == null) {
            this.f746I = null;
            this.f747J = null;
        } else {
            this.f746I = kVar.getVideoFrameMetadataListener();
            this.f747J = kVar.getCameraMotionListener();
        }
    }
}
