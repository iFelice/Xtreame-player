package p079k;

import P1.e;
import android.view.View;
import android.view.ViewTreeObserver;
import b7.M0;
import java.util.ArrayList;
import java.util.Iterator;
import p086l.R0;
import p086l.T;
import p086l.W;

/* JADX INFO: renamed from: k.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC3013e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25768G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f25769H;

    public /* synthetic */ ViewTreeObserverOnGlobalLayoutListenerC3013e(Object obj, int i8) {
        this.f25768G = i8;
        this.f25769H = obj;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int i8 = this.f25768G;
        Object obj = this.f25769H;
        switch (i8) {
            case 0:
                i iVar = (i) obj;
                if (iVar.a()) {
                    ArrayList arrayList = iVar.f25787O;
                    if (arrayList.size() <= 0 || ((h) arrayList.get(0)).f25777a.f26153d0) {
                        return;
                    }
                    View view = iVar.f25794V;
                    if (view == null || !view.isShown()) {
                        iVar.dismiss();
                        return;
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((h) it.next()).f25777a.h();
                    }
                    return;
                }
                return;
            case 1:
                F f8 = (F) obj;
                if (f8.a()) {
                    R0 r7 = f8.f25733O;
                    if (r7.f26153d0) {
                        return;
                    }
                    View view2 = f8.f25738T;
                    if (view2 == null || !view2.isShown()) {
                        f8.dismiss();
                        return;
                    } else {
                        r7.h();
                        return;
                    }
                }
                return;
            case 2:
                W w7 = (W) obj;
                if (!w7.getInternalPopup().a()) {
                    w7.f26198L.l(w7.getTextDirection(), w7.getTextAlignment());
                }
                ViewTreeObserver viewTreeObserver = w7.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                    return;
                }
                return;
            case 3:
                T t7 = (T) obj;
                W w8 = t7.f26180m0;
                if (!w8.isAttachedToWindow() || !w8.getGlobalVisibleRect(t7.f26178k0)) {
                    t7.dismiss();
                    return;
                } else {
                    t7.s();
                    t7.h();
                    return;
                }
            case 4:
                ((e) obj).getClass();
                throw null;
            case 5:
                ((e) obj).getClass();
                throw null;
            default:
                M0 m7 = (M0) obj;
                String str = M0.f10110e1;
                m7.f10137Y0.setVisibility(8);
                m7.f10138Z0.setVisibility(8);
                m7.f10115C0.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                return;
        }
    }
}
