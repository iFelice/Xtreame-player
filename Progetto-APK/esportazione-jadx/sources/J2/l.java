package J2;

import F2.G;
import Y.K;
import android.content.Context;
import android.net.ConnectivityManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class l implements o, P2.h {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f4106G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f4107H;

    public /* synthetic */ l(Object obj, Object obj2) {
        this.f4107H = obj;
        this.f4106G = obj2;
    }

    public final com.bumptech.glide.n a(Context context, com.bumptech.glide.b bVar, p032e0.o oVar, K k8, boolean z7) {
        P2.o.a();
        P2.o.a();
        Object obj = this.f4106G;
        com.bumptech.glide.n nVar = (com.bumptech.glide.n) ((Map) obj).get(oVar);
        if (nVar != null) {
            return nVar;
        }
        i iVar = new i(oVar);
        G g8 = (G) this.f4107H;
        l lVar = new l(this, k8);
        g8.getClass();
        com.bumptech.glide.n nVar2 = new com.bumptech.glide.n(bVar, iVar, lVar, context);
        ((Map) obj).put(oVar, nVar2);
        iVar.i(new k(this, oVar));
        if (z7) {
            nVar2.j();
        }
        return nVar2;
    }

    @Override // P2.h
    public final Object get() {
        return (ConnectivityManager) ((Context) this.f4106G).getSystemService("connectivity");
    }

    public l(G g8) {
        this.f4106G = new HashMap();
        this.f4107H = g8;
    }
}
