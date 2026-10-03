package O1;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: O1.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C0323w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5537a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public RecyclerView f5538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public L f5539c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5540d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f5542f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final W f5543g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f5545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f5546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PointF f5547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f5548l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5549m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f5550n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5551o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f5552p;

    public C0323w(Context context) {
        W w7 = new W();
        w7.f5310d = -1;
        w7.f5312f = false;
        w7.f5313g = 0;
        w7.f5307a = 0;
        w7.f5308b = 0;
        w7.f5309c = Integer.MIN_VALUE;
        w7.f5311e = null;
        this.f5543g = w7;
        this.f5545i = new LinearInterpolator();
        this.f5546j = new DecelerateInterpolator();
        this.f5549m = false;
        this.f5551o = 0;
        this.f5552p = 0;
        this.f5548l = context.getResources().getDisplayMetrics();
    }

    public static int a(int i8, int i9, int i10, int i11, int i12) {
        if (i12 == -1) {
            return i10 - i8;
        }
        if (i12 != 0) {
            if (i12 == 1) {
                return i11 - i9;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i13 = i10 - i8;
        if (i13 > 0) {
            return i13;
        }
        int i14 = i11 - i9;
        if (i14 < 0) {
            return i14;
        }
        return 0;
    }

    public float b(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public int c(int i8) {
        float fAbs = Math.abs(i8);
        if (!this.f5549m) {
            this.f5550n = b(this.f5548l);
            this.f5549m = true;
        }
        return (int) Math.ceil(fAbs * this.f5550n);
    }

    public PointF d(int i8) {
        Object obj = this.f5539c;
        if (obj instanceof X) {
            return ((X) obj).a(i8);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + X.class.getCanonicalName());
        return null;
    }

    public final void e(int i8, int i9) {
        PointF pointFD;
        RecyclerView recyclerView = this.f5538b;
        if (this.f5537a == -1 || recyclerView == null) {
            h();
        }
        if (this.f5540d && this.f5542f == null && this.f5539c != null && (pointFD = d(this.f5537a)) != null) {
            float f8 = pointFD.x;
            if (f8 != 0.0f || pointFD.y != 0.0f) {
                recyclerView.g0((int) Math.signum(f8), (int) Math.signum(pointFD.y), null);
            }
        }
        this.f5540d = false;
        View view = this.f5542f;
        W w7 = this.f5543g;
        if (view != null) {
            this.f5538b.getClass();
            c0 c0VarL = RecyclerView.L(view);
            if ((c0VarL != null ? c0VarL.d() : -1) == this.f5537a) {
                g(this.f5542f, recyclerView.f9635N0, w7);
                w7.a(recyclerView);
                h();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f5542f = null;
            }
        }
        if (this.f5541e) {
            Y y7 = recyclerView.f9635N0;
            if (this.f5538b.f9646T.x() == 0) {
                h();
            } else {
                int i10 = this.f5551o;
                int i11 = i10 - i8;
                if (i10 * i11 <= 0) {
                    i11 = 0;
                }
                this.f5551o = i11;
                int i12 = this.f5552p;
                int i13 = i12 - i9;
                if (i12 * i13 <= 0) {
                    i13 = 0;
                }
                this.f5552p = i13;
                if (i11 == 0 && i13 == 0) {
                    i(w7);
                }
            }
            boolean z7 = w7.f5310d >= 0;
            w7.a(recyclerView);
            if (z7 && this.f5541e) {
                this.f5540d = true;
                recyclerView.f9629K0.b();
            }
        }
    }

    public void f() {
        this.f5552p = 0;
        this.f5551o = 0;
        this.f5547k = null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0015  */
    /* JADX WARN: Code duplicated, block: B:25:0x0055  */
    public void g(View view, Y y7, W w7) {
        int i8;
        int iA;
        PointF pointF = this.f5547k;
        int i9 = -1;
        int iA2 = 0;
        if (pointF != null) {
            float f8 = pointF.x;
            if (f8 == 0.0f) {
                i8 = 0;
            } else {
                i8 = f8 > 0.0f ? 1 : -1;
            }
        } else {
            i8 = 0;
        }
        L l4 = this.f5539c;
        if (l4 == null || !l4.e()) {
            iA = 0;
        } else {
            M m7 = (M) view.getLayoutParams();
            iA = a(l4.C(view) - ((ViewGroup.MarginLayoutParams) m7).leftMargin, l4.F(view) + ((ViewGroup.MarginLayoutParams) m7).rightMargin, l4.J(), l4.f5292n - l4.K(), i8);
        }
        PointF pointF2 = this.f5547k;
        if (pointF2 != null) {
            float f9 = pointF2.y;
            if (f9 == 0.0f) {
                i9 = 0;
            } else if (f9 > 0.0f) {
                i9 = 1;
            }
        } else {
            i9 = 0;
        }
        L l8 = this.f5539c;
        if (l8 != null && l8.f()) {
            M m8 = (M) view.getLayoutParams();
            iA2 = a(l8.G(view) - ((ViewGroup.MarginLayoutParams) m8).topMargin, l8.A(view) + ((ViewGroup.MarginLayoutParams) m8).bottomMargin, l8.L(), l8.f5293o - l8.I(), i9);
        }
        int iCeil = (int) Math.ceil(((double) c((int) Math.sqrt((iA2 * iA2) + (iA * iA)))) / 0.3356d);
        if (iCeil > 0) {
            DecelerateInterpolator decelerateInterpolator = this.f5546j;
            w7.f5307a = -iA;
            w7.f5308b = -iA2;
            w7.f5309c = iCeil;
            w7.f5311e = decelerateInterpolator;
            w7.f5312f = true;
        }
    }

    public final void h() {
        if (this.f5541e) {
            this.f5541e = false;
            f();
            this.f5538b.f9635N0.f5314a = -1;
            this.f5542f = null;
            this.f5537a = -1;
            this.f5540d = false;
            L l4 = this.f5539c;
            if (l4.f5283e == this) {
                l4.f5283e = null;
            }
            this.f5539c = null;
            this.f5538b = null;
        }
    }

    public void i(W w7) {
        PointF pointFD = d(this.f5537a);
        if (pointFD != null) {
            float f8 = pointFD.x;
            if (f8 != 0.0f || pointFD.y != 0.0f) {
                float f9 = pointFD.y;
                float fSqrt = (float) Math.sqrt((f9 * f9) + (f8 * f8));
                float f10 = pointFD.x / fSqrt;
                pointFD.x = f10;
                float f11 = pointFD.y / fSqrt;
                pointFD.y = f11;
                this.f5547k = pointFD;
                this.f5551o = (int) (f10 * 10000.0f);
                this.f5552p = (int) (f11 * 10000.0f);
                int iC = c(10000);
                int i8 = (int) (this.f5551o * 1.2f);
                int i9 = (int) (this.f5552p * 1.2f);
                LinearInterpolator linearInterpolator = this.f5545i;
                w7.f5307a = i8;
                w7.f5308b = i9;
                w7.f5309c = (int) (iC * 1.2f);
                w7.f5311e = linearInterpolator;
                w7.f5312f = true;
                return;
            }
        }
        w7.f5310d = this.f5537a;
        h();
    }
}
