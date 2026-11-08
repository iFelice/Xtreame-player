package P0;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements q {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f5699G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f5700H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public long f5701I;

    public b(long j8, long j9) {
        this.f5699G = j8;
        this.f5700H = j9;
        this.f5701I = j8 - 1;
    }

    public final void a() {
        long j8 = this.f5701I;
        if (j8 < this.f5699G || j8 > this.f5700H) {
            throw new NoSuchElementException();
        }
    }

    @Override // P0.q
    public final boolean next() {
        long j8 = this.f5701I + 1;
        this.f5701I = j8;
        return !(j8 > this.f5700H);
    }
}
