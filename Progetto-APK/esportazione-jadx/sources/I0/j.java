package I0;

import p094m0.C3131n;

/* JADX INFO: loaded from: classes.dex */
public abstract class j implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f3862G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final i f3863H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final long f3864I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f3865J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final long f3866K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C3131n f3867L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final String f3868M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f3869N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final long f3870O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final long f3871P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f3872Q;

    public j(String str, i iVar, long j8, int i8, long j9, C3131n c3131n, String str2, String str3, long j10, long j11, boolean z7) {
        this.f3862G = str;
        this.f3863H = iVar;
        this.f3864I = j8;
        this.f3865J = i8;
        this.f3866K = j9;
        this.f3867L = c3131n;
        this.f3868M = str2;
        this.f3869N = str3;
        this.f3870O = j10;
        this.f3871P = j11;
        this.f3872Q = z7;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        Long l4 = (Long) obj;
        long jLongValue = l4.longValue();
        long j8 = this.f3866K;
        if (j8 > jLongValue) {
            return 1;
        }
        return j8 < l4.longValue() ? -1 : 0;
    }
}
