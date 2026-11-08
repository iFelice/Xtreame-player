package I0;

import B0.w0;
import android.net.Uri;
import android.os.SystemClock;
import java.util.HashMap;
import java.util.List;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class a implements t {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ c f3789G;

    public a(c cVar) {
        this.f3789G = cVar;
    }

    @Override // I0.t
    public final void b() {
        this.f3789G.f3807K.remove(this);
    }

    @Override // I0.t
    public final boolean c(Uri uri, w0 w0Var, boolean z7) {
        HashMap map;
        b bVar;
        c cVar = this.f3789G;
        if (cVar.f3814R == null) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            o oVar = cVar.f3812P;
            String str = M.f28050a;
            List list = oVar.f3909e;
            int i8 = 0;
            int i9 = 0;
            while (true) {
                int size = list.size();
                map = cVar.f3806J;
                if (i8 >= size) {
                    break;
                }
                b bVar2 = (b) map.get(((n) list.get(i8)).f3901a);
                if (bVar2 != null && jElapsedRealtime < bVar2.f3797N) {
                    i9++;
                }
                i8++;
            }
            p072j0.c cVar2 = new p072j0.c(1, 0, cVar.f3812P.f3909e.size(), i9);
            cVar.f3805I.getClass();
            S0.g gVarV = U4.b.V(cVar2, w0Var);
            if (gVarV != null && gVarV.f6351a == 2 && (bVar = (b) map.get(uri)) != null) {
                b.a(bVar, gVarV.f6352b);
            }
        }
        return false;
    }
}
