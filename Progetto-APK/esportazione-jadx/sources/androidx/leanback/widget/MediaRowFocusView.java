package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
class MediaRowFocusView extends View {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Paint f9138G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final RectF f9139H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f9140I;

    public MediaRowFocusView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9139H = new RectF();
        Paint paint = new Paint();
        paint.setColor(context.getResources().getColor(R.color.lb_playback_media_row_highlight_color));
        this.f9138G = paint;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        this.f9140I = height;
        int height2 = ((height * 2) - getHeight()) / 2;
        RectF rectF = this.f9139H;
        rectF.set(0.0f, -height2, getWidth(), getHeight() + height2);
        int i8 = this.f9140I;
        canvas.drawRoundRect(rectF, i8, i8, this.f9138G);
    }
}
