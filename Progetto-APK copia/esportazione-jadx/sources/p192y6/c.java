package p192y6;

import C6.p;
import p185x6.e;
import p185x6.j;
import p190y4.k;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends p199z6.c {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f31459J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ p f31460K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Object f31461L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(e eVar, j jVar, p pVar, Object obj) {
        super(eVar, jVar);
        this.f31460K = pVar;
        this.f31461L = obj;
        q0.f(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    @Override // p199z6.a
    public final Object f(Object obj) throws Throwable {
        int i8 = this.f31459J;
        if (i8 != 0) {
            if (i8 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f31459J = 2;
            q0.H(obj);
            return obj;
        }
        this.f31459J = 1;
        q0.H(obj);
        p pVar = this.f31460K;
        q0.f(pVar, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
        k.i(pVar);
        return pVar.c(this.f31461L, this);
    }
}
