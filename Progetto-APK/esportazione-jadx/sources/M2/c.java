package M2;

import P2.o;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public abstract class c implements i {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f4779G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f4780H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public L2.c f4781I;

    public c() {
        if (!o.j(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.f4779G = Integer.MIN_VALUE;
        this.f4780H = Integer.MIN_VALUE;
    }

    @Override // M2.i
    public final void b(h hVar) throws Throwable {
        ((L2.h) hVar).l(this.f4779G, this.f4780H);
    }

    @Override // M2.i
    public final void c(L2.c cVar) {
        this.f4781I = cVar;
    }

    @Override // M2.i
    public final L2.c h() {
        return this.f4781I;
    }

    @Override // J2.j
    public final void e() {
    }

    @Override // J2.j
    public final void j() {
    }

    @Override // J2.j
    public final void onDestroy() {
    }

    @Override // M2.i
    public void d(Drawable drawable) {
    }

    @Override // M2.i
    public final void f(h hVar) {
    }

    @Override // M2.i
    public final void g(Drawable drawable) {
    }
}
