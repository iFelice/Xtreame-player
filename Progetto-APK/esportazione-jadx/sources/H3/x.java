package H3;

import A0.O;
import C3.C0104d;
import D3.I;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.internal.AbstractC0636l;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.C0633i;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class x extends AbstractC0636l {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final b f3735t = new b("CastClientImpl", null);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Object f3736u = new Object();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final Object f3737v = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C0104d f3738a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CastDevice f3739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final I f3740c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f3741d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f3742e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bundle f3743f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public w f3744g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f3745h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3746i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3747j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f3748k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public double f3749l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C3.x f3750m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3751n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3752o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public String f3753p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public String f3754q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Bundle f3755r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final HashMap f3756s;

    public x(Context context, Looper looper, C0633i c0633i, CastDevice castDevice, long j8, I i8, Bundle bundle, com.google.android.gms.common.api.k kVar, com.google.android.gms.common.api.l lVar) {
        super(context, looper, 10, c0633i, kVar, lVar);
        this.f3739b = castDevice;
        this.f3740c = i8;
        this.f3742e = j8;
        this.f3743f = bundle;
        this.f3741d = new HashMap();
        new AtomicLong(0L);
        this.f3756s = new HashMap();
        this.f3751n = -1;
        this.f3752o = -1;
        this.f3738a = null;
        this.f3745h = null;
        this.f3749l = 0.0d;
        f();
        this.f3746i = false;
        this.f3750m = null;
        f();
    }

    public static void d(x xVar, long j8) {
        synchronized (xVar.f3756s) {
            O.I(xVar.f3756s.remove(Long.valueOf(j8)));
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return iInterfaceQueryLocalInterface instanceof f ? (f) iInterfaceQueryLocalInterface : new f(iBinder);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final void disconnect() {
        Object[] objArr = {this.f3744g, Boolean.valueOf(isConnected())};
        b bVar = f3735t;
        bVar.b("disconnect(); ServiceListener=%s, isConnected=%b", objArr);
        w wVar = this.f3744g;
        x xVar = null;
        this.f3744g = null;
        if (wVar != null) {
            x xVar2 = (x) wVar.f3733H.getAndSet(null);
            if (xVar2 != null) {
                xVar2.f3751n = -1;
                xVar2.f3752o = -1;
                xVar2.f3738a = null;
                xVar2.f3745h = null;
                xVar2.f3749l = 0.0d;
                xVar2.f();
                xVar2.f3746i = false;
                xVar2.f3750m = null;
                xVar = xVar2;
            }
            if (xVar != null) {
                e();
                try {
                    try {
                        f fVar = (f) getService();
                        fVar.i2(1, fVar.j0());
                    } catch (RemoteException | IllegalStateException e8) {
                        bVar.a(e8, "Error while disconnecting the controller interface", new Object[0]);
                    }
                    return;
                } finally {
                    super.disconnect();
                }
            }
        }
        bVar.b("already disposed, so short-circuiting", new Object[0]);
    }

    public final void e() {
        f3735t.b("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.f3741d) {
            this.f3741d.clear();
        }
    }

    public final void f() {
        CastDevice castDevice = this.f3739b;
        com.bumptech.glide.c.i(castDevice, "device should not be null");
        if (castDevice.l(2048) || !castDevice.l(4) || castDevice.l(1)) {
            return;
        }
        "Chromecast Audio".equals(castDevice.f11682K);
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Bundle getConnectionHint() {
        Bundle bundle = this.f3755r;
        if (bundle == null) {
            return super.getConnectionHint();
        }
        this.f3755r = null;
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        f3735t.b("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.f3753p, this.f3754q);
        CastDevice castDevice = this.f3739b;
        castDevice.getClass();
        bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", castDevice);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.f3742e);
        Bundle bundle2 = this.f3743f;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        w wVar = new w(this);
        this.f3744g = wVar;
        bundle.putParcelable("listener", new BinderWrapper(wVar));
        String str = this.f3753p;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.f3754q;
            if (str2 != null) {
                bundle.putString("last_session_id", str2);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g, com.google.android.gms.common.api.e
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final void onConnectionFailed(J3.b bVar) {
        super.onConnectionFailed(bVar);
        e();
    }

    @Override // com.google.android.gms.common.internal.AbstractC0631g
    public final void onPostInitHandler(int i8, IBinder iBinder, Bundle bundle, int i9) {
        f3735t.b("in onPostInitHandler; statusCode=%d", Integer.valueOf(i8));
        if (i8 == 0 || i8 == 2300) {
            this.f3747j = true;
            this.f3748k = true;
        }
        if (i8 == 2300) {
            Bundle bundle2 = new Bundle();
            this.f3755r = bundle2;
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            i8 = 0;
        }
        super.onPostInitHandler(i8, iBinder, bundle, i9);
    }
}
