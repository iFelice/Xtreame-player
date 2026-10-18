package X4;

import android.view.View;
import android.view.WindowManager;
import p079k.AbstractC3012d;

/* JADX INFO: loaded from: classes.dex */
public final class a extends i {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final /* synthetic */ WindowManager.LayoutParams f7659U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final /* synthetic */ WindowManager f7660V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final /* synthetic */ AbstractC3012d f7661W;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(View view, p096m2.e eVar, WindowManager.LayoutParams layoutParams, WindowManager windowManager, AbstractC3012d abstractC3012d) {
        super(view, eVar);
        this.f7659U = layoutParams;
        this.f7660V = windowManager;
        this.f7661W = abstractC3012d;
    }

    @Override // X4.i
    public final float b() {
        return this.f7659U.x;
    }

    @Override // X4.i
    public final void c(float f8) {
        WindowManager.LayoutParams layoutParams = this.f7659U;
        layoutParams.x = (int) f8;
        this.f7660V.updateViewLayout(this.f7661W.k(), layoutParams);
    }
}
