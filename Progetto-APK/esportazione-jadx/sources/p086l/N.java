package p086l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import p031e.a;
import p096m2.u;
import p102n0.c;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class N extends I {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SeekBar f26155d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f26156e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ColorStateList f26157f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f26158g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f26159h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f26160i;

    public N(SeekBar seekBar) {
        super(seekBar);
        this.f26157f = null;
        this.f26158g = null;
        this.f26159h = false;
        this.f26160i = false;
        this.f26155d = seekBar;
    }

    @Override // p086l.I
    public final void a(AttributeSet attributeSet, int i8) {
        super.a(attributeSet, R.attr.seekBarStyle);
        SeekBar seekBar = this.f26155d;
        Context context = seekBar.getContext();
        int[] iArr = a.f24692g;
        u uVarJ = u.J(context, attributeSet, iArr, R.attr.seekBarStyle, 0);
        N.N.l(seekBar, seekBar.getContext(), iArr, attributeSet, (TypedArray) uVarJ.f27279I, R.attr.seekBarStyle);
        Drawable drawableT = uVarJ.t(0);
        if (drawableT != null) {
            seekBar.setThumb(drawableT);
        }
        Drawable drawableS = uVarJ.s(1);
        Drawable drawable = this.f26156e;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f26156e = drawableS;
        if (drawableS != null) {
            drawableS.setCallback(seekBar);
            c.l(drawableS, seekBar.getLayoutDirection());
            if (drawableS.isStateful()) {
                drawableS.setState(seekBar.getDrawableState());
            }
            c();
        }
        seekBar.invalidate();
        if (uVarJ.F(3)) {
            this.f26158g = AbstractC3054t0.c(uVarJ.x(3, -1), this.f26158g);
            this.f26160i = true;
        }
        if (uVarJ.F(2)) {
            this.f26157f = uVarJ.o(2);
            this.f26159h = true;
        }
        uVarJ.P();
        c();
    }

    public final void c() {
        Drawable drawable = this.f26156e;
        if (drawable != null) {
            if (this.f26159h || this.f26160i) {
                Drawable drawableQ = c.q(drawable.mutate());
                this.f26156e = drawableQ;
                if (this.f26159h) {
                    drawableQ.setTintList(this.f26157f);
                }
                if (this.f26160i) {
                    this.f26156e.setTintMode(this.f26158g);
                }
                if (this.f26156e.isStateful()) {
                    this.f26156e.setState(this.f26155d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        if (this.f26156e != null) {
            SeekBar seekBar = this.f26155d;
            int max = seekBar.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f26156e.getIntrinsicWidth();
                int intrinsicHeight = this.f26156e.getIntrinsicHeight();
                int i8 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i9 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f26156e.setBounds(-i8, -i9, i8, i9);
                float width = ((seekBar.getWidth() - seekBar.getPaddingLeft()) - seekBar.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(seekBar.getPaddingLeft(), seekBar.getHeight() / 2);
                for (int i10 = 0; i10 <= max; i10++) {
                    this.f26156e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
