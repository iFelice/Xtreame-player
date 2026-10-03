package H1;

import C6.l;
import D6.h;
import J6.C0212k;
import J6.C0222v;
import J6.G;
import J6.H;
import J6.InterfaceC0221u;
import J6.Q;
import P1.AbstractC0327a;
import T1.b;
import java.util.concurrent.CancellationException;
import p148t.i;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class a extends h implements l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3628G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f3629H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f3630I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ a(int i8, Object obj, Object obj2) {
        super(1);
        this.f3628G = i8;
        this.f3629H = obj;
        this.f3630I = obj2;
    }

    @Override // C6.l
    public final Object invoke(Object obj) throws Throwable {
        G g8;
        int i8 = this.f3628G;
        Object obj2 = this.f3630I;
        Object obj3 = this.f3629H;
        switch (i8) {
            case 0:
                Throwable th = (Throwable) obj;
                if (th == null) {
                    i iVar = (i) obj3;
                    C0222v c0222v = (C0222v) ((InterfaceC0221u) obj2);
                    c0222v.getClass();
                    Object obj4 = Q.f4219G.get(c0222v);
                    if (!(true ^ (obj4 instanceof G))) {
                        throw new IllegalStateException("This job has not completed yet".toString());
                    }
                    if (obj4 instanceof C0212k) {
                        throw ((C0212k) obj4).f4242a;
                    }
                    H h8 = obj4 instanceof H ? (H) obj4 : null;
                    if (h8 != null && (g8 = h8.f4205a) != null) {
                        obj4 = g8;
                    }
                    iVar.a(obj4);
                } else if (th instanceof CancellationException) {
                    i iVar2 = (i) obj3;
                    iVar2.f30162d = true;
                    p148t.l lVar = iVar2.f30160b;
                    if (lVar != null && lVar.f30165H.cancel(true)) {
                        iVar2.f30159a = null;
                        iVar2.f30160b = null;
                        iVar2.f30161c = null;
                    }
                } else {
                    i iVar3 = (i) obj3;
                    iVar3.f30162d = true;
                    p148t.l lVar2 = iVar3.f30160b;
                    if (lVar2 != null && lVar2.f30165H.j(th)) {
                        iVar3.f30159a = null;
                        iVar3.f30160b = null;
                        iVar3.f30161c = null;
                    }
                }
                return p155t6.h.f30319a;
            default:
                b bVar = (b) obj;
                q0.h(bVar, "db");
                AbstractC0327a abstractC0327a = (AbstractC0327a) obj3;
                abstractC0327a.getClass();
                bVar.m(null);
                abstractC0327a.getClass();
                throw null;
        }
    }
}
