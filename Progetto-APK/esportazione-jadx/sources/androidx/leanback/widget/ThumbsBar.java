package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ThumbsBar extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f9255G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f9256H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f9257I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f9258J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f9259K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f9260L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f9261M;

    public ThumbsBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9255G = -1;
        new SparseArray();
        this.f9261M = false;
        this.f9256H = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_width);
        this.f9257I = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_height);
        this.f9259K = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_hero_thumbs_width);
        this.f9258J = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_hero_thumbs_height);
        this.f9260L = context.getResources().getDimensionPixelSize(R.dimen.lb_playback_transport_thumbs_margin);
    }

    public final void a() {
        int i8;
        int i9;
        while (getChildCount() > this.f9255G) {
            removeView(getChildAt(getChildCount() - 1));
        }
        while (true) {
            int childCount = getChildCount();
            int i10 = this.f9255G;
            i8 = this.f9257I;
            i9 = this.f9256H;
            if (childCount >= i10) {
                break;
            } else {
                addView(new ImageView(getContext()), new LinearLayout.LayoutParams(i9, i8));
            }
        }
        int heroIndex = getHeroIndex();
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (heroIndex == i11) {
                layoutParams.width = this.f9258J;
                layoutParams.height = this.f9259K;
            } else {
                layoutParams.width = i9;
                layoutParams.height = i8;
            }
            childAt.setLayoutParams(layoutParams);
        }
    }

    public int getHeroIndex() {
        return getChildCount() / 2;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        int heroIndex = getHeroIndex();
        View childAt = getChildAt(heroIndex);
        int width = (getWidth() / 2) - (childAt.getMeasuredWidth() / 2);
        int measuredWidth = (childAt.getMeasuredWidth() / 2) + (getWidth() / 2);
        childAt.layout(width, getPaddingTop(), measuredWidth, childAt.getMeasuredHeight() + getPaddingTop());
        int measuredHeight = (childAt.getMeasuredHeight() / 2) + getPaddingTop();
        for (int i12 = heroIndex - 1; i12 >= 0; i12--) {
            int i13 = width - this.f9260L;
            View childAt2 = getChildAt(i12);
            childAt2.layout(i13 - childAt2.getMeasuredWidth(), measuredHeight - (childAt2.getMeasuredHeight() / 2), i13, (childAt2.getMeasuredHeight() / 2) + measuredHeight);
            width = i13 - childAt2.getMeasuredWidth();
        }
        while (true) {
            heroIndex++;
            if (heroIndex >= this.f9255G) {
                return;
            }
            int i14 = measuredWidth + this.f9260L;
            View childAt3 = getChildAt(heroIndex);
            childAt3.layout(i14, measuredHeight - (childAt3.getMeasuredHeight() / 2), childAt3.getMeasuredWidth() + i14, (childAt3.getMeasuredHeight() / 2) + measuredHeight);
            measuredWidth = i14 + childAt3.getMeasuredWidth();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        int measuredWidth = getMeasuredWidth();
        if (this.f9261M) {
            return;
        }
        int i10 = measuredWidth - this.f9258J;
        int i11 = this.f9256H + this.f9260L;
        int i12 = ((i10 + i11) - 1) / i11;
        if (i12 < 2) {
            i12 = 2;
        } else if ((i12 & 1) != 0) {
            i12++;
        }
        int i13 = i12 + 1;
        if (this.f9255G != i13) {
            this.f9255G = i13;
            a();
        }
    }

    public void setNumberOfThumbs(int i8) {
        this.f9261M = true;
        this.f9255G = i8;
        a();
    }

    public void setThumbSpace(int i8) {
        this.f9260L = i8;
        requestLayout();
    }
}
