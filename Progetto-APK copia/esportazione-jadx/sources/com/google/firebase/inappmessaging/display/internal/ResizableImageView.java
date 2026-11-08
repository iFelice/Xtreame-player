package com.google.firebase.inappmessaging.display.internal;

import A0.O;
import N.r;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import p086l.E;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public class ResizableImageView extends E {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f24212J;

    public ResizableImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f24212J = (int) (context.getResources().getDisplayMetrics().density * 160.0f);
    }

    public final r c(int i8, int i9) {
        int maxWidth = getMaxWidth();
        int maxHeight = getMaxHeight();
        if (i8 > maxWidth) {
            k.T("Image: capping width", maxWidth);
            i9 = (i9 * maxWidth) / i8;
            i8 = maxWidth;
        }
        if (i9 > maxHeight) {
            k.T("Image: capping height", maxHeight);
            i8 = (i8 * maxHeight) / i9;
        } else {
            maxHeight = i9;
        }
        return new r(i8, maxHeight);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        Drawable drawable = getDrawable();
        boolean adjustViewBounds = getAdjustViewBounds();
        if (drawable == null || !adjustViewBounds) {
            return;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        k.U("Image: intrinsic width, height", intrinsicWidth, intrinsicHeight);
        r rVarC = c((int) Math.ceil((intrinsicWidth * this.f24212J) / 160), (int) Math.ceil((intrinsicHeight * this.f24212J) / 160));
        k.U("Image: new target dimensions", rVarC.f4919H, rVarC.f4920I);
        setMeasuredDimension(rVarC.f4919H, rVarC.f4920I);
        int iMax = Math.max(getMinimumWidth(), getSuggestedMinimumWidth());
        int iMax2 = Math.max(getMinimumHeight(), getSuggestedMinimumHeight());
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f8 = iMax;
        float f9 = iMax2;
        k.U("Image: min width, height", f8, f9);
        float f10 = measuredWidth;
        float f11 = measuredHeight;
        k.U("Image: actual width, height", f10, f11);
        float f12 = measuredWidth < iMax ? f8 / f10 : 1.0f;
        float f13 = measuredHeight < iMax2 ? f9 / f11 : 1.0f;
        if (f12 <= f13) {
            f12 = f13;
        }
        if (f12 > 1.0d) {
            int iCeil = (int) Math.ceil(f10 * f12);
            int iCeil2 = (int) Math.ceil(f11 * f12);
            StringBuilder sbD = O.D("Measured dimension (", measuredWidth, "x", measuredHeight, ") too small.  Resizing to ");
            sbD.append(iCeil);
            sbD.append("x");
            sbD.append(iCeil2);
            k.S(sbD.toString());
            r rVarC2 = c(iCeil, iCeil2);
            setMeasuredDimension(rVarC2.f4919H, rVarC2.f4920I);
        }
    }
}
