package N;

import android.view.View;
import android.view.WindowInsets;

/* JADX INFO: loaded from: classes.dex */
public abstract class F {
    public static i0 a(View view) {
        WindowInsets rootWindowInsets = view.getRootWindowInsets();
        if (rootWindowInsets == null) {
            return null;
        }
        i0 i0VarH = i0.h(rootWindowInsets, null);
        h0 h0Var = i0VarH.f4901a;
        h0Var.l(i0VarH);
        h0Var.d(view.getRootView());
        return i0VarH;
    }

    public static void b(View view, int i8, int i9) {
        view.setScrollIndicators(i8, i9);
    }
}
