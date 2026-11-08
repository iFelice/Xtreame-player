package p021c4;

import Z3.RunnableC0439v;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.measurement.A;
import com.google.android.gms.internal.measurement.B;
import com.google.android.gms.internal.measurement.C2663z;

/* JADX INFO: renamed from: c4.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ServiceConnectionC0564a0 implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0567b0 f11118b;

    public ServiceConnectionC0564a0(C0567b0 c0567b0, String str) {
        this.f11118b = c0567b0;
        this.f11117a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        C0567b0 c0567b0 = this.f11118b;
        if (iBinder == null) {
            T t7 = c0567b0.f11124a.f11258O;
            C0597l0.k(t7);
            t7.f11042O.a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            int i8 = A.f22860G;
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
            Object c2663z = iInterfaceQueryLocalInterface instanceof B ? (B) iInterfaceQueryLocalInterface : new C2663z(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService", 4);
            if (c2663z == null) {
                T t8 = c0567b0.f11124a.f11258O;
                C0597l0.k(t8);
                t8.f11042O.a("Install Referrer Service implementation was not found");
                return;
            }
            C0597l0 c0597l0 = c0567b0.f11124a;
            T t9 = c0597l0.f11258O;
            C0597l0.k(t9);
            t9.f11047T.a("Install Referrer Service connected");
            C0591j0 c0591j0 = c0597l0.f11259P;
            C0597l0.k(c0591j0);
            c0591j0.x(new RunnableC0439v(this, c2663z, this, 2, 0));
        } catch (RuntimeException e8) {
            T t10 = c0567b0.f11124a.f11258O;
            C0597l0.k(t10);
            t10.f11042O.b(e8, "Exception occurred while calling Install Referrer API");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        T t7 = this.f11118b.f11124a.f11258O;
        C0597l0.k(t7);
        t7.f11047T.a("Install Referrer Service disconnected");
    }
}
