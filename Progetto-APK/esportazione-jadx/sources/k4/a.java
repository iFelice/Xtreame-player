package k4;

import N.N;
import T.b;
import android.view.View;
import android.view.ViewParent;
import com.google.android.material.behavior.SwipeDismissBehavior;
import java.util.WeakHashMap;
import p032e0.F;

/* JADX INFO: loaded from: classes.dex */
public final class a extends b {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f26007H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f26008I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f26009J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(SwipeDismissBehavior swipeDismissBehavior) {
        super(0);
        this.f26009J = swipeDismissBehavior;
        this.f26008I = -1;
    }

    @Override // T.b
    public final int e(View view, int i8) {
        int width;
        int width2;
        int width3;
        WeakHashMap weakHashMap = N.f4843a;
        boolean z7 = view.getLayoutDirection() == 1;
        int i9 = this.f26009J.f24107c;
        if (i9 == 0) {
            if (z7) {
                width = this.f26007H - view.getWidth();
                width2 = this.f26007H;
            } else {
                width = this.f26007H;
                width3 = view.getWidth();
                width2 = width3 + width;
            }
        } else if (i9 != 1) {
            width = this.f26007H - view.getWidth();
            width2 = view.getWidth() + this.f26007H;
        } else if (z7) {
            width = this.f26007H;
            width3 = view.getWidth();
            width2 = width3 + width;
        } else {
            width = this.f26007H - view.getWidth();
            width2 = this.f26007H;
        }
        return Math.min(Math.max(width, i8), width2);
    }

    @Override // T.b
    public final int f(View view, int i8) {
        return view.getTop();
    }

    @Override // T.b
    public final int g(View view) {
        return view.getWidth();
    }

    @Override // T.b
    public final void i(View view, int i8) {
        this.f26008I = i8;
        this.f26007H = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    @Override // T.b
    public final void j(int i8) {
        this.f26009J.getClass();
    }

    @Override // T.b
    public final void k(View view, int i8, int i9) {
        float f8 = this.f26007H;
        float width = view.getWidth();
        SwipeDismissBehavior swipeDismissBehavior = this.f26009J;
        float f9 = (width * swipeDismissBehavior.f24109e) + f8;
        float width2 = (view.getWidth() * swipeDismissBehavior.f24110f) + this.f26007H;
        float f10 = i8;
        if (f10 <= f9) {
            view.setAlpha(1.0f);
        } else if (f10 >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(Math.min(Math.max(0.0f, 1.0f - ((f10 - f9) / (width2 - f9))), 1.0f));
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0053  */
    /* JADX WARN: Code duplicated, block: B:29:0x005b  */
    /* JADX WARN: Code duplicated, block: B:30:0x005d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    @Override // T.b
    public final void l(View view, float f8, float f9) {
        int left;
        int i8;
        int i9;
        boolean z7;
        this.f26008I = -1;
        int width = view.getWidth();
        int i10 = 1;
        SwipeDismissBehavior swipeDismissBehavior = this.f26009J;
        if (f8 != 0.0f) {
            WeakHashMap weakHashMap = N.f4843a;
            boolean z8 = view.getLayoutDirection() == 1;
            int i11 = swipeDismissBehavior.f24107c;
            if (i11 != 2 && (i11 != 0 ? i11 != 1 || (!z8 ? f8 < 0.0f : f8 > 0.0f) : !z8 ? f8 > 0.0f : f8 < 0.0f)) {
                i9 = this.f26007H;
                z7 = false;
            } else {
                left = view.getLeft();
                i8 = this.f26007H;
                if (left < i8) {
                    i9 = i8 - width;
                } else {
                    i9 = i8 + width;
                }
                z7 = true;
            }
        } else {
            if (Math.abs(view.getLeft() - this.f26007H) >= Math.round(view.getWidth() * swipeDismissBehavior.f24108d)) {
                left = view.getLeft();
                i8 = this.f26007H;
                if (left < i8) {
                    i9 = i8 - width;
                } else {
                    i9 = i8 + width;
                }
                z7 = true;
            } else {
                i9 = this.f26007H;
                z7 = false;
            }
        }
        if (swipeDismissBehavior.f24105a.o(i9, view.getTop())) {
            F f10 = new F(swipeDismissBehavior, view, z7, i10);
            WeakHashMap weakHashMap2 = N.f4843a;
            view.postOnAnimation(f10);
        }
    }

    @Override // T.b
    public final boolean m(View view, int i8) {
        return this.f26008I == -1 && this.f26009J.s(view);
    }
}
