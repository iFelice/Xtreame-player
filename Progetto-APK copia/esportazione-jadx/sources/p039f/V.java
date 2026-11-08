package p039f;

import N.C;
import N.N;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;
import p027d2.v;
import p071j.a;

/* JADX INFO: loaded from: classes.dex */
public final class V extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f24995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ X f24996b;

    public /* synthetic */ V(X x7, int i8) {
        this.f24995a = i8;
        this.f24996b = x7;
    }

    @Override // N.V
    public final void c() {
        View view;
        int i8 = this.f24995a;
        X x7 = this.f24996b;
        switch (i8) {
            case 0:
                if (x7.f25018a0 && (view = x7.f25010S) != null) {
                    view.setTranslationY(0.0f);
                    x7.f25007P.setTranslationY(0.0f);
                }
                x7.f25007P.setVisibility(8);
                x7.f25007P.setTransitioning(false);
                x7.f25022e0 = null;
                a aVar = x7.f25014W;
                if (aVar != null) {
                    aVar.d(x7.f25013V);
                    x7.f25013V = null;
                    x7.f25014W = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = x7.f25006O;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = N.f4843a;
                    C.c(actionBarOverlayLayout);
                }
                break;
            default:
                x7.f25022e0 = null;
                x7.f25007P.requestLayout();
                break;
        }
    }
}
