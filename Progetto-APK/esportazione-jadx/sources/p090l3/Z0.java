package p090l3;

import com.google.android.gms.internal.measurement.AbstractC2617p2;

/* JADX INFO: loaded from: classes.dex */
public final class Z0 extends AbstractBinderC3114y {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC2617p2 f26512G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f26513H;

    public Z0(AbstractC2617p2 abstractC2617p2, Object obj) {
        this.f26512G = abstractC2617p2;
        this.f26513H = obj;
    }

    @Override // p090l3.InterfaceC3116z
    public final void I1(C3117z0 c3117z0) {
        AbstractC2617p2 abstractC2617p2 = this.f26512G;
        if (abstractC2617p2 != null) {
            abstractC2617p2.h(c3117z0.l());
        }
    }

    @Override // p090l3.InterfaceC3116z
    public final void zzc() {
        Object obj;
        AbstractC2617p2 abstractC2617p2 = this.f26512G;
        if (abstractC2617p2 == null || (obj = this.f26513H) == null) {
            return;
        }
        abstractC2617p2.i(obj);
    }
}
