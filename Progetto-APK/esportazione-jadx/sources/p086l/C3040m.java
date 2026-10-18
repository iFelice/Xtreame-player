package p086l;

import Z3.H;
import android.content.Context;
import android.graphics.drawable.Drawable;
import pe.hf.black20.R;

/* JADX INFO: renamed from: l.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3040m extends E implements InterfaceC3044o {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C3042n f26280J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3040m(C3042n c3042n, Context context) {
        super(context, null, R.attr.actionOverflowButtonStyle);
        this.f26280J = c3042n;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        H.v(this, getContentDescription());
        setOnTouchListener(new C3038l(this, this, c3042n, 0));
    }

    @Override // p086l.InterfaceC3044o
    public final boolean a() {
        return false;
    }

    @Override // p086l.InterfaceC3044o
    public final boolean b() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f26280J.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i8, int i9, int i10, int i11) {
        boolean frame = super.setFrame(i8, i9, i10, i11);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int iMax = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
        }
        return frame;
    }
}
