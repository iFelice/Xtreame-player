package H3;

import android.util.Log;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class k implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3691a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f3692b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ n f3693c;

    public /* synthetic */ k(n nVar, o oVar, int i8) {
        this.f3691a = i8;
        this.f3693c = nVar;
        this.f3692b = oVar;
    }

    @Override // H3.o
    public final void a(String str, long j8, long j9, long j10) {
        int i8 = this.f3691a;
        o oVar = this.f3692b;
        switch (i8) {
            case 0:
                if (oVar != null) {
                    oVar.a(str, j8, j9, j10);
                }
                break;
            default:
                if (oVar != null) {
                    oVar.a(str, j8, j9, j10);
                }
                break;
        }
    }

    @Override // H3.o
    public final void b(int i8, long j8, long j9, long j10, m mVar, String str) {
        int i9;
        int i10 = this.f3691a;
        n nVar = this.f3693c;
        o oVar = this.f3692b;
        switch (i10) {
            case 0:
                nVar.f3697g = null;
                if (oVar != null) {
                    oVar.b(i8, j8, j9, j10, mVar, str);
                }
                break;
            default:
                if (oVar != null) {
                    if (i8 == 2001) {
                        Object[] objArr = {Integer.valueOf(nVar.f3699i)};
                        b bVar = nVar.f3720a;
                        Log.w(bVar.f3679a, bVar.c("Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d", objArr));
                        Iterator it = ((E3.j) nVar.f3698h.f1387H).f2910i.iterator();
                        while (it.hasNext()) {
                            F3.k kVar = (F3.k) ((E3.h) it.next());
                            switch (kVar.f3221a) {
                                case 1:
                                    ((E3.d) kVar.f3222b).d();
                                    break;
                            }
                        }
                        i9 = 2001;
                    } else {
                        i9 = i8;
                    }
                    this.f3692b.b(i9, j8, j9, j10, mVar, str);
                }
                break;
        }
    }
}
