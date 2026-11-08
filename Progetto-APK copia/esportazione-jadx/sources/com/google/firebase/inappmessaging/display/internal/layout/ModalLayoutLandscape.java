package com.google.firebase.inappmessaging.display.internal.layout;

import S3.e;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p006a5.a;
import p190y4.k;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ModalLayoutLandscape extends a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public View f24224K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public View f24225L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public View f24226M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public View f24227N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f24228O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f24229P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f24230Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f24231R;

    public ModalLayoutLandscape(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        super.onLayout(z7, i8, i9, i10, i11);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int measuredWidth = getMeasuredWidth() - getPaddingRight();
        int i14 = this.f24230Q;
        int i15 = this.f24231R;
        if (i14 < i15) {
            i13 = (i15 - i14) / 2;
            i12 = 0;
        } else {
            i12 = (i14 - i15) / 2;
            i13 = 0;
        }
        k.S("Layout image");
        int i16 = i13 + paddingTop;
        int iE = a.e(this.f24224K) + paddingLeft;
        a.f(this.f24224K, paddingLeft, i16, iE, a.d(this.f24224K) + i16);
        int i17 = iE + this.f24228O;
        k.S("Layout getTitle");
        int i18 = paddingTop + i12;
        int iD = a.d(this.f24225L) + i18;
        a.f(this.f24225L, i17, i18, measuredWidth, iD);
        k.S("Layout getBody");
        int i19 = iD + (this.f24225L.getVisibility() == 8 ? 0 : this.f24229P);
        int iD2 = a.d(this.f24226M) + i19;
        a.f(this.f24226M, i17, i19, measuredWidth, iD2);
        k.S("Layout button");
        int i20 = iD2 + (this.f24226M.getVisibility() != 8 ? this.f24229P : 0);
        View view = this.f24227N;
        a.f(view, i17, i20, a.e(view) + i17, a.d(view) + i20);
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        DisplayMetrics displayMetrics = this.f8701I;
        super.onMeasure(i8, i9);
        this.f24224K = c(R.id.image_view);
        this.f24225L = c(R.id.message_title);
        this.f24226M = c(R.id.body_scroll);
        this.f24227N = c(R.id.button);
        int iMax = 0;
        this.f24228O = this.f24224K.getVisibility() == 8 ? 0 : (int) Math.floor(TypedValue.applyDimension(1, 24, displayMetrics));
        this.f24229P = (int) Math.floor(TypedValue.applyDimension(1, 24, displayMetrics));
        List listAsList = Arrays.asList(this.f24225L, this.f24226M, this.f24227N);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iB = b(i8);
        int iA = a(i9) - paddingTop;
        int i10 = iB - paddingRight;
        k.S("Measuring image");
        e.k(this.f24224K, (int) (i10 * 0.4f), iA);
        int iE = a.e(this.f24224K);
        int i11 = i10 - (this.f24228O + iE);
        float f8 = iE;
        k.U("Max col widths (l, r)", f8, i11);
        Iterator it = listAsList.iterator();
        int i12 = 0;
        while (it.hasNext()) {
            if (((View) it.next()).getVisibility() != 8) {
                i12++;
            }
        }
        int iMax2 = Math.max(0, (i12 - 1) * this.f24229P);
        int i13 = iA - iMax2;
        k.S("Measuring getTitle");
        e.k(this.f24225L, i11, i13);
        k.S("Measuring button");
        e.k(this.f24227N, i11, i13);
        k.S("Measuring scroll view");
        e.k(this.f24226M, i11, (i13 - a.d(this.f24225L)) - a.d(this.f24227N));
        this.f24230Q = a.d(this.f24224K);
        this.f24231R = iMax2;
        Iterator it2 = listAsList.iterator();
        while (it2.hasNext()) {
            this.f24231R = a.d((View) it2.next()) + this.f24231R;
        }
        int iMax3 = Math.max(this.f24230Q + paddingTop, this.f24231R + paddingTop);
        Iterator it3 = listAsList.iterator();
        while (it3.hasNext()) {
            iMax = Math.max(a.e((View) it3.next()), iMax);
        }
        k.U("Measured columns (l, r)", f8, iMax);
        int i14 = iE + iMax + this.f24228O + paddingRight;
        k.U("Measured dims", i14, iMax3);
        setMeasuredDimension(i14, iMax3);
    }
}
