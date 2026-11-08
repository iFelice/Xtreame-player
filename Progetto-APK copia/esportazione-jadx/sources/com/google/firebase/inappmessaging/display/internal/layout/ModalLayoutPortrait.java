package com.google.firebase.inappmessaging.display.internal.layout;

import S3.e;
import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import p006a5.a;
import p014b5.b;
import p156u.f;
import p190y4.k;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ModalLayoutPortrait extends a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final p014b5.a f24232K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f24233L;

    public ModalLayoutPortrait(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24232K = new p014b5.a();
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int i12;
        int i13;
        super.onLayout(z7, i8, i9, i10, i11);
        int paddingTop = getPaddingTop();
        int paddingLeft = getPaddingLeft();
        int size = getVisibleChildren().size();
        for (int i14 = 0; i14 < size; i14++) {
            View view = getVisibleChildren().get(i14);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight = view.getMeasuredHeight();
            int measuredWidth = view.getMeasuredWidth();
            int i15 = measuredHeight + paddingTop;
            if ((layoutParams.gravity & 1) == 1) {
                int i16 = (i10 - i8) / 2;
                int i17 = measuredWidth / 2;
                i13 = i16 - i17;
                i12 = i16 + i17;
            } else {
                i12 = paddingLeft + measuredWidth;
                i13 = paddingLeft;
            }
            k.S("Layout child " + i14);
            k.U("\t(top, bottom)", (float) paddingTop, (float) i15);
            k.U("\t(left, right)", (float) i13, (float) i12);
            view.layout(i13, paddingTop, i12, i15);
            int measuredHeight2 = view.getMeasuredHeight() + paddingTop;
            if (i14 < size - 1) {
                measuredHeight2 += this.f24233L;
            }
            paddingTop = measuredHeight2;
        }
    }

    @Override // p006a5.a, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        float f8;
        super.onMeasure(i8, i9);
        this.f24233L = (int) Math.floor(TypedValue.applyDimension(1, 24, this.f8701I));
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int iB = b(i8);
        int iA = a(i9);
        int size = ((getVisibleChildren().size() - 1) * this.f24233L) + paddingTop;
        p014b5.a aVar = this.f24232K;
        aVar.f9869c = iB;
        aVar.f9870d = iA;
        aVar.f9868b = new ArrayList();
        int iA2 = 0;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            boolean z7 = childAt.getId() == R.id.body_scroll || childAt.getId() == R.id.image_view;
            b bVar = new b();
            bVar.f9871a = childAt;
            bVar.f9872b = z7;
            bVar.f9873c = aVar.f9870d;
            aVar.f9868b.add(bVar);
        }
        k.S("Screen dimens: " + getDisplayMetrics());
        k.U("Max pct", getMaxWidthPct(), getMaxHeightPct());
        float f9 = (float) iB;
        k.U("Base dimens", f9, iA);
        for (b bVar2 : aVar.f9868b) {
            k.S("Pre-measure child");
            e.k(bVar2.f9871a, iB, iA);
        }
        Iterator it = aVar.f9868b.iterator();
        int iA3 = 0;
        while (it.hasNext()) {
            iA3 += ((b) it.next()).a();
        }
        int i11 = iA3 + size;
        k.T("Total reserved height", size);
        k.T("Total desired height", i11);
        boolean z8 = i11 > iA;
        k.S("Total height constrained: " + z8);
        if (z8) {
            int i12 = iA - size;
            int iA4 = 0;
            for (b bVar3 : aVar.f9868b) {
                if (!bVar3.f9872b) {
                    iA4 += bVar3.a();
                }
            }
            int i13 = i12 - iA4;
            ArrayList<b> arrayList = new ArrayList();
            for (b bVar4 : aVar.f9868b) {
                if (bVar4.f9872b) {
                    arrayList.add(bVar4);
                }
            }
            Collections.sort(arrayList, new f(aVar, 1));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                iA2 += ((b) it2.next()).a();
            }
            int size2 = arrayList.size();
            if (size2 >= 6) {
                throw new IllegalStateException("VerticalViewGroupMeasure only supports up to 5 children");
            }
            float f10 = 1.0f - ((size2 - 1) * 0.2f);
            k.U("VVGM (minFrac, maxFrac)", 0.2f, f10);
            float f11 = 0.0f;
            for (b bVar5 : arrayList) {
                float fA = bVar5.a() / iA2;
                if (fA > f10) {
                    f11 += fA - f10;
                    f8 = f10;
                } else {
                    f8 = fA;
                }
                if (fA < 0.2f) {
                    float fMin = Math.min(0.2f - fA, f11);
                    f11 -= fMin;
                    f8 = fA + fMin;
                }
                k.U("\t(desired, granted)", fA, f8);
                bVar5.f9873c = (int) (f8 * i13);
            }
        }
        int i14 = iB - paddingLeft;
        for (b bVar6 : aVar.f9868b) {
            k.S("Measuring child");
            e.k(bVar6.f9871a, i14, bVar6.f9873c);
            size += a.d(bVar6.f9871a);
        }
        k.U("Measured dims", f9, size);
        setMeasuredDimension(iB, size);
    }
}
