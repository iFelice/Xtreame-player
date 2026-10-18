package p102n0;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes.dex */
public abstract class h implements g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f27327b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e f27328c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e f27329d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e f27330e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ByteBuffer f27331f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ByteBuffer f27332g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f27333h;

    public h() {
        ByteBuffer byteBuffer = g.f27326a;
        this.f27331f = byteBuffer;
        this.f27332g = byteBuffer;
        e eVar = e.f27321e;
        this.f27329d = eVar;
        this.f27330e = eVar;
        this.f27327b = eVar;
        this.f27328c = eVar;
    }

    @Override // p102n0.g
    public final void a() {
        ByteBuffer byteBuffer = g.f27326a;
        this.f27332g = byteBuffer;
        this.f27333h = false;
        this.f27331f = byteBuffer;
        e eVar = e.f27321e;
        this.f27329d = eVar;
        this.f27330e = eVar;
        this.f27327b = eVar;
        this.f27328c = eVar;
        j();
    }

    @Override // p102n0.g
    public boolean b() {
        return this.f27333h && this.f27332g == g.f27326a;
    }

    @Override // p102n0.g
    public ByteBuffer c() {
        ByteBuffer byteBuffer = this.f27332g;
        this.f27332g = g.f27326a;
        return byteBuffer;
    }

    @Override // p102n0.g
    public final void e() {
        this.f27333h = true;
        i();
    }

    @Override // p102n0.g
    public final e f(e eVar) {
        this.f27329d = eVar;
        this.f27330e = g(eVar);
        return isActive() ? this.f27330e : e.f27321e;
    }

    @Override // p102n0.g
    public final void flush() {
        this.f27332g = g.f27326a;
        this.f27333h = false;
        this.f27327b = this.f27329d;
        this.f27328c = this.f27330e;
        h();
    }

    public abstract e g(e eVar);

    @Override // p102n0.g
    public boolean isActive() {
        return this.f27330e != e.f27321e;
    }

    public final ByteBuffer k(int i8) {
        if (this.f27331f.capacity() < i8) {
            this.f27331f = ByteBuffer.allocateDirect(i8).order(ByteOrder.nativeOrder());
        } else {
            this.f27331f.clear();
        }
        ByteBuffer byteBuffer = this.f27331f;
        this.f27332g = byteBuffer;
        return byteBuffer;
    }

    public void h() {
    }

    public void i() {
    }

    public void j() {
    }
}
