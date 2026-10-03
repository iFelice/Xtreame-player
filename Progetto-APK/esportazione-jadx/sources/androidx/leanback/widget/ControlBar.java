package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ControlBar extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f9100G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f9101H;

    public ControlBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9100G = -1;
        this.f9101H = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i8, int i9) {
        if (i8 != 33 && i8 != 130) {
            super.addFocusables(arrayList, i8, i9);
            return;
        }
        int i10 = this.f9100G;
        if (i10 >= 0 && i10 < getChildCount()) {
            arrayList.add(getChildAt(this.f9100G));
        } else if (getChildCount() > 0) {
            arrayList.add(getChildAt(this.f9101H ? getChildCount() / 2 : 0));
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i8, Rect rect) {
        int childCount;
        if (getChildCount() > 0) {
            int i9 = this.f9100G;
            if (i9 < 0 || i9 >= getChildCount()) {
                childCount = this.f9101H ? getChildCount() / 2 : 0;
            } else {
                childCount = this.f9100G;
            }
            if (getChildAt(childCount).requestFocus(i8, rect)) {
                return true;
            }
        }
        return super.onRequestFocusInDescendants(i8, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f9100G = indexOfChild(view);
    }
}
