package H;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class f extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f3422a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Drawable.ConstantState f3423b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f3424c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f3425d;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        int i8 = this.f3422a;
        Drawable.ConstantState constantState = this.f3423b;
        return i8 | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        e eVar = new e(this, resources);
        e.e();
        return eVar;
    }
}
