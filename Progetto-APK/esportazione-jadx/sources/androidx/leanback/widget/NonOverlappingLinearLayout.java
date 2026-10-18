package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class NonOverlappingLinearLayout extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f9144G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f9145H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f9146I;

    public NonOverlappingLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9144G = false;
        this.f9146I = new ArrayList();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        int iIndexOfChild;
        if (!this.f9145H) {
            super.focusableViewAvailable(view);
            return;
        }
        View view2 = view;
        while (true) {
            if (view2 == this || view2 == null) {
                iIndexOfChild = -1;
                break;
            } else {
                if (view2.getParent() == this) {
                    iIndexOfChild = indexOfChild(view2);
                    break;
                }
                view2 = (View) view2.getParent();
            }
        }
        if (iIndexOfChild != -1) {
            ((ArrayList) this.f9146I.get(iIndexOfChild)).add(view);
        }
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        ?? r7 = this.f9146I;
        ?? r8 = 0;
        int i12 = 0;
        try {
            boolean z8 = this.f9144G && getOrientation() == 0 && getLayoutDirection() == 1;
            this.f9145H = z8;
            if (z8) {
                while (r7.size() > getChildCount()) {
                    r7.remove(r7.size() - 1);
                }
                while (r7.size() < getChildCount()) {
                    r7.add(new ArrayList());
                }
            }
            super.onLayout(z7, i8, i9, i10, i11);
            if (this.f9145H) {
                for (int i13 = 0; i13 < r7.size(); i13++) {
                    for (int i14 = 0; i14 < ((ArrayList) r7.get(i13)).size(); i14++) {
                        super.focusableViewAvailable((View) ((ArrayList) r7.get(i13)).get(i14));
                    }
                }
            }
        } finally {
            if (this.f9145H) {
                this.f9145H = false;
                while (r8 < r7.size()) {
                    ((ArrayList) r7.get(r8)).clear();
                    r8++;
                }
            }
        }
    }

    public void setFocusableViewAvailableFixEnabled(boolean z7) {
        this.f9144G = z7;
    }
}
