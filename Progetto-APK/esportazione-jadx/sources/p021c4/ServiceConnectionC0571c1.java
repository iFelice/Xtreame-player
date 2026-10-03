package p021c4;

import J3.b;
import K3.V;
import O3.a;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.bumptech.glide.c;
import com.google.android.gms.common.internal.InterfaceC0626b;
import com.google.android.gms.common.internal.InterfaceC0627c;
import com.google.android.gms.internal.ads.C0742Gc;
import com.google.android.gms.internal.cast.X;

/* JADX INFO: renamed from: c4.c1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceConnectionC0571c1 implements ServiceConnection, InterfaceC0626b, InterfaceC0627c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f11134a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile C0742Gc f11135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0574d1 f11136c;

    public ServiceConnectionC0571c1(C0574d1 c0574d1) {
        this.f11136c = c0574d1;
    }

    public final void a() {
        C0574d1 c0574d1 = this.f11136c;
        c0574d1.m();
        Context context = ((C0597l0) c0574d1.f10616G).f11250G;
        synchronized (this) {
            try {
                if (this.f11134a) {
                    T t7 = ((C0597l0) this.f11136c.f10616G).f11258O;
                    C0597l0.k(t7);
                    t7.f11047T.a("Connection attempt already in progress");
                } else {
                    if (this.f11135b != null && (this.f11135b.isConnecting() || this.f11135b.isConnected())) {
                        T t8 = ((C0597l0) this.f11136c.f10616G).f11258O;
                        C0597l0.k(t8);
                        t8.f11047T.a("Already awaiting connection attempt");
                        return;
                    }
                    this.f11135b = new C0742Gc(context, Looper.getMainLooper(), this, this, 1);
                    T t9 = ((C0597l0) this.f11136c.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11047T.a("Connecting to remote service");
                    this.f11134a = true;
                    c.h(this.f11135b);
                    this.f11135b.checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnected(Bundle bundle) {
        C0591j0 c0591j0 = ((C0597l0) this.f11136c.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.u();
        synchronized (this) {
            try {
                c.h(this.f11135b);
                G g8 = (G) this.f11135b.getService();
                C0591j0 c0591j1 = ((C0597l0) this.f11136c.f10616G).f11259P;
                C0597l0.k(c0591j1);
                c0591j1.x(new RunnableC0568b1(this, g8, 1));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f11135b = null;
                this.f11134a = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0627c
    public final void onConnectionFailed(b bVar) {
        C0574d1 c0574d1 = this.f11136c;
        C0591j0 c0591j0 = ((C0597l0) c0574d1.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.u();
        T t7 = ((C0597l0) c0574d1.f10616G).f11258O;
        if (t7 == null || !t7.f11367H) {
            t7 = null;
        }
        if (t7 != null) {
            t7.f11042O.b(bVar, "Service connection failed");
        }
        synchronized (this) {
            this.f11134a = false;
            this.f11135b = null;
        }
        C0591j0 c0591j1 = ((C0597l0) this.f11136c.f10616G).f11259P;
        C0597l0.k(c0591j1);
        c0591j1.x(new V(16, this, bVar));
    }

    @Override // com.google.android.gms.common.internal.InterfaceC0626b
    public final void onConnectionSuspended(int i8) {
        C0597l0 c0597l0 = (C0597l0) this.f11136c.f10616G;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.u();
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11046S.a("Service connection suspended");
        C0591j0 c0591j1 = c0597l0.f11259P;
        C0597l0.k(c0591j1);
        c0591j1.x(new X(this, 4));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C0591j0 c0591j0 = ((C0597l0) this.f11136c.f10616G).f11259P;
        C0597l0.k(c0591j0);
        c0591j0.u();
        synchronized (this) {
            int i8 = 0;
            if (iBinder == null) {
                this.f11134a = false;
                T t7 = ((C0597l0) this.f11136c.f10616G).f11258O;
                C0597l0.k(t7);
                t7.f11039L.a("Service connected with null binder");
                return;
            }
            G f8 = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    f8 = iInterfaceQueryLocalInterface instanceof G ? (G) iInterfaceQueryLocalInterface : new F(iBinder);
                    T t8 = ((C0597l0) this.f11136c.f10616G).f11258O;
                    C0597l0.k(t8);
                    t8.f11047T.a("Bound to IMeasurementService interface");
                } else {
                    T t9 = ((C0597l0) this.f11136c.f10616G).f11258O;
                    C0597l0.k(t9);
                    t9.f11039L.b(interfaceDescriptor, "Got binder with a wrong descriptor");
                }
            } catch (RemoteException unused) {
                T t10 = ((C0597l0) this.f11136c.f10616G).f11258O;
                C0597l0.k(t10);
                t10.f11039L.a("Service connect failed to get IMeasurementService");
            }
            if (f8 == null) {
                this.f11134a = false;
                try {
                    a aVarA = a.a();
                    C0574d1 c0574d1 = this.f11136c;
                    aVarA.b(((C0597l0) c0574d1.f10616G).f11250G, c0574d1.f11145I);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                C0591j0 c0591j1 = ((C0597l0) this.f11136c.f10616G).f11259P;
                C0597l0.k(c0591j1);
                c0591j1.x(new RunnableC0568b1(this, f8, i8));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        C0597l0 c0597l0 = (C0597l0) this.f11136c.f10616G;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.u();
        T t7 = c0597l0.f11258O;
        C0597l0.k(t7);
        t7.f11046S.a("Service disconnected");
        C0591j0 c0591j1 = c0597l0.f11259P;
        C0597l0.k(c0591j1);
        c0591j1.x(new V(15, this, componentName));
    }
}
