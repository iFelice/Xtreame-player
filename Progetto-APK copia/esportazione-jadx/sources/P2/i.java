package P2;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public abstract class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final double f5893a = 1.0d / Math.pow(10.0d, 6.0d);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f5894b = 0;

    public static double a(long j8) {
        return (SystemClock.elapsedRealtimeNanos() - j8) * f5893a;
    }
}
