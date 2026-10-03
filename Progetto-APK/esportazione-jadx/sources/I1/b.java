package I1;

import C6.p;
import J6.InterfaceC0217p;
import android.net.Uri;
import android.view.InputEvent;
import p185x6.e;
import p199z6.h;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class b extends h implements p {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f3997K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ d f3998L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ Uri f3999M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ InputEvent f4000N;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(d dVar, Uri uri, InputEvent inputEvent, e eVar) {
        super(eVar);
        this.f3998L = dVar;
        this.f3999M = uri;
        this.f4000N = inputEvent;
    }

    @Override // C6.p
    public final Object c(Object obj, Object obj2) {
        return ((b) d((InterfaceC0217p) obj, (e) obj2)).f(p155t6.h.f30319a);
    }

    @Override // p199z6.a
    public final e d(Object obj, e eVar) {
        return new b(this.f3998L, this.f3999M, this.f4000N, eVar);
    }

    @Override // p199z6.a
    public final Object f(Object obj) throws Throwable {
        p192y6.a aVar = p192y6.a.f31454G;
        int i8 = this.f3997K;
        if (i8 == 0) {
            q0.H(obj);
            K1.e eVar = this.f3998L.f4004a;
            this.f3997K = 1;
            if (eVar.f(this.f3999M, this.f4000N, this) == aVar) {
                return aVar;
            }
        } else {
            if (i8 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            q0.H(obj);
        }
        return p155t6.h.f30319a;
    }
}
