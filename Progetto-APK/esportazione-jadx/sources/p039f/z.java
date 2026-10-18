package p039f;

import N.C;
import N.N;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.WeakHashMap;
import p027d2.v;

/* JADX INFO: loaded from: classes.dex */
public final class z extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f25130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f25131b;

    public /* synthetic */ z(Object obj, int i8) {
        this.f25130a = i8;
        this.f25131b = obj;
    }

    @Override // p027d2.v, N.V
    public final void b() {
        int i8 = this.f25130a;
        Object obj = this.f25131b;
        switch (i8) {
            case 0:
                ((RunnableC3008x) obj).f25127H.f24953b0.setVisibility(0);
                break;
            case 1:
                K k8 = (K) obj;
                k8.f24953b0.setVisibility(0);
                if (k8.f24953b0.getParent() instanceof View) {
                    View view = (View) k8.f24953b0.getParent();
                    WeakHashMap weakHashMap = N.f4843a;
                    C.c(view);
                }
                break;
        }
    }

    @Override // N.V
    public final void c() {
        int i8 = this.f25130a;
        Object obj = this.f25131b;
        switch (i8) {
            case 0:
                RunnableC3008x runnableC3008x = (RunnableC3008x) obj;
                runnableC3008x.f25127H.f24953b0.setAlpha(1.0f);
                K k8 = runnableC3008x.f25127H;
                k8.f24956e0.d(null);
                k8.f24956e0 = null;
                break;
            case 1:
                K k9 = (K) obj;
                k9.f24953b0.setAlpha(1.0f);
                k9.f24956e0.d(null);
                k9.f24956e0 = null;
                break;
            default:
                A a8 = (A) obj;
                a8.f24893H.f24953b0.setVisibility(8);
                K k10 = a8.f24893H;
                PopupWindow popupWindow = k10.f24954c0;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (k10.f24953b0.getParent() instanceof View) {
                    View view = (View) k10.f24953b0.getParent();
                    WeakHashMap weakHashMap = N.f4843a;
                    C.c(view);
                }
                k10.f24953b0.e();
                k10.f24956e0.d(null);
                k10.f24956e0 = null;
                ViewGroup viewGroup = k10.f24959h0;
                WeakHashMap weakHashMap2 = N.f4843a;
                C.c(viewGroup);
                break;
        }
    }
}
