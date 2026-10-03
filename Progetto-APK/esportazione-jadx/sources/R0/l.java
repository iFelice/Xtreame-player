package R0;

import android.media.Spatializer;
import z4.c0;

/* JADX INFO: loaded from: classes.dex */
public final class l implements Spatializer.OnSpatializerStateChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q f6200a;

    public l(q qVar) {
        this.f6200a = qVar;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z7) {
        q qVar = this.f6200a;
        c0 c0Var = q.f6232k;
        qVar.i();
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z7) {
        q qVar = this.f6200a;
        c0 c0Var = q.f6232k;
        qVar.i();
    }
}
