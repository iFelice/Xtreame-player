package M;

import p156u.e;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class d extends e {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f4734J;

    public d(int i8) {
        super(i8, 1);
        this.f4734J = new Object();
    }

    @Override // p156u.e, M.c
    public final boolean a(Object obj) {
        boolean zA;
        q0.h(obj, "instance");
        synchronized (this.f4734J) {
            zA = super.a(obj);
        }
        return zA;
    }

    @Override // p156u.e, M.c
    public final Object h() {
        Object objH;
        synchronized (this.f4734J) {
            objH = super.h();
        }
        return objH;
    }
}
