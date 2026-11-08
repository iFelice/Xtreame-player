package p113o3;

import android.content.Context;
import p090l3.AbstractBinderC3090l0;
import p090l3.C3117z0;

/* JADX INFO: renamed from: o3.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class BinderC3152j extends AbstractBinderC3090l0 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ Context f27971G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C3154l f27972H;

    public BinderC3152j(C3154l c3154l, Context context) {
        this.f27971G = context;
        this.f27972H = c3154l;
    }

    @Override // p090l3.InterfaceC3092m0
    public final void s0(C3117z0 c3117z0) {
        if (c3117z0 == null) {
            return;
        }
        this.f27972H.getClass();
        C3154l.f(c3117z0.f26630H, this.f27971G, true, true);
    }
}
