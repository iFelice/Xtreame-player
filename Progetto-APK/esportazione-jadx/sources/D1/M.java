package D1;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;

/* JADX INFO: loaded from: classes.dex */
public final class M {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f2078A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f2079B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f2080C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f2081D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public StaticLayout f2082E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public StaticLayout f2083F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f2084G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f2085H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f2086I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Rect f2087J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f2089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2092e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextPaint f2093f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Paint f2094g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f2095h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f2096i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Layout.Alignment f2097j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Bitmap f2098k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f2099l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2100m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2101n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f2102o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2103p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public float f2104q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f2105r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f2106s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f2107t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f2108u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f2109v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f2110w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public float f2111x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public float f2112y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f2113z;

    public M(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{R.attr.lineSpacingExtra, R.attr.lineSpacingMultiplier}, 0, 0);
        this.f2092e = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f2091d = typedArrayObtainStyledAttributes.getFloat(1, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        float fRound = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f2088a = fRound;
        this.f2089b = fRound;
        this.f2090c = fRound;
        TextPaint textPaint = new TextPaint();
        this.f2093f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f2094g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f2095h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    public final void a(Canvas canvas, boolean z7) {
        if (!z7) {
            this.f2087J.getClass();
            this.f2098k.getClass();
            canvas.drawBitmap(this.f2098k, (Rect) null, this.f2087J, this.f2095h);
            return;
        }
        StaticLayout staticLayout = this.f2082E;
        StaticLayout staticLayout2 = this.f2083F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(this.f2084G, this.f2085H);
        if (Color.alpha(this.f2108u) > 0) {
            Paint paint = this.f2094g;
            paint.setColor(this.f2108u);
            canvas.drawRect(-this.f2086I, 0.0f, staticLayout.getWidth() + this.f2086I, staticLayout.getHeight(), paint);
        }
        int i8 = this.f2110w;
        TextPaint textPaint = this.f2093f;
        if (i8 == 1) {
            textPaint.setStrokeJoin(Paint.Join.ROUND);
            textPaint.setStrokeWidth(this.f2088a);
            textPaint.setColor(this.f2109v);
            textPaint.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else {
            float f8 = this.f2089b;
            if (i8 == 2) {
                float f9 = this.f2090c;
                textPaint.setShadowLayer(f8, f9, f9, this.f2109v);
            } else if (i8 == 3 || i8 == 4) {
                boolean z8 = i8 == 3;
                int i9 = z8 ? -1 : this.f2109v;
                int i10 = z8 ? this.f2109v : -1;
                float f10 = f8 / 2.0f;
                textPaint.setColor(this.f2106s);
                textPaint.setStyle(Paint.Style.FILL);
                float f11 = -f10;
                textPaint.setShadowLayer(f8, f11, f11, i9);
                staticLayout2.draw(canvas);
                textPaint.setShadowLayer(f8, f10, f10, i10);
            }
        }
        textPaint.setColor(this.f2106s);
        textPaint.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        textPaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
    }
}
