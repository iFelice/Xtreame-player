package p047g;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public abstract class j extends h {

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public i f25290T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f25291U;

    @Override // p047g.h, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        super.applyTheme(theme);
        onStateChange(getState());
    }

    @Override // p047g.h, android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f25291U) {
            super.mutate();
            b bVar = (b) this.f25290T;
            bVar.f25229I = bVar.f25229I.clone();
            bVar.f25230J = bVar.f25230J.clone();
            this.f25291U = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public abstract boolean onStateChange(int[] iArr);
}
