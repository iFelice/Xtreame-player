package N;

import android.view.View;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class U {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f4863a;

    public U(View view) {
        this.f4863a = new WeakReference(view);
    }

    public final void a(float f8) {
        View view = (View) this.f4863a.get();
        if (view != null) {
            view.animate().alpha(f8);
        }
    }

    public final void b() {
        View view = (View) this.f4863a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public final void c(long j8) {
        View view = (View) this.f4863a.get();
        if (view != null) {
            view.animate().setDuration(j8);
        }
    }

    public final void d(V v5) {
        View view = (View) this.f4863a.get();
        if (view != null) {
            if (v5 != null) {
                view.animate().setListener(new T(this, v5, view, 0));
            } else {
                view.animate().setListener(null);
            }
        }
    }

    public final void e(float f8) {
        View view = (View) this.f4863a.get();
        if (view != null) {
            view.animate().translationY(f8);
        }
    }
}
