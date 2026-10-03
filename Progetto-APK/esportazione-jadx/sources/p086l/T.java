package p086l;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import p039f.C2991f;
import p079k.ViewTreeObserverOnGlobalLayoutListenerC3013e;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class T extends M0 implements V {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public CharSequence f26176i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ListAdapter f26177j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final Rect f26178k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f26179l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final /* synthetic */ W f26180m0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public T(W w7, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.f26180m0 = w7;
        this.f26178k0 = new Rect();
        this.f26144U = w7;
        this.f26153d0 = true;
        this.f26154e0.setFocusable(true);
        this.f26145V = new C2991f(1, this, w7);
    }

    @Override // p086l.V
    public final CharSequence d() {
        return this.f26176i0;
    }

    @Override // p086l.V
    public final void f(CharSequence charSequence) {
        this.f26176i0 = charSequence;
    }

    @Override // p086l.V
    public final void k(int i8) {
        this.f26179l0 = i8;
    }

    @Override // p086l.V
    public final void l(int i8, int i9) {
        ViewTreeObserver viewTreeObserver;
        G g8 = this.f26154e0;
        boolean zIsShowing = g8.isShowing();
        s();
        this.f26154e0.setInputMethodMode(2);
        h();
        C3066z0 c3066z0 = this.f26132I;
        c3066z0.setChoiceMode(1);
        c3066z0.setTextDirection(i8);
        c3066z0.setTextAlignment(i9);
        W w7 = this.f26180m0;
        int selectedItemPosition = w7.getSelectedItemPosition();
        C3066z0 c3066z1 = this.f26132I;
        if (g8.isShowing() && c3066z1 != null) {
            c3066z1.setListSelectionHidden(false);
            c3066z1.setSelection(selectedItemPosition);
            if (c3066z1.getChoiceMode() != 0) {
                c3066z1.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = w7.getViewTreeObserver()) == null) {
            return;
        }
        ViewTreeObserverOnGlobalLayoutListenerC3013e viewTreeObserverOnGlobalLayoutListenerC3013e = new ViewTreeObserverOnGlobalLayoutListenerC3013e(this, 3);
        viewTreeObserver.addOnGlobalLayoutListener(viewTreeObserverOnGlobalLayoutListenerC3013e);
        this.f26154e0.setOnDismissListener(new S(this, viewTreeObserverOnGlobalLayoutListenerC3013e));
    }

    @Override // p086l.M0, p086l.V
    public final void n(ListAdapter listAdapter) {
        super.n(listAdapter);
        this.f26177j0 = listAdapter;
    }

    public final void s() {
        int i8;
        G g8 = this.f26154e0;
        Drawable background = g8.getBackground();
        W w7 = this.f26180m0;
        if (background != null) {
            background.getPadding(w7.f26200N);
            boolean z7 = w1.f26407a;
            int layoutDirection = w7.getLayoutDirection();
            Rect rect = w7.f26200N;
            i8 = layoutDirection == 1 ? rect.right : -rect.left;
        } else {
            Rect rect2 = w7.f26200N;
            rect2.right = 0;
            rect2.left = 0;
            i8 = 0;
        }
        int paddingLeft = w7.getPaddingLeft();
        int paddingRight = w7.getPaddingRight();
        int width = w7.getWidth();
        int i9 = w7.f26199M;
        if (i9 == -2) {
            int iA = w7.a((SpinnerAdapter) this.f26177j0, g8.getBackground());
            int i10 = w7.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = w7.f26200N;
            int i11 = (i10 - rect3.left) - rect3.right;
            if (iA > i11) {
                iA = i11;
            }
            p(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i9 == -1) {
            p((width - paddingLeft) - paddingRight);
        } else {
            p(i9);
        }
        boolean z8 = w1.f26407a;
        this.f26135L = w7.getLayoutDirection() == 1 ? (((width - paddingRight) - this.f26134K) - this.f26179l0) + i8 : paddingLeft + this.f26179l0 + i8;
    }
}
