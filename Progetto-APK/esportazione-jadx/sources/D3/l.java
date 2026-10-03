package D3;

import android.content.Context;
import android.os.Looper;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.internal.cast.AbstractBinderC2478o;
import com.google.android.gms.internal.cast.AbstractC2501u;
import com.google.android.gms.internal.cast.BinderC2430c;
import com.google.android.gms.internal.cast.C2470m;
import com.google.android.gms.internal.cast.C2474n;
import com.google.android.gms.internal.cast.RunnableC2462k;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class l extends AbstractBinderC2478o {
    @Override // com.google.android.gms.internal.cast.AbstractBinderC2478o
    public final boolean Y(int i8, Parcel parcel, Parcel parcel2) {
        if (i8 != 1) {
            int i9 = 0;
            if (i8 == 2) {
                BinderC2430c binderC2430c = (BinderC2430c) this;
                H3.b bVar = BinderC2430c.f22655J;
                Log.i(bVar.f3679a, bVar.c("onAppEnteredForeground", new Object[0]));
                binderC2430c.f22658I = 1;
                Iterator it = binderC2430c.f22657H.iterator();
                while (it.hasNext()) {
                    ((C2470m) it.next()).f22755a.f();
                }
                parcel2.writeNoException();
            } else if (i8 == 3) {
                BinderC2430c binderC2430c2 = (BinderC2430c) this;
                H3.b bVar2 = BinderC2430c.f22655J;
                Log.i(bVar2.f3679a, bVar2.c("onAppEnteredBackground", new Object[0]));
                binderC2430c2.f22658I = 2;
                Iterator it2 = binderC2430c2.f22657H.iterator();
                while (it2.hasNext()) {
                    C2474n c2474n = ((C2470m) it2.next()).f22755a;
                    c2474n.getClass();
                    C2474n.f22756f.b("Stopping RouteDiscovery.", new Object[0]);
                    c2474n.f22759c.clear();
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        p096m2.c cVar = c2474n.f22761e;
                        if (((E1.H) cVar.f27211I) == null) {
                            cVar.f27211I = E1.H.d((Context) cVar.f27210H);
                        }
                        E1.H h8 = (E1.H) cVar.f27211I;
                        if (h8 != null) {
                            h8.e(c2474n);
                        }
                    } else {
                        new X3.d(Looper.getMainLooper(), 1).post(new RunnableC2462k(c2474n, i9));
                    }
                }
                parcel2.writeNoException();
            } else {
                if (i8 != 4) {
                    return false;
                }
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
            }
        } else {
            R3.b bVar3 = new R3.b((BinderC2430c) this);
            parcel2.writeNoException();
            AbstractC2501u.d(parcel2, bVar3);
        }
        return true;
    }
}
