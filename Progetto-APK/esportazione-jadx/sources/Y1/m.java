package Y1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class m extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public l f8112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ColorStateList f8113c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f8114d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8115e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Bitmap f8116f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ColorStateList f8117g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f8118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8119i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f8120j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f8121k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Paint f8122l;

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f8111a;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new o(this);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new o(this);
    }
}
