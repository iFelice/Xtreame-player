package G2;

import android.graphics.drawable.Drawable;
import y2.A;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements D, A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Drawable f3397G;

    public b(Drawable drawable) {
        p102n0.c.c(drawable, "Argument must not be null");
        this.f3397G = drawable;
    }

    @Override // y2.D
    public final Object get() {
        Drawable drawable = this.f3397G;
        Drawable.ConstantState constantState = drawable.getConstantState();
        return constantState == null ? drawable : constantState.newDrawable();
    }
}
