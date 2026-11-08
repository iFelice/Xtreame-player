package E1;

import C0.C0079d;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.IBinder;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a0 extends AbstractC0179n implements ServiceConnection {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final /* synthetic */ int f2697q = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ComponentName f2698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final W f2699j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f2700k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2701l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2702m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public U f2703n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f2704o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public C0079d f2705p;

    static {
        Log.isLoggable("MediaRouteProviderProxy", 3);
    }

    public a0(Context context, ComponentName componentName) {
        super(context, new f0(componentName));
        this.f2700k = new ArrayList();
        this.f2698i = componentName;
        this.f2699j = new W();
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0177l c(String str) {
        if (str == null) {
            throw new IllegalArgumentException("initialMemberRouteId cannot be null.");
        }
        C0180o c0180o = this.f2791g;
        if (c0180o != null) {
            List list = c0180o.f2793a;
            int size = list.size();
            for (int i8 = 0; i8 < size; i8++) {
                if (((C0173h) list.get(i8)).d().equals(str)) {
                    Y y7 = new Y(this, str);
                    this.f2700k.add(y7);
                    if (this.f2704o) {
                        y7.c(this.f2703n);
                    }
                    m();
                    return y7;
                }
            }
        }
        return null;
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0178m d(String str) {
        if (str != null) {
            return j(str, null);
        }
        throw new IllegalArgumentException("routeId cannot be null");
    }

    @Override // E1.AbstractC0179n
    public final AbstractC0178m e(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("routeId cannot be null");
        }
        if (str2 != null) {
            return j(str, str2);
        }
        throw new IllegalArgumentException("routeGroupId cannot be null");
    }

    @Override // E1.AbstractC0179n
    public final void f(C0174i c0174i) {
        if (this.f2704o) {
            U u7 = this.f2703n;
            int i8 = u7.f2674d;
            u7.f2674d = i8 + 1;
            u7.b(10, i8, 0, c0174i != null ? c0174i.f2752a : null, null);
        }
        m();
    }

    public final void i() {
        if (this.f2702m) {
            return;
        }
        Intent intent = new Intent("android.media.MediaRouteProviderService");
        intent.setComponent(this.f2698i);
        try {
            this.f2702m = this.f2785a.bindService(intent, this, Build.VERSION.SDK_INT >= 29 ? 4097 : 1);
        } catch (SecurityException unused) {
        }
    }

    public final Z j(String str, String str2) {
        C0180o c0180o = this.f2791g;
        if (c0180o == null) {
            return null;
        }
        List list = c0180o.f2793a;
        int size = list.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((C0173h) list.get(i8)).d().equals(str)) {
                Z z7 = new Z(this, str, str2);
                this.f2700k.add(z7);
                if (this.f2704o) {
                    z7.c(this.f2703n);
                }
                m();
                return z7;
            }
        }
        return null;
    }

    public final void k() {
        if (this.f2703n != null) {
            g(null);
            this.f2704o = false;
            ArrayList arrayList = this.f2700k;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                ((V) arrayList.get(i8)).b();
            }
            U u7 = this.f2703n;
            u7.b(2, 0, 0, null, null);
            u7.f2672b.f25062b.clear();
            u7.f2671a.getBinder().unlinkToDeath(u7, 0);
            u7.f2679i.f2699j.post(new T(u7, 0));
            this.f2703n = null;
        }
    }

    public final void l() {
        if (this.f2702m) {
            this.f2702m = false;
            k();
            try {
                this.f2785a.unbindService(this);
            } catch (IllegalArgumentException e8) {
                Log.e("MediaRouteProviderProxy", this + ": unbindService failed", e8);
            }
        }
    }

    public final void m() {
        if (!this.f2701l || (this.f2789e == null && this.f2700k.isEmpty())) {
            l();
        } else {
            i();
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f2702m) {
            k();
            Messenger messenger = iBinder != null ? new Messenger(iBinder) : null;
            if (messenger != null) {
                try {
                    if (messenger.getBinder() != null) {
                        U u7 = new U(this, messenger);
                        int i8 = u7.f2674d;
                        u7.f2674d = i8 + 1;
                        u7.f2677g = i8;
                        if (u7.b(1, i8, 4, null, null)) {
                            try {
                                u7.f2671a.getBinder().linkToDeath(u7, 0);
                                this.f2703n = u7;
                                return;
                            } catch (RemoteException unused) {
                                u7.binderDied();
                                return;
                            }
                        }
                        return;
                    }
                } catch (NullPointerException unused2) {
                }
            }
            Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        k();
    }

    public final String toString() {
        return "Service connection " + this.f2698i.flattenToShortString();
    }
}
