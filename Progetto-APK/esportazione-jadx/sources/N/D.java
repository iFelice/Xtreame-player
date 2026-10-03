package N;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class D implements View.OnApplyWindowInsetsListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public i0 f4836a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f4837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0269s f4838c;

    public D(View view, InterfaceC0269s interfaceC0269s) {
        this.f4837b = view;
        this.f4838c = interfaceC0269s;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        i0 i0VarH = i0.h(windowInsets, view);
        int i8 = Build.VERSION.SDK_INT;
        InterfaceC0269s interfaceC0269s = this.f4838c;
        if (i8 < 30) {
            E.a(windowInsets, this.f4837b);
            if (i0VarH.equals(this.f4836a)) {
                return interfaceC0269s.k(view, i0VarH).g();
            }
        }
        this.f4836a = i0VarH;
        i0 i0VarK = interfaceC0269s.k(view, i0VarH);
        if (i8 >= 30) {
            return i0VarK.g();
        }
        WeakHashMap weakHashMap = N.f4843a;
        C.c(view);
        return i0VarK.g();
    }
}
