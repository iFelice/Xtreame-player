package O1;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public final class g0 extends C0323w {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final /* synthetic */ int f5397q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final /* synthetic */ Object f5398r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g0(Object obj, Context context, int i8) {
        super(context);
        this.f5397q = i8;
        this.f5398r = obj;
    }

    @Override // O1.C0323w
    public final float b(DisplayMetrics displayMetrics) {
        switch (this.f5397q) {
            case 0:
                return 100.0f / displayMetrics.densityDpi;
            default:
                return 2.0f / displayMetrics.densityDpi;
        }
    }

    @Override // O1.C0323w
    public final PointF d(int i8) {
        switch (this.f5397q) {
            case 1:
                break;
        }
        return super.d(i8);
    }

    @Override // O1.C0323w
    public final void g(View view, Y y7, W w7) {
        switch (this.f5397q) {
            case 0:
                C0324x c0324x = (C0324x) this.f5398r;
                RecyclerView recyclerView = c0324x.f5553a;
                if (recyclerView != null) {
                    int[] iArrA = c0324x.a(recyclerView.getLayoutManager(), view);
                    int i8 = iArrA[0];
                    int i9 = iArrA[1];
                    int iCeil = (int) Math.ceil(((double) c(Math.max(Math.abs(i8), Math.abs(i9)))) / 0.3356d);
                    if (iCeil > 0) {
                        DecelerateInterpolator decelerateInterpolator = this.f5546j;
                        w7.f5307a = i8;
                        w7.f5308b = i9;
                        w7.f5309c = iCeil;
                        w7.f5311e = decelerateInterpolator;
                        w7.f5312f = true;
                    }
                    break;
                }
                break;
            default:
                super.g(view, y7, w7);
                break;
        }
    }
}
