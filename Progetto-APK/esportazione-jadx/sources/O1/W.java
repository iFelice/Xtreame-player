package O1;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class W {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5309c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5310d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Interpolator f5311e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f5312f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f5313g;

    public final void a(RecyclerView recyclerView) {
        int i8 = this.f5310d;
        if (i8 >= 0) {
            this.f5310d = -1;
            recyclerView.R(i8);
            this.f5312f = false;
            return;
        }
        if (!this.f5312f) {
            this.f5313g = 0;
            return;
        }
        Interpolator interpolator = this.f5311e;
        if (interpolator != null && this.f5309c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i9 = this.f5309c;
        if (i9 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.f9629K0.c(this.f5307a, this.f5308b, i9, interpolator);
        int i10 = this.f5313g + 1;
        this.f5313g = i10;
        if (i10 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f5312f = false;
    }
}
