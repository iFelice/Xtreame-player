package N;

import android.view.View;
import android.view.ViewGroup;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class Q extends p199z6.g implements C6.p, D6.f {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f4853H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4854I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public /* synthetic */ Object f4855J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ View f4856K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Q(View view, p185x6.e eVar) {
        super(eVar);
        this.f4856K = view;
        this.f4853H = 2;
    }

    @Override // C6.p
    public final Object c(Object obj, Object obj2) {
        return ((Q) d((H6.d) obj, (p185x6.e) obj2)).f(p155t6.h.f30319a);
    }

    @Override // p199z6.a
    public final p185x6.e d(Object obj, p185x6.e eVar) {
        Q q7 = new Q(this.f4856K, eVar);
        q7.f4855J = obj;
        return q7;
    }

    @Override // p199z6.a
    public final Object f(Object obj) throws Throwable {
        Object obj2;
        p192y6.a aVar = p192y6.a.f31454G;
        int i8 = this.f4854I;
        View view = this.f4856K;
        if (i8 == 0) {
            q0.H(obj);
            H6.d dVar = (H6.d) this.f4855J;
            this.f4855J = dVar;
            this.f4854I = 1;
            dVar.f3785H = view;
            dVar.f3784G = 3;
            dVar.f3787J = this;
            return aVar;
        }
        p155t6.h hVar = p155t6.h.f30319a;
        if (i8 == 1) {
            H6.d dVar2 = (H6.d) this.f4855J;
            q0.H(obj);
            if (view instanceof ViewGroup) {
                this.f4855J = null;
                this.f4854I = 2;
                dVar2.getClass();
                C0272v c0272v = new C0272v(new P((ViewGroup) view, 0));
                if (c0272v.f4925H.hasNext()) {
                    dVar2.f3786I = c0272v;
                    dVar2.f3784G = 2;
                    dVar2.f3787J = this;
                    obj2 = aVar;
                } else {
                    obj2 = hVar;
                }
                if (obj2 != aVar) {
                    obj2 = hVar;
                }
                if (obj2 == aVar) {
                    return aVar;
                }
            }
        } else {
            if (i8 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            q0.H(obj);
        }
        return hVar;
    }

    @Override // D6.f
    public final int getArity() {
        return this.f4853H;
    }

    @Override // p199z6.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        if (this.f31926G != null) {
            return super.toString();
        }
        D6.l.f2437a.getClass();
        String strA = D6.m.a(this);
        q0.g(strA, "renderLambdaToString(...)");
        return strA;
    }
}
