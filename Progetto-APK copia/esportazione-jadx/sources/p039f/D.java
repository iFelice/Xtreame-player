package p039f;

import D0.AbstractC0112b;
import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.Objects;
import p000a.t;

/* JADX INFO: loaded from: classes.dex */
public abstract class D {
    public static OnBackInvokedDispatcher a(Activity activity) {
        return activity.getOnBackInvokedDispatcher();
    }

    public static OnBackInvokedCallback b(Object obj, K k8) {
        Objects.requireNonNull(k8);
        t tVar = new t(k8, 1);
        AbstractC0112b.e(obj).registerOnBackInvokedCallback(1000000, tVar);
        return tVar;
    }

    public static void c(Object obj, Object obj2) {
        AbstractC0112b.e(obj).unregisterOnBackInvokedCallback(AbstractC0112b.b(obj2));
    }
}
