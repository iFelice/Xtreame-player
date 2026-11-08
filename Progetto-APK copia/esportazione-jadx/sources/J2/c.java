package J2;

import android.content.Context;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f4094G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final a f4095H;

    public c(Context context, com.bumptech.glide.m mVar) {
        this.f4094G = context.getApplicationContext();
        this.f4095H = mVar;
    }

    @Override // J2.j
    public final void e() {
        t tVarD = t.d(this.f4094G);
        a aVar = this.f4095H;
        synchronized (tVarD) {
            ((Set) tVarD.f4127J).remove(aVar);
            if (tVarD.f4125H && ((Set) tVarD.f4127J).isEmpty()) {
                ((q) tVarD.f4126I).b();
                tVarD.f4125H = false;
            }
        }
    }

    @Override // J2.j
    public final void j() {
        t tVarD = t.d(this.f4094G);
        a aVar = this.f4095H;
        synchronized (tVarD) {
            ((Set) tVarD.f4127J).add(aVar);
            if (!tVarD.f4125H && !((Set) tVarD.f4127J).isEmpty()) {
                tVarD.f4125H = ((q) tVarD.f4126I).a();
            }
        }
    }

    @Override // J2.j
    public final void onDestroy() {
    }
}
