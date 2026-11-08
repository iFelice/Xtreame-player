package androidx.appcompat.widget;

import N.U;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import p039f.K;
import p039f.y;
import p079k.o;
import p086l.C3032i;
import p086l.C3042n;
import p086l.InterfaceC3045o0;
import p086l.InterfaceC3047p0;
import p086l.o1;

/* JADX INFO: loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public TypedValue f8836G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public TypedValue f8837H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public TypedValue f8838I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public TypedValue f8839J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public TypedValue f8840K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public TypedValue f8841L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Rect f8842M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public InterfaceC3045o0 f8843N;

    public ContentFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f8842M = new Rect();
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f8840K == null) {
            this.f8840K = new TypedValue();
        }
        return this.f8840K;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f8841L == null) {
            this.f8841L = new TypedValue();
        }
        return this.f8841L;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f8838I == null) {
            this.f8838I = new TypedValue();
        }
        return this.f8838I;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f8839J == null) {
            this.f8839J = new TypedValue();
        }
        return this.f8839J;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f8836G == null) {
            this.f8836G = new TypedValue();
        }
        return this.f8836G;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f8837H == null) {
            this.f8837H = new TypedValue();
        }
        return this.f8837H;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC3045o0 interfaceC3045o0 = this.f8843N;
        if (interfaceC3045o0 != null) {
            interfaceC3045o0.getClass();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        C3042n c3042n;
        super.onDetachedFromWindow();
        InterfaceC3045o0 interfaceC3045o0 = this.f8843N;
        if (interfaceC3045o0 != null) {
            K k8 = ((y) interfaceC3045o0).f25129H;
            InterfaceC3047p0 interfaceC3047p0 = k8.f24949X;
            if (interfaceC3047p0 != null) {
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC3047p0;
                actionBarOverlayLayout.k();
                ActionMenuView actionMenuView = ((o1) actionBarOverlayLayout.f8796K).f26323a.f8893G;
                if (actionMenuView != null && (c3042n = actionMenuView.f8824c0) != null) {
                    c3042n.h();
                    C3032i c3032i = c3042n.f26314Z;
                    if (c3032i != null && c3032i.b()) {
                        c3032i.f25898j.dismiss();
                    }
                }
            }
            if (k8.f24954c0 != null) {
                k8.f24943R.getDecorView().removeCallbacks(k8.f24955d0);
                if (k8.f24954c0.isShowing()) {
                    try {
                        k8.f24954c0.dismiss();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                k8.f24954c0 = null;
            }
            U u7 = k8.f24956e0;
            if (u7 != null) {
                u7.b();
            }
            o oVar = k8.z(0).f24915h;
            if (oVar != null) {
                oVar.c(true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0062  */
    /* JADX WARN: Code duplicated, block: B:37:0x008a  */
    /* JADX WARN: Code duplicated, block: B:38:0x009d  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00de  */
    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        int iMakeMeasureSpec;
        boolean z7;
        int iMakeMeasureSpec2;
        int i10;
        int i11;
        float fraction;
        int i12;
        int i13;
        float fraction2;
        int i14;
        int i15;
        float fraction3;
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        boolean z8 = true;
        boolean z9 = displayMetrics.widthPixels < displayMetrics.heightPixels;
        int mode = View.MeasureSpec.getMode(i8);
        int mode2 = View.MeasureSpec.getMode(i9);
        Rect rect = this.f8842M;
        if (mode != Integer.MIN_VALUE) {
            iMakeMeasureSpec = i8;
            z7 = false;
        } else {
            TypedValue typedValue = z9 ? this.f8839J : this.f8838I;
            if (typedValue == null || (i14 = typedValue.type) == 0) {
                iMakeMeasureSpec = i8;
                z7 = false;
            } else {
                if (i14 == 5) {
                    fraction3 = typedValue.getDimension(displayMetrics);
                } else {
                    if (i14 == 6) {
                        int i16 = displayMetrics.widthPixels;
                        fraction3 = typedValue.getFraction(i16, i16);
                    } else {
                        i15 = 0;
                    }
                    if (i15 > 0) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect.left + rect.right), View.MeasureSpec.getSize(i8)), 1073741824);
                        z7 = true;
                    } else {
                        iMakeMeasureSpec = i8;
                        z7 = false;
                    }
                }
                i15 = (int) fraction3;
                if (i15 > 0) {
                    iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(i15 - (rect.left + rect.right), View.MeasureSpec.getSize(i8)), 1073741824);
                    z7 = true;
                } else {
                    iMakeMeasureSpec = i8;
                    z7 = false;
                }
            }
        }
        if (mode2 != Integer.MIN_VALUE) {
            iMakeMeasureSpec2 = i9;
        } else {
            TypedValue typedValue2 = z9 ? this.f8840K : this.f8841L;
            if (typedValue2 == null || (i12 = typedValue2.type) == 0) {
                iMakeMeasureSpec2 = i9;
            } else {
                if (i12 == 5) {
                    fraction2 = typedValue2.getDimension(displayMetrics);
                } else {
                    if (i12 == 6) {
                        int i17 = displayMetrics.heightPixels;
                        fraction2 = typedValue2.getFraction(i17, i17);
                    } else {
                        i13 = 0;
                    }
                    if (i13 > 0) {
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i13 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i9)), 1073741824);
                    } else {
                        iMakeMeasureSpec2 = i9;
                    }
                }
                i13 = (int) fraction2;
                if (i13 > 0) {
                    iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(Math.min(i13 - (rect.top + rect.bottom), View.MeasureSpec.getSize(i9)), 1073741824);
                } else {
                    iMakeMeasureSpec2 = i9;
                }
            }
        }
        super.onMeasure(iMakeMeasureSpec, iMakeMeasureSpec2);
        int measuredWidth = getMeasuredWidth();
        int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        if (z7 || mode != Integer.MIN_VALUE) {
            z8 = false;
        } else {
            TypedValue typedValue3 = z9 ? this.f8837H : this.f8836G;
            if (typedValue3 == null || (i10 = typedValue3.type) == 0) {
                z8 = false;
            } else {
                if (i10 == 5) {
                    fraction = typedValue3.getDimension(displayMetrics);
                } else {
                    if (i10 == 6) {
                        int i18 = displayMetrics.widthPixels;
                        fraction = typedValue3.getFraction(i18, i18);
                    } else {
                        i11 = 0;
                    }
                    if (i11 > 0) {
                        i11 -= rect.left + rect.right;
                    }
                    if (measuredWidth < i11) {
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
                    } else {
                        z8 = false;
                    }
                }
                i11 = (int) fraction;
                if (i11 > 0) {
                    i11 -= rect.left + rect.right;
                }
                if (measuredWidth < i11) {
                    iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
                } else {
                    z8 = false;
                }
            }
        }
        if (z8) {
            super.onMeasure(iMakeMeasureSpec3, iMakeMeasureSpec2);
        }
    }

    public void setAttachListener(InterfaceC3045o0 interfaceC3045o0) {
        this.f8843N = interfaceC3045o0;
    }
}
