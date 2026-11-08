package p000a;

import android.os.Build;
import p162u6.i;

/* JADX INFO: loaded from: classes.dex */
public final class w implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final q f8617G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ x f8618H;

    public w(x xVar, q qVar) {
        this.f8618H = xVar;
        this.f8617G = qVar;
    }

    @Override // p000a.a
    public final void cancel() {
        x xVar = this.f8618H;
        i iVar = (i) xVar.f8621c;
        q qVar = this.f8617G;
        iVar.remove(qVar);
        qVar.getClass();
        qVar.f8606b.remove(this);
        if (Build.VERSION.SDK_INT >= 33) {
            qVar.f8607c = null;
            xVar.c();
        }
    }
}
