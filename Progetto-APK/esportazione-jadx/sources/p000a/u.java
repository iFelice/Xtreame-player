package p000a;

import C6.a;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u f8612a = new u();

    public final OnBackInvokedCallback a(a aVar) {
        q0.h(aVar, "onBackInvoked");
        return new t(aVar, 0);
    }

    public final void b(Object obj, int i8, Object obj2) {
        q0.h(obj, "dispatcher");
        q0.h(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(i8, (OnBackInvokedCallback) obj2);
    }

    public final void c(Object obj, Object obj2) {
        q0.h(obj, "dispatcher");
        q0.h(obj2, "callback");
        ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
    }
}
