package p086l;

import H.c;
import H.d;
import android.R;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ProgressBar;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class I {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f26112c = {R.attr.indeterminateDrawable, R.attr.progressDrawable};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProgressBar f26113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Bitmap f26114b;

    public I(ProgressBar progressBar) {
        this.f26113a = progressBar;
    }

    public void a(AttributeSet attributeSet, int i8) {
        ProgressBar progressBar = this.f26113a;
        u uVarJ = u.J(progressBar.getContext(), attributeSet, f26112c, i8, 0);
        Drawable drawableT = uVarJ.t(0);
        if (drawableT != null) {
            if (drawableT instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) drawableT;
                int numberOfFrames = animationDrawable.getNumberOfFrames();
                AnimationDrawable animationDrawable2 = new AnimationDrawable();
                animationDrawable2.setOneShot(animationDrawable.isOneShot());
                for (int i9 = 0; i9 < numberOfFrames; i9++) {
                    Drawable drawableB = b(animationDrawable.getFrame(i9), true);
                    drawableB.setLevel(10000);
                    animationDrawable2.addFrame(drawableB, animationDrawable.getDuration(i9));
                }
                animationDrawable2.setLevel(10000);
                drawableT = animationDrawable2;
            }
            progressBar.setIndeterminateDrawable(drawableT);
        }
        Drawable drawableT2 = uVarJ.t(1);
        if (drawableT2 != null) {
            progressBar.setProgressDrawable(b(drawableT2, false));
        }
        uVarJ.P();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Drawable b(Drawable drawable, boolean z7) {
        if (drawable instanceof c) {
            d dVar = (d) ((c) drawable);
            Drawable drawable2 = dVar.f3420L;
            if (drawable2 != null) {
                dVar.c(b(drawable2, z7));
            }
        } else {
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                Drawable[] drawableArr = new Drawable[numberOfLayers];
                for (int i8 = 0; i8 < numberOfLayers; i8++) {
                    int id = layerDrawable.getId(i8);
                    drawableArr[i8] = b(layerDrawable.getDrawable(i8), id == 16908301 || id == 16908303);
                }
                LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
                for (int i9 = 0; i9 < numberOfLayers; i9++) {
                    layerDrawable2.setId(i9, layerDrawable.getId(i9));
                    if (Build.VERSION.SDK_INT >= 23) {
                        H.x(layerDrawable, layerDrawable2, i9);
                    }
                }
                return layerDrawable2;
            }
            if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
                Bitmap bitmap = bitmapDrawable.getBitmap();
                if (this.f26114b == null) {
                    this.f26114b = bitmap;
                }
                ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
                shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
                shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
                return z7 ? new ClipDrawable(shapeDrawable, 3, 1) : shapeDrawable;
            }
        }
        return drawable;
    }
}
