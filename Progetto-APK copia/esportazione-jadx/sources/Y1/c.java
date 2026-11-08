package Y1;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class c extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable.ConstantState f8062a;

    public c(Drawable.ConstantState constantState) {
        this.f8062a = constantState;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        return this.f8062a.canApplyTheme();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.f8062a.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        d dVar = new d(null);
        Drawable drawableNewDrawable = this.f8062a.newDrawable();
        dVar.f8067G = drawableNewDrawable;
        drawableNewDrawable.setCallback(dVar.f8065J);
        return dVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        d dVar = new d(null);
        Drawable drawableNewDrawable = this.f8062a.newDrawable(resources);
        dVar.f8067G = drawableNewDrawable;
        drawableNewDrawable.setCallback(dVar.f8065J);
        return dVar;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources, Resources.Theme theme) {
        d dVar = new d(null);
        Drawable drawableNewDrawable = this.f8062a.newDrawable(resources, theme);
        dVar.f8067G = drawableNewDrawable;
        drawableNewDrawable.setCallback(dVar.f8065J);
        return dVar;
    }
}
