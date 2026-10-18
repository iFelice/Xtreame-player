package O1;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: renamed from: O1.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0312k extends I {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f5435d = {R.attr.listDivider};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable f5436a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f5438c = new Rect();

    public C0312k(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(f5435d);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f5436a = drawable;
        if (drawable == null) {
            Log.w("DividerItem", "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()");
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f5437b = 1;
    }

    @Override // O1.I
    public final void a(Rect rect, View view) {
        Drawable drawable = this.f5436a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f5437b == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // O1.I
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        Drawable drawable;
        int height;
        int paddingTop;
        int width;
        int paddingLeft;
        if (recyclerView.getLayoutManager() == null || (drawable = this.f5436a) == null) {
            return;
        }
        int i8 = this.f5437b;
        Rect rect = this.f5438c;
        int i9 = 0;
        if (i8 == 1) {
            canvas.save();
            if (recyclerView.getClipToPadding()) {
                paddingLeft = recyclerView.getPaddingLeft();
                width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
            } else {
                width = recyclerView.getWidth();
                paddingLeft = 0;
            }
            int childCount = recyclerView.getChildCount();
            while (i9 < childCount) {
                View childAt = recyclerView.getChildAt(i9);
                RecyclerView.M(rect, childAt);
                int iRound = Math.round(childAt.getTranslationY()) + rect.bottom;
                drawable.setBounds(paddingLeft, iRound - drawable.getIntrinsicHeight(), width, iRound);
                drawable.draw(canvas);
                i9++;
            }
            canvas.restore();
            return;
        }
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            paddingTop = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            paddingTop = 0;
        }
        int childCount2 = recyclerView.getChildCount();
        while (i9 < childCount2) {
            View childAt2 = recyclerView.getChildAt(i9);
            recyclerView.getLayoutManager().B(rect, childAt2);
            int iRound2 = Math.round(childAt2.getTranslationX()) + rect.right;
            drawable.setBounds(iRound2 - drawable.getIntrinsicWidth(), paddingTop, iRound2, height);
            drawable.draw(canvas);
            i9++;
        }
        canvas.restore();
    }
}
