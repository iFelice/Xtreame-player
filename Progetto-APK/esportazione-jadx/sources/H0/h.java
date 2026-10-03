package H0;

import android.os.SystemClock;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class h extends R0.c {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f3449g;

    @Override // R0.t
    public final void a(long j8, long j9, List list, P0.q[] qVarArr) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (p(this.f3449g, jElapsedRealtime)) {
            for (int i8 = this.f6126b - 1; i8 >= 0; i8--) {
                if (!p(i8, jElapsedRealtime)) {
                    this.f3449g = i8;
                    return;
                }
            }
            throw new IllegalStateException();
        }
    }

    @Override // R0.t
    public final int b() {
        return this.f3449g;
    }

    @Override // R0.t
    public final int f() {
        return 0;
    }

    @Override // R0.t
    public final Object h() {
        return null;
    }
}
