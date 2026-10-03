package T;

import android.util.Property;
import android.view.View;
import androidx.leanback.transition.f;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements f {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6488G;

    @Override // androidx.leanback.transition.f
    public final float c(View view) {
        return view.getTranslationX();
    }

    @Override // androidx.leanback.transition.f
    public final Property d() {
        return View.TRANSLATION_X;
    }

    public abstract int e(View view, int i8);

    public abstract int f(View view, int i8);

    public int g(View view) {
        return 0;
    }

    public int h() {
        return 0;
    }

    public abstract void j(int i8);

    public abstract void k(View view, int i8, int i9);

    public abstract void l(View view, float f8, float f9);

    public abstract boolean m(View view, int i8);

    public abstract Object n();

    public String toString() {
        switch (this.f6488G) {
            case 3:
                return n().toString();
            default:
                return super.toString();
        }
    }

    public void i(View view, int i8) {
    }
}
