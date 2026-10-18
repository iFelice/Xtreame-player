package p047g;

import Y1.d;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Drawable.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25241G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f25242H;

    public f() {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        switch (this.f25241G) {
            case 0:
                break;
            default:
                ((d) this.f25242H).invalidateSelf();
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j8) {
        switch (this.f25241G) {
            case 0:
                Drawable.Callback callback = (Drawable.Callback) this.f25242H;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j8);
                }
                break;
            default:
                ((d) this.f25242H).scheduleSelf(runnable, j8);
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.f25241G) {
            case 0:
                Drawable.Callback callback = (Drawable.Callback) this.f25242H;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                }
                break;
            default:
                ((d) this.f25242H).unscheduleSelf(runnable);
                break;
        }
    }

    public f(d dVar) {
        this.f25242H = dVar;
    }
}
