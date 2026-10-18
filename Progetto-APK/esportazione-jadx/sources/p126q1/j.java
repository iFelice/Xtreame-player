package p126q1;

import java.util.List;
import p171w0.i;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends i implements d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public d f29553G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f29554H;

    @Override // p126q1.d
    public final int a(long j8) {
        d dVar = this.f29553G;
        dVar.getClass();
        return dVar.a(j8 - this.f29554H);
    }

    @Override // p126q1.d
    public final long b(int i8) {
        d dVar = this.f29553G;
        dVar.getClass();
        return dVar.b(i8) + this.f29554H;
    }

    @Override // p126q1.d
    public final List c(long j8) {
        d dVar = this.f29553G;
        dVar.getClass();
        return dVar.c(j8 - this.f29554H);
    }

    @Override // p171w0.i, p171w0.a
    public final void clear() {
        super.clear();
        this.f29553G = null;
    }

    @Override // p126q1.d
    public final int d() {
        d dVar = this.f29553G;
        dVar.getClass();
        return dVar.d();
    }
}
