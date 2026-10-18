package P1;

import java.util.Collections;
import java.util.Set;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n f5797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f5798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f5799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f5800d;

    public k(n nVar, int[] iArr, String[] strArr) {
        Set setSingleton;
        this.f5797a = nVar;
        this.f5798b = iArr;
        this.f5799c = strArr;
        if (!(strArr.length == 0)) {
            setSingleton = Collections.singleton(strArr[0]);
            q0.g(setSingleton, "singleton(...)");
        } else {
            setSingleton = p162u6.s.f30544G;
        }
        this.f5800d = setSingleton;
        if (iArr.length != strArr.length) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    public final void a(Set set) {
        q0.h(set, "invalidatedTablesIds");
        int[] iArr = this.f5798b;
        int length = iArr.length;
        Set setJ = p162u6.s.f30544G;
        if (length != 0) {
            int i8 = 0;
            if (length != 1) {
                p169v6.i iVar = new p169v6.i();
                int length2 = iArr.length;
                int i9 = 0;
                while (i8 < length2) {
                    int i10 = i9 + 1;
                    if (set.contains(Integer.valueOf(iArr[i8]))) {
                        iVar.add(this.f5799c[i9]);
                    }
                    i8++;
                    i9 = i10;
                }
                setJ = p190y4.k.j(iVar);
            } else if (set.contains(Integer.valueOf(iArr[0]))) {
                setJ = this.f5800d;
            }
        }
        if (!setJ.isEmpty()) {
            this.f5797a.a(setJ);
        }
    }
}
