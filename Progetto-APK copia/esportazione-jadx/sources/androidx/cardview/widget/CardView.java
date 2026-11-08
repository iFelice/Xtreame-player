package androidx.cardview.widget;

import U4.b;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.internal.atv_ads_framework.x0;
import p116p.a;

/* JADX INFO: loaded from: classes.dex */
public class CardView extends FrameLayout {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final int[] f8942L = {R.attr.colorBackground};

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final b f8943M = new b();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f8944G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f8945H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Rect f8946I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Rect f8947J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final x0 f8948K;

    public CardView(Context context, AttributeSet attributeSet) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, pe.hf.black20.R.attr.cardViewStyle);
        Rect rect = new Rect();
        this.f8946I = rect;
        this.f8947J = new Rect();
        x0 x0Var = new x0(this);
        this.f8948K = x0Var;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f28015a, pe.hf.black20.R.attr.cardViewStyle, pe.hf.black20.R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f8942L);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(pe.hf.black20.R.color.cardview_light_background) : getResources().getColor(pe.hf.black20.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
        this.f8944G = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.f8945H = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        b bVar = f8943M;
        p124q.a aVar = new p124q.a(colorStateListValueOf, dimension);
        x0Var.f22390H = aVar;
        ((CardView) x0Var.f22391I).setBackgroundDrawable(aVar);
        CardView cardView = (CardView) x0Var.f22391I;
        cardView.setClipToOutline(true);
        cardView.setElevation(dimension2);
        bVar.h0(x0Var, dimension3);
    }

    public ColorStateList getCardBackgroundColor() {
        return b.U(this.f8948K).f29433h;
    }

    public float getCardElevation() {
        return ((CardView) this.f8948K.f22391I).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.f8946I.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f8946I.left;
    }

    public int getContentPaddingRight() {
        return this.f8946I.right;
    }

    public int getContentPaddingTop() {
        return this.f8946I.top;
    }

    public float getMaxCardElevation() {
        return b.U(this.f8948K).f29430e;
    }

    public boolean getPreventCornerOverlap() {
        return this.f8945H;
    }

    public float getRadius() {
        return b.U(this.f8948K).f29426a;
    }

    public boolean getUseCompatPadding() {
        return this.f8944G;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
    }

    public void setCardBackgroundColor(int i8) {
        x0 x0Var = this.f8948K;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i8);
        p124q.a aVarU = b.U(x0Var);
        if (colorStateListValueOf == null) {
            aVarU.getClass();
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        aVarU.f29433h = colorStateListValueOf;
        aVarU.f29427b.setColor(colorStateListValueOf.getColorForState(aVarU.getState(), aVarU.f29433h.getDefaultColor()));
        aVarU.invalidateSelf();
    }

    public void setCardElevation(float f8) {
        ((CardView) this.f8948K.f22391I).setElevation(f8);
    }

    public void setMaxCardElevation(float f8) {
        f8943M.h0(this.f8948K, f8);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i8) {
        super.setMinimumHeight(i8);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i8) {
        super.setMinimumWidth(i8);
    }

    @Override // android.view.View
    public final void setPadding(int i8, int i9, int i10, int i11) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i8, int i9, int i10, int i11) {
    }

    public void setPreventCornerOverlap(boolean z7) {
        if (z7 != this.f8945H) {
            this.f8945H = z7;
            b bVar = f8943M;
            x0 x0Var = this.f8948K;
            bVar.h0(x0Var, b.U(x0Var).f29430e);
        }
    }

    public void setRadius(float f8) {
        p124q.a aVarU = b.U(this.f8948K);
        if (f8 == aVarU.f29426a) {
            return;
        }
        aVarU.f29426a = f8;
        aVarU.b(null);
        aVarU.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z7) {
        if (this.f8944G != z7) {
            this.f8944G = z7;
            b bVar = f8943M;
            x0 x0Var = this.f8948K;
            bVar.h0(x0Var, b.U(x0Var).f29430e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        p124q.a aVarU = b.U(this.f8948K);
        if (colorStateList == null) {
            aVarU.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        aVarU.f29433h = colorStateList;
        aVarU.f29427b.setColor(colorStateList.getColorForState(aVarU.getState(), aVarU.f29433h.getDefaultColor()));
        aVarU.invalidateSelf();
    }
}
