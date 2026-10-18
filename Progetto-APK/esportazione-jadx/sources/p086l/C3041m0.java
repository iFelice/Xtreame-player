package p086l;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: l.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3041m0 {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final RectF f26281l = new RectF();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final ConcurrentHashMap f26282m = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f26283a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f26284b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f26285c = -1.0f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float f26286d = -1.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f26287e = -1.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f26288f = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f26289g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public TextPaint f26290h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextView f26291i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f26292j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C3039l0 f26293k;

    public C3041m0(TextView textView) {
        this.f26291i = textView;
        this.f26292j = textView.getContext();
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 29) {
            this.f26293k = new C3037k0();
        } else if (i8 >= 23) {
            this.f26293k = new C3035j0();
        } else {
            this.f26293k = new C3039l0();
        }
    }

    public static int[] b(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i8 : iArr) {
            if (i8 > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i8)) < 0) {
                arrayList.add(Integer.valueOf(i8));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i9 = 0; i9 < size; i9++) {
            iArr2[i9] = ((Integer) arrayList.get(i9)).intValue();
        }
        return iArr2;
    }

    public static Method d(String str) {
        try {
            ConcurrentHashMap concurrentHashMap = f26282m;
            Method declaredMethod = (Method) concurrentHashMap.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                declaredMethod.setAccessible(true);
                concurrentHashMap.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception e8) {
            Log.w("ACTVAutoSizeHelper", "Failed to retrieve TextView#" + str + "() method", e8);
            return null;
        }
    }

    public static Object e(Object obj, Object obj2, String str) {
        try {
            return d(str).invoke(obj, new Object[0]);
        } catch (Exception e8) {
            Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#" + str + "() method", e8);
            return obj2;
        }
    }

    public final void a() {
        if (f()) {
            if (this.f26284b) {
                if (this.f26291i.getMeasuredHeight() <= 0 || this.f26291i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f26293k.b(this.f26291i) ? 1048576 : (this.f26291i.getMeasuredWidth() - this.f26291i.getTotalPaddingLeft()) - this.f26291i.getTotalPaddingRight();
                int height = (this.f26291i.getHeight() - this.f26291i.getCompoundPaddingBottom()) - this.f26291i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                RectF rectF = f26281l;
                synchronized (rectF) {
                    try {
                        rectF.setEmpty();
                        rectF.right = measuredWidth;
                        rectF.bottom = height;
                        float fC = c(rectF);
                        if (fC != this.f26291i.getTextSize()) {
                            g(0, fC);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            this.f26284b = true;
        }
    }

    public final int c(RectF rectF) {
        StaticLayout staticLayout;
        CharSequence transformation;
        int length = this.f26288f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i8 = length - 1;
        int i9 = 1;
        int i10 = 0;
        while (i9 <= i8) {
            int i11 = (i9 + i8) / 2;
            int i12 = this.f26288f[i11];
            TextView textView = this.f26291i;
            CharSequence text = textView.getText();
            TransformationMethod transformationMethod = textView.getTransformationMethod();
            if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, textView)) != null) {
                text = transformation;
            }
            int maxLines = textView.getMaxLines();
            TextPaint textPaint = this.f26290h;
            if (textPaint == null) {
                this.f26290h = new TextPaint();
            } else {
                textPaint.reset();
            }
            this.f26290h.set(textView.getPaint());
            this.f26290h.setTextSize(i12);
            Layout.Alignment alignment = (Layout.Alignment) e(textView, Layout.Alignment.ALIGN_NORMAL, "getLayoutAlignment");
            int iRound = Math.round(rectF.right);
            if (Build.VERSION.SDK_INT >= 23) {
                staticLayout = AbstractC3033i0.a(text, alignment, iRound, maxLines, this.f26291i, this.f26290h, this.f26293k);
            } else {
                staticLayout = new StaticLayout(text, this.f26290h, iRound, alignment, textView.getLineSpacingMultiplier(), textView.getLineSpacingExtra(), textView.getIncludeFontPadding());
            }
            if ((maxLines == -1 || (staticLayout.getLineCount() <= maxLines && staticLayout.getLineEnd(staticLayout.getLineCount() - 1) == text.length())) && staticLayout.getHeight() <= rectF.bottom) {
                int i13 = i11 + 1;
                i10 = i9;
                i9 = i13;
            } else {
                i10 = i11 - 1;
                i8 = i10;
            }
        }
        return this.f26288f[i10];
    }

    public final boolean f() {
        return j() && this.f26283a != 0;
    }

    public final void g(int i8, float f8) {
        Context context = this.f26292j;
        float fApplyDimension = TypedValue.applyDimension(i8, f8, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics());
        TextView textView = this.f26291i;
        if (fApplyDimension != textView.getPaint().getTextSize()) {
            textView.getPaint().setTextSize(fApplyDimension);
            boolean zIsInLayout = textView.isInLayout();
            if (textView.getLayout() != null) {
                this.f26284b = false;
                try {
                    Method methodD = d("nullLayouts");
                    if (methodD != null) {
                        methodD.invoke(textView, new Object[0]);
                    }
                } catch (Exception e8) {
                    Log.w("ACTVAutoSizeHelper", "Failed to invoke TextView#nullLayouts() method", e8);
                }
                if (zIsInLayout) {
                    textView.forceLayout();
                } else {
                    textView.requestLayout();
                }
                textView.invalidate();
            }
        }
    }

    public final boolean h() {
        if (j() && this.f26283a == 1) {
            if (!this.f26289g || this.f26288f.length == 0) {
                int iFloor = ((int) Math.floor((this.f26287e - this.f26286d) / this.f26285c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i8 = 0; i8 < iFloor; i8++) {
                    iArr[i8] = Math.round((i8 * this.f26285c) + this.f26286d);
                }
                this.f26288f = b(iArr);
            }
            this.f26284b = true;
        } else {
            this.f26284b = false;
        }
        return this.f26284b;
    }

    public final boolean i() {
        int[] iArr = this.f26288f;
        int length = iArr.length;
        boolean z7 = length > 0;
        this.f26289g = z7;
        if (z7) {
            this.f26283a = 1;
            this.f26286d = iArr[0];
            this.f26287e = iArr[length - 1];
            this.f26285c = -1.0f;
        }
        return z7;
    }

    public final boolean j() {
        return !(this.f26291i instanceof A);
    }

    public final void k(float f8, float f9, float f10) {
        if (f8 <= 0.0f) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f8 + "px) is less or equal to (0px)");
        }
        if (f9 <= f8) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f9 + "px) is less or equal to minimum auto-size text size (" + f8 + "px)");
        }
        if (f10 <= 0.0f) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f10 + "px) is less or equal to (0px)");
        }
        this.f26283a = 1;
        this.f26286d = f8;
        this.f26287e = f9;
        this.f26285c = f10;
        this.f26289g = false;
    }
}
