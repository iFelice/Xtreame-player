package androidx.leanback.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: androidx.leanback.widget.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0495v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Rect f9384a = new Rect();

    public static int a(View view, C0494u c0494u, int i8) {
        View viewFindViewById;
        int height;
        int width;
        int width2;
        int width3;
        C0488n c0488n = (C0488n) view.getLayoutParams();
        int i9 = c0494u.f9379a;
        if (i9 == 0 || (viewFindViewById = view.findViewById(i9)) == null) {
            viewFindViewById = view;
        }
        int paddingBottom = c0494u.f9380b;
        Rect rect = f9384a;
        if (i8 != 0) {
            if (c0494u.f9382d) {
                float f8 = c0494u.f9381c;
                if (f8 == 0.0f) {
                    paddingBottom += viewFindViewById.getPaddingTop();
                } else if (f8 == 100.0f) {
                    paddingBottom -= viewFindViewById.getPaddingBottom();
                }
            }
            if (c0494u.f9381c != -1.0f) {
                if (viewFindViewById == view) {
                    c0488n.getClass();
                    height = (viewFindViewById.getHeight() - c0488n.f9312f) - c0488n.f9314h;
                } else {
                    height = viewFindViewById.getHeight();
                }
                paddingBottom += (int) ((height * c0494u.f9381c) / 100.0f);
            }
            if (view == viewFindViewById) {
                return paddingBottom;
            }
            rect.top = paddingBottom;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
            return rect.top - c0488n.f9312f;
        }
        if (view.getLayoutDirection() != 1) {
            if (c0494u.f9382d) {
                float f9 = c0494u.f9381c;
                if (f9 == 0.0f) {
                    paddingBottom += viewFindViewById.getPaddingLeft();
                } else if (f9 == 100.0f) {
                    paddingBottom -= viewFindViewById.getPaddingRight();
                }
            }
            if (c0494u.f9381c != -1.0f) {
                if (viewFindViewById == view) {
                    c0488n.getClass();
                    width = (viewFindViewById.getWidth() - c0488n.f9311e) - c0488n.f9313g;
                } else {
                    width = viewFindViewById.getWidth();
                }
                paddingBottom += (int) ((width * c0494u.f9381c) / 100.0f);
            }
            int i10 = paddingBottom;
            if (view == viewFindViewById) {
                return i10;
            }
            rect.left = i10;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
            return rect.left - c0488n.f9311e;
        }
        if (viewFindViewById == view) {
            c0488n.getClass();
            width2 = (viewFindViewById.getWidth() - c0488n.f9311e) - c0488n.f9313g;
        } else {
            width2 = viewFindViewById.getWidth();
        }
        int paddingLeft = width2 - paddingBottom;
        if (c0494u.f9382d) {
            float f10 = c0494u.f9381c;
            if (f10 == 0.0f) {
                paddingLeft -= viewFindViewById.getPaddingRight();
            } else if (f10 == 100.0f) {
                paddingLeft += viewFindViewById.getPaddingLeft();
            }
        }
        if (c0494u.f9381c != -1.0f) {
            if (viewFindViewById == view) {
                c0488n.getClass();
                width3 = (viewFindViewById.getWidth() - c0488n.f9311e) - c0488n.f9313g;
            } else {
                width3 = viewFindViewById.getWidth();
            }
            paddingLeft -= (int) ((width3 * c0494u.f9381c) / 100.0f);
        }
        if (view == viewFindViewById) {
            return paddingLeft;
        }
        rect.right = paddingLeft;
        ((ViewGroup) view).offsetDescendantRectToMyCoords(viewFindViewById, rect);
        return rect.right + c0488n.f9313g;
    }
}
