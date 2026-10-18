package J2;

import android.app.Activity;
import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class f implements g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Set f4100G = Collections.newSetFromMap(new WeakHashMap());

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public volatile boolean f4101H;

    @Override // J2.g
    public final void c(Activity activity) {
        if (!this.f4101H && this.f4100G.add(activity)) {
            View decorView = activity.getWindow().getDecorView();
            decorView.getViewTreeObserver().addOnDrawListener(new e(this, decorView));
        }
    }
}
