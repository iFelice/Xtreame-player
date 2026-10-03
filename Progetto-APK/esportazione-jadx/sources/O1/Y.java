package O1;

/* JADX INFO: loaded from: classes.dex */
public final class Y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f5318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f5320g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5321h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5322i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f5323j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5324k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5325l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f5326m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5327n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5328o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5329p;

    public final void a(int i8) {
        if ((this.f5317d & i8) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i8) + " but it is " + Integer.toBinaryString(this.f5317d));
    }

    public final int b() {
        return this.f5320g ? this.f5315b - this.f5316c : this.f5318e;
    }

    public final String toString() {
        return "State{mTargetPosition=" + this.f5314a + ", mData=null, mItemCount=" + this.f5318e + ", mIsMeasuring=" + this.f5322i + ", mPreviousLayoutItemCount=" + this.f5315b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f5316c + ", mStructureChanged=" + this.f5319f + ", mInPreLayout=" + this.f5320g + ", mRunSimpleAnimations=" + this.f5323j + ", mRunPredictiveAnimations=" + this.f5324k + '}';
    }
}
