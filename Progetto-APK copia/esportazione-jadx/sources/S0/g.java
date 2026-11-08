package S0;

import W0.t;
import com.google.android.gms.internal.ads.C1534jr;
import com.google.android.gms.internal.ads.M;
import com.google.android.gms.internal.measurement.H1;
import p117p0.E;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6352b;

    public /* synthetic */ g(int i8, long j8, int i9) {
        this.f6351a = i8;
        this.f6352b = j8;
    }

    public static g b(t tVar, E e8) {
        tVar.c(0, e8.f28035a, 8);
        e8.L(0);
        return new g(e8.l(), e8.q(), (Object) null);
    }

    public static g c(M m7, C1534jr c1534jr) {
        m7.g(0, c1534jr.f19515a, 8);
        c1534jr.j(0);
        return new g(c1534jr.r(), c1534jr.C(), (Object) null);
    }

    public final boolean a() {
        int i8 = this.f6351a;
        return i8 == 0 || i8 == 1;
    }

    public /* synthetic */ g(int i8, long j8, Object obj) {
        this.f6351a = i8;
        this.f6352b = j8;
    }

    public g(int i8, long j8) {
        H1.d(j8 >= 0);
        this.f6351a = i8;
        this.f6352b = j8;
    }
}
