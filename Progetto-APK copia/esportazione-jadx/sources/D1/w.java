package D1;

import android.animation.ValueAnimator;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2297G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ B f2298H;

    public /* synthetic */ w(B b8, int i8) {
        this.f2297G = i8;
        this.f2298H = b8;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x0096 A[LOOP:3: B:31:0x0090->B:33:0x0096, LOOP_END] */
    @Override // java.lang.Runnable
    public final void run() {
        ViewGroup viewGroup;
        int i8 = this.f2297G;
        B b8 = this.f2298H;
        switch (i8) {
            case 0:
                b8.l();
                break;
            case 1:
                b8.f2046n.start();
                break;
            case 2:
                b8.f2045m.start();
                break;
            case 3:
                b8.f2044l.start();
                b8.f(b8.f2053u, 2000L);
                break;
            case 4:
                b8.j(2);
                break;
            case 5:
                ViewGroup viewGroup2 = b8.f2037e;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(b8.f2030A ? 0 : 4);
                }
                View view = b8.f2042j;
                if (view != null) {
                    int dimensionPixelSize = b8.f2033a.getResources().getDimensionPixelSize(R.dimen.exo_styled_progress_margin_bottom);
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    if (marginLayoutParams != null) {
                        if (b8.f2030A) {
                            dimensionPixelSize = 0;
                        }
                        marginLayoutParams.bottomMargin = dimensionPixelSize;
                        view.setLayoutParams(marginLayoutParams);
                    }
                    if (view instanceof C0140e) {
                        C0140e c0140e = (C0140e) view;
                        boolean z7 = b8.f2030A;
                        Rect rect = c0140e.f2140G;
                        if (z7) {
                            ValueAnimator valueAnimator = c0140e.f2170n0;
                            if (valueAnimator.isStarted()) {
                                valueAnimator.cancel();
                            }
                            c0140e.f2172p0 = true;
                            c0140e.f2171o0 = 0.0f;
                            c0140e.invalidate(rect);
                        } else {
                            int i9 = b8.f2058z;
                            if (i9 == 1) {
                                ValueAnimator valueAnimator2 = c0140e.f2170n0;
                                if (valueAnimator2.isStarted()) {
                                    valueAnimator2.cancel();
                                }
                                c0140e.f2172p0 = false;
                                c0140e.f2171o0 = 0.0f;
                                c0140e.invalidate(rect);
                            } else if (i9 != 3) {
                                ValueAnimator valueAnimator3 = c0140e.f2170n0;
                                if (valueAnimator3.isStarted()) {
                                    valueAnimator3.cancel();
                                }
                                c0140e.f2172p0 = false;
                                c0140e.f2171o0 = 1.0f;
                                c0140e.invalidate(rect);
                            }
                        }
                    }
                }
                for (View view2 : b8.f2057y) {
                    view2.setVisibility((b8.f2030A && B.k(view2)) ? 4 : 0);
                }
                break;
            default:
                ViewGroup viewGroup3 = b8.f2038f;
                if (viewGroup3 != null && (viewGroup = b8.f2039g) != null) {
                    C0156v c0156v = b8.f2033a;
                    int width = (c0156v.getWidth() - c0156v.getPaddingLeft()) - c0156v.getPaddingRight();
                    while (viewGroup.getChildCount() > 1) {
                        int childCount = viewGroup.getChildCount() - 2;
                        View childAt = viewGroup.getChildAt(childCount);
                        viewGroup.removeViewAt(childCount);
                        viewGroup3.addView(childAt, 0);
                    }
                    View view3 = b8.f2043k;
                    if (view3 != null) {
                        view3.setVisibility(8);
                    }
                    int iD = B.d(b8.f2041i);
                    int childCount2 = viewGroup3.getChildCount() - 1;
                    for (int i10 = 0; i10 < childCount2; i10++) {
                        iD += B.d(viewGroup3.getChildAt(i10));
                    }
                    if (iD > width) {
                        if (view3 != null) {
                            view3.setVisibility(0);
                            iD += B.d(view3);
                        }
                        ArrayList arrayList = new ArrayList();
                        for (int i11 = 0; i11 < childCount2; i11++) {
                            View childAt2 = viewGroup3.getChildAt(i11);
                            iD -= B.d(childAt2);
                            arrayList.add(childAt2);
                            if (iD <= width) {
                                if (!arrayList.isEmpty()) {
                                    viewGroup3.removeViews(0, arrayList.size());
                                    for (int i12 = 0; i12 < arrayList.size(); i12++) {
                                        viewGroup.addView((View) arrayList.get(i12), viewGroup.getChildCount() - 1);
                                    }
                                }
                            }
                            break;
                        }
                        if (!arrayList.isEmpty()) {
                            viewGroup3.removeViews(0, arrayList.size());
                            while (i12 < arrayList.size()) {
                                viewGroup.addView((View) arrayList.get(i12), viewGroup.getChildCount() - 1);
                            }
                        }
                        break;
                    } else {
                        ViewGroup viewGroup4 = b8.f2040h;
                        if (viewGroup4 != null && viewGroup4.getVisibility() == 0) {
                            ValueAnimator valueAnimator4 = b8.f2050r;
                            if (!valueAnimator4.isStarted()) {
                                b8.f2049q.cancel();
                                valueAnimator4.start();
                            }
                            break;
                        }
                    }
                }
                break;
        }
    }
}
