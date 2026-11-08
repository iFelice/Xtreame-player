package K3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class S extends E {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractC0245s f4513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p052g4.i f4514c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceC0244q f4515d;

    public S(int i8, AbstractC0245s abstractC0245s, p052g4.i iVar, InterfaceC0244q interfaceC0244q) {
        super(i8);
        this.f4514c = iVar;
        this.f4513b = abstractC0245s;
        this.f4515d = interfaceC0244q;
        if (i8 == 2 && abstractC0245s.f4573b) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // K3.T
    public final void a(Status status) {
        ((F2.G) this.f4515d).getClass();
        this.f4514c.c(status.f11758I != null ? new com.google.android.gms.common.api.n(status) : new com.google.android.gms.common.api.h(status));
    }

    @Override // K3.T
    public final void b(RuntimeException runtimeException) {
        this.f4514c.c(runtimeException);
    }

    @Override // K3.T
    public final void c(z zVar) throws DeadObjectException {
        p052g4.i iVar = this.f4514c;
        try {
            AbstractC0245s abstractC0245s = this.f4513b;
            ((InterfaceC0243p) ((O) abstractC0245s).f4509d.f4570c).accept(zVar.f4581H, iVar);
        } catch (DeadObjectException e8) {
            throw e8;
        } catch (RemoteException e9) {
            a(T.e(e9));
        } catch (RuntimeException e10) {
            iVar.c(e10);
        }
    }

    @Override // K3.T
    public final void d(x0 x0Var, boolean z7) {
        Boolean boolValueOf = Boolean.valueOf(z7);
        Map map = (Map) x0Var.f22391I;
        p052g4.i iVar = this.f4514c;
        map.put(iVar, boolValueOf);
        iVar.f25345a.a(new p096m2.l(x0Var, iVar, 16));
    }

    @Override // K3.E
    public final boolean f(z zVar) {
        return this.f4513b.f4573b;
    }

    @Override // K3.E
    public final J3.d[] g(z zVar) {
        return this.f4513b.f4572a;
    }
}
