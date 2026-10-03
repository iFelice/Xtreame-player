package Q;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f5973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f5974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f5975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f5976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f5977g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f5978h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5979i;

    public final float a(long j8) {
        long j9 = this.f5975e;
        if (j8 < j9) {
            return 0.0f;
        }
        long j10 = this.f5977g;
        if (j10 < 0 || j8 < j10) {
            return d.b((j8 - j9) / this.f5971a, 0.0f, 1.0f) * 0.5f;
        }
        float f8 = this.f5978h;
        return (d.b((j8 - j10) / this.f5979i, 0.0f, 1.0f) * f8) + (1.0f - f8);
    }
}
