package H5;

import W0.C0371d;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes2.dex */
public final class d extends x0 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f3778K;

    public d(b bVar, boolean z7) {
        super(bVar);
        this.f3778K = z7;
    }

    public final C0371d I() {
        C0371d[] c0371dArr = (C0371d[]) this.f22391I;
        a aVar = new a();
        a aVar2 = new a();
        a aVar3 = new a();
        a aVar4 = new a();
        for (C0371d c0371d : c0371dArr) {
            if (c0371d != null) {
                c0371d.c();
                int i8 = c0371d.f7391e % 30;
                int i9 = c0371d.f7392f;
                if (!this.f3778K) {
                    i9 += 2;
                }
                int i10 = i9 % 3;
                if (i10 == 0) {
                    aVar2.b((i8 * 3) + 1);
                } else if (i10 == 1) {
                    aVar4.b(i8 / 3);
                    aVar3.b(i8 % 3);
                } else if (i10 == 2) {
                    aVar.b(i8 + 1);
                }
            }
        }
        if (aVar.a().length == 0 || aVar2.a().length == 0 || aVar3.a().length == 0 || aVar4.a().length == 0 || aVar.a()[0] <= 0 || aVar2.a()[0] + aVar3.a()[0] < 3 || aVar2.a()[0] + aVar3.a()[0] > 90) {
            return null;
        }
        C0371d c0371d2 = new C0371d(aVar.a()[0], aVar2.a()[0], aVar3.a()[0], aVar4.a()[0], 2, 0);
        J(c0371dArr, c0371d2);
        return c0371d2;
    }

    public final void J(C0371d[] c0371dArr, C0371d c0371d) {
        for (int i8 = 0; i8 < c0371dArr.length; i8++) {
            C0371d c0371d2 = c0371dArr[i8];
            if (c0371d2 != null) {
                int i9 = c0371d2.f7391e % 30;
                int i10 = c0371d2.f7392f;
                if (i10 > c0371d.f7392f) {
                    c0371dArr[i8] = null;
                } else {
                    if (!this.f3778K) {
                        i10 += 2;
                    }
                    int i11 = i10 % 3;
                    if (i11 != 0) {
                        if (i11 != 1) {
                            if (i11 == 2 && i9 + 1 != c0371d.f7388b) {
                                c0371dArr[i8] = null;
                            }
                        } else if (i9 / 3 != c0371d.f7389c || i9 % 3 != c0371d.f7391e) {
                            c0371dArr[i8] = null;
                        }
                    } else if ((i9 * 3) + 1 != c0371d.f7390d) {
                        c0371dArr[i8] = null;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.x0
    public final String toString() {
        return "IsLeft: " + this.f3778K + '\n' + super.toString();
    }
}
