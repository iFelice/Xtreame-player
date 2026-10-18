package p021c4;

/* JADX INFO: loaded from: classes.dex */
public abstract class u1 extends q1 {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f11381I;

    public u1(A1 a8) {
        super(a8);
        this.f11343H.f10669X++;
    }

    public final void n() {
        if (!this.f11381I) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void o() {
        if (this.f11381I) {
            throw new IllegalStateException("Can't initialize twice");
        }
        p();
        this.f11343H.f10670Y++;
        this.f11381I = true;
    }

    public abstract boolean p();
}
