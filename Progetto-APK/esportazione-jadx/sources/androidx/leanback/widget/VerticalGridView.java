package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class VerticalGridView extends AbstractC0480f {
    public VerticalGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9291r1.w1(1);
        q0(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9815i);
        setColumnWidth(typedArrayObtainStyledAttributes);
        setNumColumns(typedArrayObtainStyledAttributes.getInt(1, 1));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setColumnWidth(TypedArray typedArray) {
        if (typedArray.peekValue(0) != null) {
            setColumnWidth(typedArray.getLayoutDimension(0, 0));
        }
    }

    public void setNumColumns(int i8) {
        C0491q c0491q = this.f9291r1;
        if (i8 < 0) {
            c0491q.getClass();
            throw new IllegalArgumentException();
        }
        c0491q.f9357T = i8;
        requestLayout();
    }

    public void setColumnWidth(int i8) {
        this.f9291r1.x1(i8);
        requestLayout();
    }
}
