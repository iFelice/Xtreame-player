package A0;

import android.content.Context;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.util.Pair;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import p094m0.C3125h;
import p094m0.C3126i;
import p094m0.InterfaceC3128k;
import p094m0.o0;
import p094m0.q0;
import p094m0.r0;
import p094m0.s0;
import p117p0.AbstractC3164b;

/* JADX INFO: renamed from: A0.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0021v implements q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f215a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f216b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f217c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f218d;

    public C0021v(boolean z7, boolean z8, boolean z9, boolean z10) {
        this.f215a = z7;
        this.f216b = z8;
        this.f217c = z9;
        this.f218d = z10;
    }

    @Override // p094m0.q0
    public final s0 a(final Context context, final InterfaceC3128k interfaceC3128k, final C3126i c3126i, final boolean z7, final p046f6.c cVar) throws o0 {
        String str = p117p0.M.f28050a;
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new p117p0.L("Effect:DefaultVideoFrameProcessor:GlThread", 0));
        final h0 h0Var = new h0(executorServiceNewSingleThreadExecutor, new C0014n(cVar, 2));
        final F.i iVar = new F.i(2);
        try {
            return (C0023x) executorServiceNewSingleThreadExecutor.submit(new Callable(this) { // from class: A0.u

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                public final /* synthetic */ C0021v f206a;

                /* JADX INFO: renamed from: g, reason: collision with root package name */
                public final /* synthetic */ Executor f212g;

                {
                    D4.a aVar = D4.a.f2392G;
                    this.f206a = this;
                    this.f212g = aVar;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() throws p117p0.p {
                    Pair pairCreate;
                    Context context2;
                    U u7;
                    F.i iVar2 = iVar;
                    C0021v c0021v = this.f206a;
                    c0021v.getClass();
                    int i8 = C0023x.f223x;
                    EGLDisplay eGLDisplayT = AbstractC3164b.t();
                    C3126i c3126i2 = c3126i;
                    boolean zG = C3126i.g(c3126i2);
                    int[] iArr = zG ? AbstractC3164b.f28067c : AbstractC3164b.f28066b;
                    try {
                        EGLContext eGLContextM = AbstractC3164b.m((EGLContext) iVar2.f2977H, eGLDisplayT, 3, iArr);
                        ((List) iVar2.f2978I).add(eGLContextM);
                        pairCreate = Pair.create(eGLContextM, AbstractC3164b.n(eGLContextM, eGLDisplayT));
                    } catch (p117p0.p unused) {
                        EGLContext eGLContextM2 = AbstractC3164b.m((EGLContext) iVar2.f2977H, eGLDisplayT, 2, iArr);
                        ((List) iVar2.f2978I).add(eGLContextM2);
                        pairCreate = Pair.create(eGLContextM2, AbstractC3164b.n(eGLContextM2, eGLDisplayT));
                    }
                    Pair pair = pairCreate;
                    C3125h c3125hA = c3126i2.a();
                    c3125hA.f26864c = 1;
                    c3125hA.f26867f = null;
                    C3126i c3126i3 = zG ? new C3126i(c3125hA.f26862a, c3125hA.f26863b, c3125hA.f26864c, c3125hA.f26867f, c3125hA.f26865d, c3125hA.f26866e) : c3126i2;
                    r0 r0Var = cVar;
                    Objects.requireNonNull(r0Var);
                    C0014n c0014n = new C0014n(r0Var, 0);
                    boolean z8 = c0021v.f217c;
                    boolean z9 = c0021v.f218d;
                    Context context3 = context;
                    h0 h0Var2 = h0Var;
                    Executor executor = this.f212g;
                    N n7 = new N(context3, c3126i3, iVar2, h0Var2, executor, c0014n, c0021v.f215a, z8, z9);
                    EGLContext eGLContext = (EGLContext) pair.first;
                    EGLSurface eGLSurface = (EGLSurface) pair.second;
                    boolean z10 = z7;
                    D d6 = new D(context3, eGLDisplayT, eGLContext, eGLSurface, c3126i2, h0Var2, executor, r0Var, z10);
                    if (c0021v.f216b) {
                        context2 = context3;
                        u7 = new U(context2, zG);
                    } else {
                        context2 = context3;
                        u7 = null;
                    }
                    return new C0023x(context2, iVar2, eGLDisplayT, n7, h0Var2, r0Var, executor, d6, z10, c3126i2, interfaceC3128k, u7);
                }
            }).get();
        } catch (InterruptedException e8) {
            Thread.currentThread().interrupt();
            throw new o0(e8);
        } catch (ExecutionException e9) {
            throw new o0(e9);
        }
    }
}
