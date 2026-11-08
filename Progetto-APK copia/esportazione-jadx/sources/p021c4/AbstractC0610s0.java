package p021c4;

import p018c1.d;

/* JADX INFO: renamed from: c4.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0610s0 extends d {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f11367H;

    public AbstractC0610s0(C0597l0 c0597l0) {
        super(c0597l0);
        ((C0597l0) this.f10616G).e();
    }

    public abstract boolean n();

    public final void o() {
        if (!this.f11367H) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void p() {
        if (this.f11367H) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (n()) {
            return;
        }
        ((C0597l0) this.f10616G).f11281l0.incrementAndGet();
        this.f11367H = true;
    }
}
