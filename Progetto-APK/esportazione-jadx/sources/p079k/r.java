package p079k;

import android.view.ActionProvider;
import p039f.S;

/* JADX INFO: loaded from: classes.dex */
public final class r implements ActionProvider.VisibilityListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public S f25877a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActionProvider f25878b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ v f25879c;

    public r(v vVar, ActionProvider actionProvider) {
        this.f25879c = vVar;
        this.f25878b = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z7) {
        S s7 = this.f25877a;
        if (s7 != null) {
            o oVar = ((q) s7.f24988H).f25864n;
            oVar.f25828h = true;
            oVar.p(true);
        }
    }
}
