package J6;

import com.google.android.gms.internal.ads.YB;
import java.util.concurrent.CancellationException;
import z4.q0;

/* JADX INFO: renamed from: J6.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC0224x extends O6.i {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f4261I;

    public AbstractC0224x(int i8) {
        super(0L, false);
        this.f4261I = i8;
    }

    public abstract p185x6.e d();

    public Throwable e(Object obj) {
        C0212k c0212k = obj instanceof C0212k ? (C0212k) obj : null;
        if (c0212k != null) {
            return c0212k.f4242a;
        }
        return null;
    }

    public final void g(Throwable th) {
        q0.w(d().getContext(), new YB("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    @Override // java.lang.Runnable
    public final void run() {
        int i8;
        try {
            p185x6.e eVarD = d();
            q0.f(eVarD, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            N6.d dVar = (N6.d) eVarD;
            p185x6.e eVar = dVar.f4964K;
            Object obj = dVar.f4966M;
            p185x6.j context = eVar.getContext();
            Object objD = N6.e.d(context, obj);
            if (objD != N6.e.f4969c) {
                a7.b.i(eVar, context);
            }
            try {
                p185x6.j context2 = eVar.getContext();
                Object objH = h();
                Throwable thE = e(objH);
                J j8 = (thE == null && ((i8 = this.f4261I) == 1 || i8 == 2)) ? (J) context2.k(C0215n.f4245H) : null;
                if (j8 != null && !j8.isActive()) {
                    CancellationException cancellationExceptionL = ((Q) j8).l();
                    c(cancellationExceptionL);
                    eVar.b(q0.n(cancellationExceptionL));
                } else if (thE != null) {
                    eVar.b(q0.n(thE));
                } else {
                    eVar.b(f(objH));
                }
            } finally {
                N6.e.a(context, objD);
            }
        } catch (Throwable th) {
            g(th);
        }
    }

    public void c(CancellationException cancellationException) {
    }

    public Object f(Object obj) {
        return obj;
    }
}
