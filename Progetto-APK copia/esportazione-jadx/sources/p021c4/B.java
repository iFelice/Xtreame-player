package p021c4;

/* JADX INFO: loaded from: classes.dex */
public abstract class B extends AbstractC0623z {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f10688H;

    public B(C0597l0 c0597l0) {
        super(c0597l0);
        ((C0597l0) this.f10616G).e();
    }

    public final void n() {
        if (!this.f10688H) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void o() {
        if (this.f10688H) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (p()) {
            return;
        }
        ((C0597l0) this.f10616G).f11281l0.incrementAndGet();
        this.f10688H = true;
    }

    public abstract boolean p();
}
