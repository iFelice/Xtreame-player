package A1;

import W0.L;
import com.google.android.gms.internal.ads.InterfaceC1234e0;

/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f512c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f513d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f514e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f515f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f516g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f517h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f518i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f519j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f520k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f521l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Object f522m;

    public final void a(int i8) {
        long j8 = this.f520k;
        if (j8 != -9223372036854775807L) {
            long j9 = this.f510a;
            long j10 = this.f519j;
            if (j9 == j10) {
                return;
            }
            boolean z7 = this.f521l;
            ((L) this.f522m).d(j8, z7 ? 1 : 0, (int) (j9 - j10), i8, null);
        }
    }

    public final void b(int i8) {
        long j8 = this.f520k;
        if (j8 == -9223372036854775807L) {
            return;
        }
        boolean z7 = this.f521l;
        long j9 = this.f510a - this.f519j;
        ((InterfaceC1234e0) this.f522m).b(j8, z7 ? 1 : 0, (int) j9, i8, null);
    }
}
