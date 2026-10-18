package W4;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import p079k.AbstractC3012d;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public final class c extends M2.c {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ImageView f7485J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ AbstractC3012d f7486K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ Activity f7487L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f7488M;

    public c(e eVar, AbstractC3012d abstractC3012d, Activity activity, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        this.f7486K = abstractC3012d;
        this.f7487L = activity;
        this.f7488M = onGlobalLayoutListener;
    }

    @Override // M2.i
    public final void a(Object obj, N2.e eVar) {
        Drawable drawable = (Drawable) obj;
        k.S("Downloading Image Success!!!");
        ImageView imageView = this.f7485J;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
        k();
    }

    @Override // M2.c, M2.i
    public final void d(Drawable drawable) {
        k.S("Downloading Image Failed");
        ImageView imageView = this.f7485J;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
        new Exception("Image loading failed!");
        k.V("Image download failure ");
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f7488M;
        if (onGlobalLayoutListener != null) {
            this.f7486K.i().getViewTreeObserver().removeGlobalOnLayoutListener(onGlobalLayoutListener);
        }
        throw null;
    }

    @Override // M2.i
    public final void i(Drawable drawable) {
        k.S("Downloading Image Cleared");
        ImageView imageView = this.f7485J;
        if (imageView != null) {
            imageView.setImageDrawable(drawable);
        }
        k();
    }

    public final void k() {
        this.f7486K.f().getClass();
        throw null;
    }
}
