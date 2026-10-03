package K3;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public abstract class P extends E {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p052g4.i f4510b;

    public P(int i8, p052g4.i iVar) {
        super(i8);
        this.f4510b = iVar;
    }

    @Override // K3.T
    public final void a(Status status) {
        this.f4510b.c(new com.google.android.gms.common.api.h(status));
    }

    @Override // K3.T
    public final void b(RuntimeException runtimeException) {
        this.f4510b.c(runtimeException);
    }

    @Override // K3.T
    public final void c(z zVar) throws DeadObjectException {
        try {
            h(zVar);
        } catch (DeadObjectException e8) {
            a(T.e(e8));
            throw e8;
        } catch (RemoteException e9) {
            a(T.e(e9));
        } catch (RuntimeException e10) {
            this.f4510b.c(e10);
        }
    }

    public abstract void h(z zVar);
}
