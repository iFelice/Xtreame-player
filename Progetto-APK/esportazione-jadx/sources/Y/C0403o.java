package Y;

import android.view.View;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: Y.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0403o extends AbstractC2987b {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ AbstractComponentCallbacksC0406s f7912M;

    public C0403o(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        this.f7912M = abstractComponentCallbacksC0406s;
    }

    @Override // p039f.AbstractC2987b
    public final View w(int i8) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7912M;
        View view = abstractComponentCallbacksC0406s.f7963m0;
        if (view != null) {
            return view.findViewById(i8);
        }
        throw new IllegalStateException(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " does not have a view"));
    }

    @Override // p039f.AbstractC2987b
    public final boolean x() {
        return this.f7912M.f7963m0 != null;
    }
}
