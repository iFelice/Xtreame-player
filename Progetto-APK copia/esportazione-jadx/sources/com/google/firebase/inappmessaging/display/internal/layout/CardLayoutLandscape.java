package com.google.firebase.inappmessaging.display.internal.layout;

import S3.e;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import p006a5.a;
import p190y4.k;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class CardLayoutLandscape extends a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public View f24213K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public View f24214L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public View f24215M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public View f24216N;

    public CardLayoutLandscape(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        k.S("Layout image");
        int iE = a.e(this.f24213K);
        a.f(this.f24213K, 0, 0, iE, a.d(this.f24213K));
        k.S("Layout title");
        int iD = a.d(this.f24214L);
        a.f(this.f24214L, iE, 0, measuredWidth, iD);
        k.S("Layout scroll");
        a.f(this.f24215M, iE, iD, measuredWidth, a.d(this.f24215M) + iD);
        k.S("Layout action bar");
        a.f(this.f24216N, iE, measuredHeight - a.d(this.f24216N), measuredWidth, measuredHeight);
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        this.f24213K = c(R.id.image_view);
        this.f24214L = c(R.id.message_title);
        this.f24215M = c(R.id.body_scroll);
        View viewC = c(R.id.action_bar);
        this.f24216N = viewC;
        int iMax = 0;
        List listAsList = Arrays.asList(this.f24214L, this.f24215M, viewC);
        int iB = b(i8);
        int iA = a(i9);
        int iRound = Math.round(((int) (0.6d * ((double) iB))) / 4) * 4;
        k.S("Measuring image");
        e.j(this.f24213K, iB, iA, Integer.MIN_VALUE, 1073741824);
        if (a.e(this.f24213K) > iRound) {
            k.S("Image exceeded maximum width, remeasuring image");
            e.j(this.f24213K, iRound, iA, 1073741824, Integer.MIN_VALUE);
        }
        int iD = a.d(this.f24213K);
        int iE = a.e(this.f24213K);
        int i10 = iB - iE;
        float f8 = iE;
        k.U("Max col widths (l, r)", f8, i10);
        k.S("Measuring title");
        e.k(this.f24214L, i10, iD);
        k.S("Measuring action bar");
        e.k(this.f24216N, i10, iD);
        k.S("Measuring scroll view");
        e.j(this.f24215M, i10, (iD - a.d(this.f24214L)) - a.d(this.f24216N), Integer.MIN_VALUE, 1073741824);
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            iMax = Math.max(a.e((View) it.next()), iMax);
        }
        k.U("Measured columns (l, r)", f8, iMax);
        int i11 = iE + iMax;
        k.U("Measured dims", i11, iD);
        setMeasuredDimension(i11, iD);
    }
}
