package p081k1;

import p000a.r;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class h extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f25913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f25914b;

    public h(long j8, long j9) {
        this.f25913a = j8;
        this.f25914b = j9;
    }

    public static long a(long j8, E e8) {
        long jZ = e8.z();
        if ((128 & jZ) != 0) {
            return 8589934591L & ((((jZ & 1) << 32) | e8.B()) + j8);
        }
        return -9223372036854775807L;
    }

    @Override // p081k1.b
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 TimeSignalCommand { ptsTime=");
        sb.append(this.f25913a);
        sb.append(", playbackPositionUs= ");
        return r.i(sb, this.f25914b, " }");
    }
}
