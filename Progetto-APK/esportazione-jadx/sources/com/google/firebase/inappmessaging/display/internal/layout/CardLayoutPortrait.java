package com.google.firebase.inappmessaging.display.internal.layout;

import A0.O;
import S3.e;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import p006a5.a;
import p190y4.k;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class CardLayoutPortrait extends a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public View f24217K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public View f24218L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public View f24219M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public View f24220N;

    public CardLayoutPortrait(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        int size = getVisibleChildren().size();
        int measuredHeight = 0;
        for (int i12 = 0; i12 < size; i12++) {
            View view = getVisibleChildren().get(i12);
            int measuredHeight2 = view.getMeasuredHeight();
            int measuredWidth = view.getMeasuredWidth();
            int i13 = measuredHeight2 + measuredHeight;
            k.S("Layout child " + i12);
            k.U("\t(top, bottom)", (float) measuredHeight, (float) i13);
            k.U("\t(left, right)", (float) 0, (float) measuredWidth);
            view.layout(0, measuredHeight, measuredWidth, i13);
            k.U(O.y("Child ", i12, " wants to be "), view.getMeasuredWidth(), view.getMeasuredHeight());
            measuredHeight += view.getMeasuredHeight();
        }
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        this.f24217K = c(R.id.image_view);
        this.f24218L = c(R.id.message_title);
        this.f24219M = c(R.id.body_scroll);
        this.f24220N = c(R.id.action_bar);
        int iB = b(i8);
        int iA = a(i9);
        int iRound = Math.round(((int) (0.8d * ((double) iA))) / 4) * 4;
        k.S("Measuring image");
        e.j(this.f24217K, iB, iA, 1073741824, Integer.MIN_VALUE);
        if (a.d(this.f24217K) > iRound) {
            k.S("Image exceeded maximum height, remeasuring image");
            e.j(this.f24217K, iB, iRound, Integer.MIN_VALUE, 1073741824);
        }
        int iE = a.e(this.f24217K);
        k.S("Measuring title");
        e.j(this.f24218L, iE, iA, 1073741824, Integer.MIN_VALUE);
        k.S("Measuring action bar");
        e.j(this.f24220N, iE, iA, 1073741824, Integer.MIN_VALUE);
        k.S("Measuring scroll view");
        e.j(this.f24219M, iE, ((iA - a.d(this.f24217K)) - a.d(this.f24218L)) - a.d(this.f24220N), 1073741824, Integer.MIN_VALUE);
        int size = getVisibleChildren().size();
        int iD = 0;
        for (int i10 = 0; i10 < size; i10++) {
            iD += a.d(getVisibleChildren().get(i10));
        }
        setMeasuredDimension(iE, iD);
    }
}
