package p109o;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.customtabs.ICustomTabsService;
import com.google.android.gms.internal.ads.C1036a8;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.RJ;
import p004a3.b;
import p096m2.l;

/* JADX INFO: loaded from: classes.dex */
public abstract class i implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f27591a;

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f27591a == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        ICustomTabsService iCustomTabsServiceAsInterface = ICustomTabsService.Stub.asInterface(iBinder);
        h hVar = new h(iCustomTabsServiceAsInterface, componentName);
        C1036a8 c1036a8 = (C1036a8) ((RJ) this).f16237b.get();
        if (c1036a8 != null) {
            c1036a8.f17838b = hVar;
            try {
                iCustomTabsServiceAsInterface.warmup(0L);
            } catch (RemoteException unused) {
            }
            b bVar = c1036a8.f17840d;
            if (bVar != null) {
                C1036a8 c1036a9 = (C1036a8) bVar.f8650H;
                e eVar = c1036a9.f17838b;
                if (eVar == null) {
                    c1036a9.f17837a = null;
                } else if (c1036a9.f17837a == null) {
                    c1036a9.f17837a = eVar.a(null);
                }
                l lVarA = new g(c1036a9.f17837a).a();
                ((Intent) lVarA.f27231H).setPackage(Cw.m0((Context) bVar.f8651I));
                lVarA.l((Context) bVar.f8651I, (Uri) bVar.f8652J);
                Context context = (Context) bVar.f8651I;
                C1036a8 c1036a10 = (C1036a8) bVar.f8650H;
                Activity activity = (Activity) context;
                RJ rj = c1036a10.f17839c;
                if (rj == null) {
                    return;
                }
                activity.unbindService(rj);
                c1036a10.f17838b = null;
                c1036a10.f17837a = null;
                c1036a10.f17839c = null;
            }
        }
    }
}
