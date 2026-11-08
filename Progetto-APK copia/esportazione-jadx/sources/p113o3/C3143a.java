package p113o3;

/* JADX INFO: renamed from: o3.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3143a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f27937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f27938b;

    public final synchronized float a() {
        if (!e()) {
            return 1.0f;
        }
        return this.f27938b;
    }

    public final synchronized void b(boolean z7) {
        this.f27937a = z7;
    }

    public final synchronized void c(float f8) {
        this.f27938b = f8;
    }

    public final synchronized boolean d() {
        return this.f27937a;
    }

    public final synchronized boolean e() {
        return this.f27938b >= 0.0f;
    }
}
