package p156u;

import M.c;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public class e implements c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30352G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object[] f30353H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f30354I;

    public e(int i8, int i9) {
        this.f30352G = i9;
        if (i9 != 1) {
            if (i8 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.f30353H = new Object[i8];
        } else {
            if (i8 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0".toString());
            }
            this.f30353H = new Object[i8];
        }
    }

    @Override // M.c
    public boolean a(Object obj) {
        boolean z7;
        int i8 = this.f30352G;
        Object[] objArr = this.f30353H;
        switch (i8) {
            case 0:
                int i9 = this.f30354I;
                if (i9 >= objArr.length) {
                    return false;
                }
                objArr[i9] = obj;
                this.f30354I = i9 + 1;
                return true;
            default:
                q0.h(obj, "instance");
                int i10 = this.f30354I;
                int i11 = 0;
                while (true) {
                    if (i11 >= i10) {
                        z7 = false;
                    } else if (objArr[i11] == obj) {
                        z7 = true;
                    } else {
                        i11++;
                    }
                }
                if (!(!z7)) {
                    throw new IllegalStateException("Already in the pool!".toString());
                }
                int i12 = this.f30354I;
                if (i12 >= objArr.length) {
                    return false;
                }
                objArr[i12] = obj;
                this.f30354I = i12 + 1;
                return true;
        }
    }

    @Override // M.c
    public Object h() {
        int i8 = this.f30352G;
        Object[] objArr = this.f30353H;
        switch (i8) {
            case 0:
                int i9 = this.f30354I;
                if (i9 <= 0) {
                    return null;
                }
                int i10 = i9 - 1;
                Object obj = objArr[i10];
                objArr[i10] = null;
                this.f30354I = i10;
                return obj;
            default:
                int i11 = this.f30354I;
                if (i11 <= 0) {
                    return null;
                }
                int i12 = i11 - 1;
                Object obj2 = objArr[i12];
                q0.f(obj2, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
                objArr[i12] = null;
                this.f30354I--;
                return obj2;
        }
    }
}
