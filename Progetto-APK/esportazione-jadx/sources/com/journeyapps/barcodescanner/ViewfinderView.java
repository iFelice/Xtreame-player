package com.journeyapps.barcodescanner;

import O5.e;
import O5.g;
import O5.t;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import p130q5.o;
import p161u5.h;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes2.dex */
public class ViewfinderView extends View {

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public static final int[] f24568R = {0, 64, 128, 192, 255, 192, 128, 64};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Paint f24569G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f24570H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f24571I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f24572J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f24573K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f24574L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public List f24575M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public List f24576N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public g f24577O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Rect f24578P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public t f24579Q;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24569G = new Paint(1);
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.f30525b);
        this.f24570H = typedArrayObtainStyledAttributes.getColor(4, resources.getColor(R.color.zxing_viewfinder_mask));
        typedArrayObtainStyledAttributes.getColor(1, resources.getColor(R.color.zxing_result_view));
        this.f24571I = typedArrayObtainStyledAttributes.getColor(2, resources.getColor(R.color.zxing_viewfinder_laser));
        this.f24572J = typedArrayObtainStyledAttributes.getColor(0, resources.getColor(R.color.zxing_possible_result_points));
        this.f24573K = typedArrayObtainStyledAttributes.getBoolean(3, true);
        typedArrayObtainStyledAttributes.recycle();
        this.f24574L = 0;
        this.f24575M = new ArrayList(20);
        this.f24576N = new ArrayList(20);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        t tVar;
        g gVar = this.f24577O;
        if (gVar != null) {
            Rect framingRect = gVar.getFramingRect();
            t previewSize = this.f24577O.getPreviewSize();
            if (framingRect != null && previewSize != null) {
                this.f24578P = framingRect;
                this.f24579Q = previewSize;
            }
        }
        Rect rect = this.f24578P;
        if (rect == null || (tVar = this.f24579Q) == null) {
            return;
        }
        int width = getWidth();
        int height = getHeight();
        Paint paint = this.f24569G;
        paint.setColor(this.f24570H);
        float f8 = width;
        canvas.drawRect(0.0f, 0.0f, f8, rect.top, paint);
        canvas.drawRect(0.0f, rect.top, rect.left, rect.bottom + 1, paint);
        canvas.drawRect(rect.right + 1, rect.top, f8, rect.bottom + 1, paint);
        canvas.drawRect(0.0f, rect.bottom + 1, f8, height, paint);
        if (this.f24573K) {
            paint.setColor(this.f24571I);
            paint.setAlpha(f24568R[this.f24574L]);
            this.f24574L = (this.f24574L + 1) % 8;
            int iHeight = (rect.height() / 2) + rect.top;
            canvas.drawRect(rect.left + 2, iHeight - 1, rect.right - 1, iHeight + 2, paint);
        }
        float width2 = getWidth() / tVar.f5638G;
        float height2 = getHeight() / tVar.f5639H;
        boolean zIsEmpty = this.f24576N.isEmpty();
        int i8 = this.f24572J;
        if (!zIsEmpty) {
            paint.setAlpha(80);
            paint.setColor(i8);
            for (o oVar : this.f24576N) {
                canvas.drawCircle((int) (oVar.f29645a * width2), (int) (oVar.f29646b * height2), 3.0f, paint);
            }
            this.f24576N.clear();
        }
        if (!this.f24575M.isEmpty()) {
            paint.setAlpha(160);
            paint.setColor(i8);
            for (o oVar2 : this.f24575M) {
                canvas.drawCircle((int) (oVar2.f29645a * width2), (int) (oVar2.f29646b * height2), 6.0f, paint);
            }
            List list = this.f24575M;
            List list2 = this.f24576N;
            this.f24575M = list2;
            this.f24576N = list;
            list2.clear();
        }
        postInvalidateDelayed(80L, rect.left - 6, rect.top - 6, rect.right + 6, rect.bottom + 6);
    }

    public void setCameraPreview(g gVar) {
        this.f24577O = gVar;
        gVar.f5587P.add(new e(this, 2));
    }

    public void setLaserVisibility(boolean z7) {
        this.f24573K = z7;
    }

    public void setMaskColor(int i8) {
        this.f24570H = i8;
    }
}
