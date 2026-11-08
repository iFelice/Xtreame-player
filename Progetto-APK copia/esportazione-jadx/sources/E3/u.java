package E3;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class u implements com.google.android.gms.common.api.p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f2927b;

    public /* synthetic */ u(d dVar, int i8) {
        this.f2926a = i8;
        this.f2927b = dVar;
    }

    public final void a(com.google.android.gms.common.api.o oVar) {
        int i8 = this.f2926a;
        d dVar = this.f2927b;
        switch (i8) {
            case 0:
                dVar.getClass();
                Status statusC = ((i) oVar).c();
                int i9 = statusC.f11756G;
                if (i9 != 0) {
                    StringBuilder sbK = p000a.r.k("Error fetching queue item ids, statusCode=", i9, ", statusMessage=");
                    sbK.append(statusC.f11757H);
                    H3.b bVar = dVar.f2840a;
                    Log.w(bVar.f3679a, bVar.c(sbK.toString(), new Object[0]));
                }
                dVar.f2851l = null;
                if (!dVar.f2847h.isEmpty()) {
                    X3.d dVar2 = dVar.f2848i;
                    v vVar = dVar.f2849j;
                    dVar2.removeCallbacks(vVar);
                    dVar2.postDelayed(vVar, 500L);
                }
                break;
            default:
                dVar.getClass();
                Status statusC2 = ((i) oVar).c();
                int i10 = statusC2.f11756G;
                if (i10 != 0) {
                    StringBuilder sbK2 = p000a.r.k("Error fetching queue items, statusCode=", i10, ", statusMessage=");
                    sbK2.append(statusC2.f11757H);
                    H3.b bVar2 = dVar.f2840a;
                    Log.w(bVar2.f3679a, bVar2.c(sbK2.toString(), new Object[0]));
                }
                dVar.f2850k = null;
                if (!dVar.f2847h.isEmpty()) {
                    X3.d dVar3 = dVar.f2848i;
                    v vVar2 = dVar.f2849j;
                    dVar3.removeCallbacks(vVar2);
                    dVar3.postDelayed(vVar2, 500L);
                }
                break;
        }
    }
}
