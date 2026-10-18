package androidx.leanback.widget;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* JADX INFO: loaded from: classes.dex */
public final class U extends ReplacementSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ V f9270c;

    public U(SearchEditText searchEditText, int i8, int i9) {
        this.f9270c = searchEditText;
        this.f9268a = i8;
        this.f9269b = i9;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i8, int i9, float f8, int i10, int i11, int i12, Paint paint) {
        int iMeasureText = (int) paint.measureText(charSequence, i8, i9);
        V v5 = this.f9270c;
        int width = v5.f9274H.getWidth();
        int i13 = width * 2;
        int i14 = iMeasureText / i13;
        int i15 = (iMeasureText % i13) / 2;
        boolean z7 = 1 == v5.getLayoutDirection();
        v5.f9273G.setSeed(this.f9268a);
        int alpha = paint.getAlpha();
        for (int i16 = 0; i16 < i14 && this.f9269b + i16 < v5.f9276J; i16++) {
            float f9 = (width / 2) + (i16 * i13) + i15;
            float f10 = z7 ? ((f8 + iMeasureText) - f9) - width : f8 + f9;
            paint.setAlpha((v5.f9273G.nextInt(4) + 1) * 63);
            if (v5.f9273G.nextBoolean()) {
                Bitmap bitmap = v5.f9275I;
                canvas.drawBitmap(bitmap, f10, i11 - bitmap.getHeight(), paint);
            } else {
                Bitmap bitmap2 = v5.f9274H;
                canvas.drawBitmap(bitmap2, f10, i11 - bitmap2.getHeight(), paint);
            }
        }
        paint.setAlpha(alpha);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i8, int i9, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i8, i9);
    }
}
