package p086l;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import p079k.o;
import p079k.q;

/* JADX INFO: loaded from: classes.dex */
public final class R0 extends M0 implements N0 {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final Method f26171j0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public N0 f26172i0;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f26171j0 = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // p086l.M0
    public final C3066z0 o(Context context, boolean z7) {
        Q0 q7 = new Q0(context, z7);
        q7.setHoverListener(this);
        return q7;
    }

    @Override // p086l.N0
    public final void q(o oVar, q qVar) {
        N0 n7 = this.f26172i0;
        if (n7 != null) {
            n7.q(oVar, qVar);
        }
    }

    @Override // p086l.N0
    public final void r(o oVar, MenuItem menuItem) {
        N0 n7 = this.f26172i0;
        if (n7 != null) {
            n7.r(oVar, menuItem);
        }
    }
}
