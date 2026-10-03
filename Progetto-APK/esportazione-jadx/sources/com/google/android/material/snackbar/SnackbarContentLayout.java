package com.google.android.material.snackbar;

import N.N;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.WeakHashMap;
import p060h4.a;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public TextView f24152G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Button f24153H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f24154I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f24155J;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f25413f);
        this.f24154I = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1);
        this.f24155J = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final boolean a(int i8, int i9, int i10) {
        boolean z7;
        if (i8 != getOrientation()) {
            setOrientation(i8);
            z7 = true;
        } else {
            z7 = false;
        }
        if (this.f24152G.getPaddingTop() == i9 && this.f24152G.getPaddingBottom() == i10) {
            return z7;
        }
        TextView textView = this.f24152G;
        WeakHashMap weakHashMap = N.f4843a;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i9, textView.getPaddingEnd(), i10);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i9, textView.getPaddingRight(), i10);
        return true;
    }

    public Button getActionView() {
        return this.f24153H;
    }

    public TextView getMessageView() {
        return this.f24152G;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f24152G = (TextView) findViewById(R.id.snackbar_text);
        this.f24153H = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        int i10;
        super.onMeasure(i8, i9);
        int i11 = this.f24154I;
        if (i11 > 0 && getMeasuredWidth() > i11) {
            i8 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
            super.onMeasure(i8, i9);
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z7 = this.f24152G.getLayout().getLineCount() > 1;
        if (!z7 || (i10 = this.f24155J) <= 0 || this.f24153H.getMeasuredWidth() <= i10) {
            if (!z7) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i8, i9);
    }
}
