package D3;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.P1;
import com.google.android.gms.internal.cast.a3;

/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0159c f2385a;

    public j(C0159c c0159c) {
        this.f2385a = c0159c;
    }

    public final void a() {
        C0159c c0159c = this.f2385a;
        if (c0159c.f2371e == null) {
            return;
        }
        try {
            E3.j jVar = c0159c.f2376j;
            if (jVar != null) {
                jVar.r();
            }
            p pVar = (p) c0159c.f2371e;
            Parcel parcelJ0 = pVar.j0();
            AbstractC2501u.c(parcelJ0, null);
            pVar.r1(1, parcelJ0);
        } catch (RemoteException e8) {
            C0159c.f2368m.a(e8, "Unable to call %s on %s.", "onConnected", r.class.getSimpleName());
        }
        P1 p7 = c0159c.f2378l;
        if (p7 != null) {
            p109o.j.c(p7.f22515G, new a3(new F.d(3, 0)));
        }
    }
}
