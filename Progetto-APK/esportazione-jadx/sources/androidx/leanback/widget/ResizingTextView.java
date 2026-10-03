package androidx.leanback.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
class ResizingTextView extends TextView {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f9174G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f9175H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f9176I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f9177J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f9178K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f9179L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f9180M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public float f9181N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f9182O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f9183P;

    public ResizingTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.textViewStyle);
        this.f9179L = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9812f, R.attr.textViewStyle, 0);
        try {
            this.f9174G = typedArrayObtainStyledAttributes.getInt(1, 1);
            this.f9175H = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, -1);
            this.f9176I = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.f9177J = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0);
            this.f9178K = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void a(int i8, int i9) {
        if (isPaddingRelative()) {
            setPaddingRelative(getPaddingStart(), i8, getPaddingEnd(), i9);
        } else {
            setPadding(getPaddingLeft(), i8, getPaddingRight(), i9);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0053  */
    /* JADX WARN: Code duplicated, block: B:38:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cf A[DONT_INVERT, PHI: r1
      0x00cf: PHI (r1v4 boolean) = (r1v2 boolean), (r1v6 boolean) binds: [B:42:0x00cc, B:28:0x0098] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i8, int i9) {
        boolean z7;
        int i10;
        boolean z8 = true;
        if (!this.f9179L) {
            this.f9180M = (int) getTextSize();
            this.f9181N = getLineSpacingExtra();
            this.f9182O = getPaddingTop();
            this.f9183P = getPaddingBottom();
            this.f9179L = true;
        }
        boolean z9 = false;
        setTextSize(0, this.f9180M);
        setLineSpacing(this.f9181N, getLineSpacingMultiplier());
        a(this.f9182O, this.f9183P);
        super.onMeasure(i8, i9);
        Layout layout = getLayout();
        if (layout == null || (this.f9174G & 1) <= 0) {
            z7 = false;
        } else {
            int lineCount = layout.getLineCount();
            int maxLines = getMaxLines();
            if (maxLines <= 1 || lineCount != maxLines) {
                z7 = false;
            } else {
                z7 = true;
            }
        }
        int textSize = (int) getTextSize();
        boolean z10 = this.f9176I;
        int i11 = this.f9175H;
        if (z7) {
            if (i11 != -1 && textSize != i11) {
                setTextSize(0, i11);
                z9 = true;
            }
            float f8 = (this.f9181N + this.f9180M) - i11;
            if (!z10 || getLineSpacingExtra() == f8) {
                z8 = z9;
            } else {
                setLineSpacing(f8, getLineSpacingMultiplier());
            }
            int i12 = this.f9182O + this.f9177J;
            int i13 = this.f9183P + this.f9178K;
            if (getPaddingTop() != i12 || getPaddingBottom() != i13) {
                a(i12, i13);
            } else if (!z8) {
                return;
            }
        } else {
            if (i11 != -1 && textSize != (i10 = this.f9180M)) {
                setTextSize(0, i10);
                z9 = true;
            }
            if (z10) {
                float lineSpacingExtra = getLineSpacingExtra();
                float f9 = this.f9181N;
                if (lineSpacingExtra != f9) {
                    setLineSpacing(f9, getLineSpacingMultiplier());
                } else {
                    z8 = z9;
                }
            } else {
                z8 = z9;
            }
            if (getPaddingTop() != this.f9182O || getPaddingBottom() != this.f9183P) {
                a(this.f9182O, this.f9183P);
            } else if (!z8) {
                return;
            }
        }
        super.onMeasure(i8, i9);
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(E3.f.E(callback, this));
    }
}
