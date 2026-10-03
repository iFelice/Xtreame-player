package p118p1;

import W0.F;
import W0.t;
import W0.x;
import W0.y;
import androidx.media3.extractor.FlacStreamMetadata;
import com.google.android.gms.internal.measurement.H1;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class c implements h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public FlacStreamMetadata f28147G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public y f28148H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f28149I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f28150J;

    @Override // p118p1.h
    public final long J(t tVar) {
        long j8 = this.f28150J;
        if (j8 < 0) {
            return -1L;
        }
        long j9 = -(j8 + 2);
        this.f28150J = -1L;
        return j9;
    }

    @Override // p118p1.h
    public final void L(long j8) {
        long[] jArr = this.f28148H.f7462a;
        this.f28150J = jArr[M.e(jArr, j8, true)];
    }

    @Override // p118p1.h
    public final F w() {
        H1.i(this.f28149I != -1);
        return new x(this.f28147G, 0, this.f28149I);
    }
}
