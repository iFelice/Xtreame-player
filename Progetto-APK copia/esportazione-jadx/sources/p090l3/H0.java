package p090l3;

import android.os.RemoteException;
import p043f3.b;
import p043f3.j;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class H0 extends b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f26470G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public b f26471H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ I0 f26472I;

    public H0(I0 i8) {
        this.f26472I = i8;
    }

    @Override // p043f3.b
    public final void a() {
        synchronized (this.f26470G) {
            try {
                b bVar = this.f26471H;
                if (bVar != null) {
                    bVar.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p043f3.b
    public final void b(j jVar) {
        I0 i8 = this.f26472I;
        p004a3.b bVar = i8.f26475c;
        J j8 = i8.f26481i;
        B0 b0Zzl = null;
        if (j8 != null) {
            try {
                b0Zzl = j8.zzl();
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
        bVar.r(b0Zzl);
        synchronized (this.f26470G) {
            try {
                b bVar2 = this.f26471H;
                if (bVar2 != null) {
                    bVar2.b(jVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p043f3.b
    public final void c() {
        synchronized (this.f26470G) {
            try {
                b bVar = this.f26471H;
                if (bVar != null) {
                    bVar.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p043f3.b
    public final void d() {
        I0 i8 = this.f26472I;
        p004a3.b bVar = i8.f26475c;
        J j8 = i8.f26481i;
        B0 b0Zzl = null;
        if (j8 != null) {
            try {
                b0Zzl = j8.zzl();
            } catch (RemoteException e8) {
                h.i("#007 Could not call remote method.", e8);
            }
        }
        bVar.r(b0Zzl);
        synchronized (this.f26470G) {
            try {
                b bVar2 = this.f26471H;
                if (bVar2 != null) {
                    bVar2.d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p043f3.b
    public final void e() {
        synchronized (this.f26470G) {
            try {
                b bVar = this.f26471H;
                if (bVar != null) {
                    bVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p043f3.b, p090l3.InterfaceC3067a
    public final void x() {
        synchronized (this.f26470G) {
            try {
                b bVar = this.f26471H;
                if (bVar != null) {
                    bVar.x();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
