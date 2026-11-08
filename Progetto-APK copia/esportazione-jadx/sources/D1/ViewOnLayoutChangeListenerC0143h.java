package D1;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;

/* JADX INFO: renamed from: D1.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnLayoutChangeListenerC0143h implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2185b;

    public /* synthetic */ ViewOnLayoutChangeListenerC0143h(Object obj, int i8) {
        this.f2184a = i8;
        this.f2185b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15) {
        int height;
        int height2;
        int i16 = this.f2184a;
        Object obj = this.f2185b;
        switch (i16) {
            case 0:
                C0156v c0156v = (C0156v) obj;
                c0156v.getClass();
                int i17 = i11 - i9;
                int i18 = i15 - i13;
                if (i10 - i8 != i14 - i12 || i17 != i18) {
                    PopupWindow popupWindow = c0156v.f2253W;
                    if (popupWindow.isShowing()) {
                        c0156v.u();
                        int width = c0156v.getWidth() - popupWindow.getWidth();
                        int i19 = c0156v.f2258a0;
                        popupWindow.update(view, width - i19, (-popupWindow.getHeight()) - i19, -1, -1);
                    }
                }
                break;
            default:
                B b8 = (B) obj;
                C0156v c0156v2 = b8.f2033a;
                int width2 = (c0156v2.getWidth() - c0156v2.getPaddingLeft()) - c0156v2.getPaddingRight();
                int height3 = (c0156v2.getHeight() - c0156v2.getPaddingBottom()) - c0156v2.getPaddingTop();
                ViewGroup viewGroup = b8.f2035c;
                int iD = B.d(viewGroup) - (viewGroup != null ? viewGroup.getPaddingRight() + viewGroup.getPaddingLeft() : 0);
                if (viewGroup == null) {
                    height = 0;
                } else {
                    height = viewGroup.getHeight();
                    ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        height += marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
                    }
                }
                int paddingBottom = height - (viewGroup != null ? viewGroup.getPaddingBottom() + viewGroup.getPaddingTop() : 0);
                int iMax = Math.max(iD, B.d(b8.f2043k) + B.d(b8.f2041i));
                ViewGroup viewGroup2 = b8.f2036d;
                if (viewGroup2 == null) {
                    height2 = 0;
                } else {
                    height2 = viewGroup2.getHeight();
                    ViewGroup.LayoutParams layoutParams2 = viewGroup2.getLayoutParams();
                    if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                        height2 += marginLayoutParams2.topMargin + marginLayoutParams2.bottomMargin;
                    }
                }
                boolean z7 = width2 <= iMax || height3 <= (height2 * 2) + paddingBottom;
                if (b8.f2030A != z7) {
                    b8.f2030A = z7;
                    view.post(new w(b8, 5));
                }
                boolean z8 = i10 - i8 != i14 - i12;
                if (!b8.f2030A && z8) {
                    view.post(new w(b8, 6));
                    break;
                }
                break;
        }
    }
}
