package P1;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class p implements ServiceConnection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f5821a;

    public p(q qVar) {
        this.f5821a = qVar;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        i iVar;
        q0.h(componentName, "name");
        q0.h(iBinder, "service");
        int i8 = r.f5832H;
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService");
        if (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof i)) {
            h hVar = new h();
            hVar.f5792G = iBinder;
            iVar = hVar;
        } else {
            iVar = (i) iInterfaceQueryLocalInterface;
        }
        q qVar = this.f5821a;
        qVar.f5827f = iVar;
        qVar.f5824c.execute(qVar.f5830i);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        q0.h(componentName, "name");
        q qVar = this.f5821a;
        qVar.f5824c.execute(qVar.f5831j);
        qVar.f5827f = null;
    }
}
