package p192y6;

import C6.p;
import p185x6.e;
import p190y4.k;
import p199z6.g;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends g {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f31456H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ p f31457I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f31458J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Object obj, e eVar, p pVar) {
        super(eVar);
        this.f31457I = pVar;
        this.f31458J = obj;
        q0.f(eVar, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>");
    }

    @Override // p199z6.a
    public final Object f(Object obj) throws Throwable {
        int i8 = this.f31456H;
        if (i8 != 0) {
            if (i8 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f31456H = 2;
            q0.H(obj);
            return obj;
        }
        this.f31456H = 1;
        q0.H(obj);
        p pVar = this.f31457I;
        q0.f(pVar, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted>, kotlin.Any?>");
        k.i(pVar);
        return pVar.c(this.f31458J, this);
    }
}
