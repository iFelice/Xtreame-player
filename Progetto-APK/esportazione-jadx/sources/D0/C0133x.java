package D0;

import android.media.AudioTrack;

/* JADX INFO: renamed from: D0.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0133x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0132w f1983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f1984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final N f1985c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1986d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f1987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f1988f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f1989g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f1990h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f1991i;

    public C0133x(AudioTrack audioTrack, N n7) {
        this.f1983a = new C0132w(audioTrack);
        this.f1984b = audioTrack.getSampleRate();
        this.f1985c = n7;
        a(0);
    }

    public final void a(int i8) {
        this.f1986d = i8;
        if (i8 == 0) {
            this.f1989g = 0L;
            this.f1990h = -1L;
            this.f1991i = -9223372036854775807L;
            this.f1987e = System.nanoTime() / 1000;
            this.f1988f = 10000L;
            return;
        }
        if (i8 == 1) {
            this.f1988f = 10000L;
            return;
        }
        if (i8 == 2 || i8 == 3) {
            this.f1988f = 10000000L;
        } else {
            if (i8 != 4) {
                throw new IllegalStateException();
            }
            this.f1988f = 500000L;
        }
    }
}
