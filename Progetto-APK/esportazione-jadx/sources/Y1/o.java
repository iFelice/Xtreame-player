package Y1;

import Z3.H;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.internal.measurement.H1;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class o extends f {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final PorterDuff.Mode f8124P = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public m f8125H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public PorterDuffColorFilter f8126I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ColorFilter f8127J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f8128K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f8129L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final float[] f8130M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Matrix f8131N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final Rect f8132O;

    public o() {
        this.f8129L = true;
        this.f8130M = new float[9];
        this.f8131N = new Matrix();
        this.f8132O = new Rect();
        m mVar = new m();
        mVar.f8113c = null;
        mVar.f8114d = f8124P;
        mVar.f8112b = new l();
        this.f8125H = mVar;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f8067G;
        if (drawable == null) {
            return false;
        }
        drawable.canApplyTheme();
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f8132O;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f8127J;
        if (colorFilter == null) {
            colorFilter = this.f8126I;
        }
        Matrix matrix = this.f8131N;
        canvas.getMatrix(matrix);
        float[] fArr = this.f8130M;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iHeight = (int) (rect.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && p102n0.c.g(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        m mVar = this.f8125H;
        Bitmap bitmap = mVar.f8116f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != mVar.f8116f.getHeight()) {
            mVar.f8116f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            mVar.f8121k = true;
        }
        if (this.f8129L) {
            m mVar2 = this.f8125H;
            if (mVar2.f8121k || mVar2.f8117g != mVar2.f8113c || mVar2.f8118h != mVar2.f8114d || mVar2.f8120j != mVar2.f8115e || mVar2.f8119i != mVar2.f8112b.getRootAlpha()) {
                m mVar3 = this.f8125H;
                mVar3.f8116f.eraseColor(0);
                Canvas canvas2 = new Canvas(mVar3.f8116f);
                l lVar = mVar3.f8112b;
                lVar.a(lVar.f8102g, l.f8095p, canvas2, iMin, iMin2);
                m mVar4 = this.f8125H;
                mVar4.f8117g = mVar4.f8113c;
                mVar4.f8118h = mVar4.f8114d;
                mVar4.f8119i = mVar4.f8112b.getRootAlpha();
                mVar4.f8120j = mVar4.f8115e;
                mVar4.f8121k = false;
            }
        } else {
            m mVar5 = this.f8125H;
            mVar5.f8116f.eraseColor(0);
            Canvas canvas3 = new Canvas(mVar5.f8116f);
            l lVar2 = mVar5.f8112b;
            lVar2.a(lVar2.f8102g, l.f8095p, canvas3, iMin, iMin2);
        }
        m mVar6 = this.f8125H;
        if (mVar6.f8112b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (mVar6.f8122l == null) {
                Paint paint2 = new Paint();
                mVar6.f8122l = paint2;
                paint2.setFilterBitmap(true);
            }
            mVar6.f8122l.setAlpha(mVar6.f8112b.getRootAlpha());
            mVar6.f8122l.setColorFilter(colorFilter);
            paint = mVar6.f8122l;
        }
        canvas.drawBitmap(mVar6.f8116f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getAlpha() : this.f8125H.f8112b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f8125H.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getColorFilter() : this.f8127J;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f8067G != null && Build.VERSION.SDK_INT >= 24) {
            return new n(this.f8067G.getConstantState());
        }
        this.f8125H.f8111a = getChangingConfigurations();
        return this.f8125H;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f8125H.f8112b.f8104i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f8125H.f8112b.f8103h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        l lVar;
        int i8;
        Paint.Cap cap;
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        m mVar = this.f8125H;
        mVar.f8112b = new l();
        TypedArray typedArrayN = H.n(resources, theme, attributeSet, a.f8047a);
        m mVar2 = this.f8125H;
        l lVar2 = mVar2.f8112b;
        int i9 = !H.j(xmlPullParser, "tintMode") ? -1 : typedArrayN.getInt(6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i10 = 3;
        if (i9 == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (i9 != 5) {
            if (i9 != 9) {
                switch (i9) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        mVar2.f8114d = mode;
        ColorStateList colorStateListA = null;
        if (H.j(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            typedArrayN.getValue(1, typedValue);
            int i11 = typedValue.type;
            if (i11 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i11 < 28 || i11 > 31) {
                Resources resources2 = typedArrayN.getResources();
                int resourceId = typedArrayN.getResourceId(1, 0);
                ThreadLocal threadLocal = F.c.f2959a;
                try {
                    colorStateListA = F.c.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e8) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e8);
                }
            } else {
                colorStateListA = ColorStateList.valueOf(typedValue.data);
            }
        }
        ColorStateList colorStateList = colorStateListA;
        if (colorStateList != null) {
            mVar2.f8113c = colorStateList;
        }
        boolean z7 = mVar2.f8115e;
        if (H.j(xmlPullParser, "autoMirrored")) {
            z7 = typedArrayN.getBoolean(5, z7);
        }
        mVar2.f8115e = z7;
        float f8 = lVar2.f8105j;
        if (H.j(xmlPullParser, "viewportWidth")) {
            f8 = typedArrayN.getFloat(7, f8);
        }
        lVar2.f8105j = f8;
        float f9 = lVar2.f8106k;
        if (H.j(xmlPullParser, "viewportHeight")) {
            f9 = typedArrayN.getFloat(8, f9);
        }
        lVar2.f8106k = f9;
        if (lVar2.f8105j <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f9 <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
        }
        lVar2.f8103h = typedArrayN.getDimension(3, lVar2.f8103h);
        float dimension = typedArrayN.getDimension(2, lVar2.f8104i);
        lVar2.f8104i = dimension;
        if (lVar2.f8103h <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires width > 0");
        }
        if (dimension <= 0.0f) {
            throw new XmlPullParserException(typedArrayN.getPositionDescription() + "<vector> tag requires height > 0");
        }
        float alpha = lVar2.getAlpha();
        if (H.j(xmlPullParser, "alpha")) {
            alpha = typedArrayN.getFloat(4, alpha);
        }
        lVar2.setAlpha(alpha);
        String string = typedArrayN.getString(0);
        if (string != null) {
            lVar2.f8108m = string;
            lVar2.f8110o.put(string, lVar2);
        }
        typedArrayN.recycle();
        mVar.f8111a = getChangingConfigurations();
        mVar.f8121k = true;
        m mVar3 = this.f8125H;
        l lVar3 = mVar3.f8112b;
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.push(lVar3.f8102g);
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        boolean z8 = true;
        for (int i12 = 1; eventType != i12 && (xmlPullParser.getDepth() >= depth || eventType != i10); i12 = 1) {
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                i iVar = (i) arrayDeque.peek();
                boolean zEquals = "path".equals(name);
                p132r.f fVar = lVar3.f8110o;
                lVar = lVar3;
                if (zEquals) {
                    h hVar = new h();
                    hVar.f8069f = 0.0f;
                    hVar.f8071h = 1.0f;
                    hVar.f8072i = 1.0f;
                    hVar.f8073j = 0.0f;
                    hVar.f8074k = 1.0f;
                    hVar.f8075l = 0.0f;
                    Paint.Cap cap2 = Paint.Cap.BUTT;
                    hVar.f8076m = cap2;
                    Paint.Join join = Paint.Join.MITER;
                    hVar.f8077n = join;
                    i8 = depth;
                    hVar.f8078o = 4.0f;
                    TypedArray typedArrayN2 = H.n(resources, theme, attributeSet, a.f8049c);
                    if (H.j(xmlPullParser, "pathData")) {
                        String string2 = typedArrayN2.getString(0);
                        if (string2 != null) {
                            hVar.f8092b = string2;
                        }
                        String string3 = typedArrayN2.getString(2);
                        if (string3 != null) {
                            hVar.f8091a = H1.m(string3);
                        }
                        hVar.f8070g = H.f(typedArrayN2, xmlPullParser, theme, "fillColor", 1);
                        float f10 = hVar.f8072i;
                        if (H.j(xmlPullParser, "fillAlpha")) {
                            f10 = typedArrayN2.getFloat(12, f10);
                        }
                        hVar.f8072i = f10;
                        int i13 = !H.j(xmlPullParser, "strokeLineCap") ? -1 : typedArrayN2.getInt(8, -1);
                        Paint.Cap cap3 = hVar.f8076m;
                        if (i13 == 0) {
                            cap = cap2;
                        } else if (i13 != 1) {
                            cap = i13 != 2 ? cap3 : Paint.Cap.SQUARE;
                        } else {
                            cap = Paint.Cap.ROUND;
                        }
                        hVar.f8076m = cap;
                        int i14 = !H.j(xmlPullParser, "strokeLineJoin") ? -1 : typedArrayN2.getInt(9, -1);
                        Paint.Join join2 = hVar.f8077n;
                        if (i14 != 0) {
                            join = i14 != 1 ? i14 != 2 ? join2 : Paint.Join.BEVEL : Paint.Join.ROUND;
                        }
                        hVar.f8077n = join;
                        float f11 = hVar.f8078o;
                        if (H.j(xmlPullParser, "strokeMiterLimit")) {
                            f11 = typedArrayN2.getFloat(10, f11);
                        }
                        hVar.f8078o = f11;
                        hVar.f8068e = H.f(typedArrayN2, xmlPullParser, theme, "strokeColor", 3);
                        float f12 = hVar.f8071h;
                        if (H.j(xmlPullParser, "strokeAlpha")) {
                            f12 = typedArrayN2.getFloat(11, f12);
                        }
                        hVar.f8071h = f12;
                        float f13 = hVar.f8069f;
                        if (H.j(xmlPullParser, "strokeWidth")) {
                            f13 = typedArrayN2.getFloat(4, f13);
                        }
                        hVar.f8069f = f13;
                        float f14 = hVar.f8074k;
                        if (H.j(xmlPullParser, "trimPathEnd")) {
                            f14 = typedArrayN2.getFloat(6, f14);
                        }
                        hVar.f8074k = f14;
                        float f15 = hVar.f8075l;
                        if (H.j(xmlPullParser, "trimPathOffset")) {
                            f15 = typedArrayN2.getFloat(7, f15);
                        }
                        hVar.f8075l = f15;
                        float f16 = hVar.f8073j;
                        if (H.j(xmlPullParser, "trimPathStart")) {
                            f16 = typedArrayN2.getFloat(5, f16);
                        }
                        hVar.f8073j = f16;
                        int i15 = hVar.f8093c;
                        if (H.j(xmlPullParser, "fillType")) {
                            i15 = typedArrayN2.getInt(13, i15);
                        }
                        hVar.f8093c = i15;
                    }
                    typedArrayN2.recycle();
                    iVar.f8080b.add(hVar);
                    if (hVar.getPathName() != null) {
                        fVar.put(hVar.getPathName(), hVar);
                    }
                    mVar3.f8111a |= hVar.f8094d;
                    z8 = false;
                } else {
                    i8 = depth;
                    if ("clip-path".equals(name)) {
                        g gVar = new g();
                        if (H.j(xmlPullParser, "pathData")) {
                            TypedArray typedArrayN3 = H.n(resources, theme, attributeSet, a.f8050d);
                            String string4 = typedArrayN3.getString(0);
                            if (string4 != null) {
                                gVar.f8092b = string4;
                            }
                            String string5 = typedArrayN3.getString(1);
                            if (string5 != null) {
                                gVar.f8091a = H1.m(string5);
                            }
                            gVar.f8093c = !H.j(xmlPullParser, "fillType") ? 0 : typedArrayN3.getInt(2, 0);
                            typedArrayN3.recycle();
                        }
                        iVar.f8080b.add(gVar);
                        if (gVar.getPathName() != null) {
                            fVar.put(gVar.getPathName(), gVar);
                        }
                        mVar3.f8111a |= gVar.f8094d;
                    } else if ("group".equals(name)) {
                        i iVar2 = new i();
                        TypedArray typedArrayN4 = H.n(resources, theme, attributeSet, a.f8048b);
                        float f17 = iVar2.f8081c;
                        if (H.j(xmlPullParser, "rotation")) {
                            f17 = typedArrayN4.getFloat(5, f17);
                        }
                        iVar2.f8081c = f17;
                        iVar2.f8082d = typedArrayN4.getFloat(1, iVar2.f8082d);
                        iVar2.f8083e = typedArrayN4.getFloat(2, iVar2.f8083e);
                        float f18 = iVar2.f8084f;
                        if (H.j(xmlPullParser, "scaleX")) {
                            f18 = typedArrayN4.getFloat(3, f18);
                        }
                        iVar2.f8084f = f18;
                        float f19 = iVar2.f8085g;
                        if (H.j(xmlPullParser, "scaleY")) {
                            f19 = typedArrayN4.getFloat(4, f19);
                        }
                        iVar2.f8085g = f19;
                        float f20 = iVar2.f8086h;
                        if (H.j(xmlPullParser, "translateX")) {
                            f20 = typedArrayN4.getFloat(6, f20);
                        }
                        iVar2.f8086h = f20;
                        float f21 = iVar2.f8087i;
                        if (H.j(xmlPullParser, "translateY")) {
                            f21 = typedArrayN4.getFloat(7, f21);
                        }
                        iVar2.f8087i = f21;
                        String string6 = typedArrayN4.getString(0);
                        if (string6 != null) {
                            iVar2.f8090l = string6;
                        }
                        iVar2.c();
                        typedArrayN4.recycle();
                        iVar.f8080b.add(iVar2);
                        arrayDeque.push(iVar2);
                        if (iVar2.getGroupName() != null) {
                            fVar.put(iVar2.getGroupName(), iVar2);
                        }
                        mVar3.f8111a = iVar2.f8089k | mVar3.f8111a;
                    }
                }
                i10 = 3;
            } else {
                lVar = lVar3;
                i8 = depth;
                i10 = 3;
                if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                    arrayDeque.pop();
                }
            }
            eventType = xmlPullParser.next();
            lVar3 = lVar;
            depth = i8;
        }
        if (z8) {
            throw new XmlPullParserException("no path defined");
        }
        this.f8126I = a(mVar.f8113c, mVar.f8114d);
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.isAutoMirrored() : this.f8125H.f8115e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            m mVar = this.f8125H;
            if (mVar != null) {
                l lVar = mVar.f8112b;
                if (lVar.f8109n == null) {
                    lVar.f8109n = Boolean.valueOf(lVar.f8102g.a());
                }
                if (lVar.f8109n.booleanValue() || ((colorStateList = this.f8125H.f8113c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f8128K && super.mutate() == this) {
            m mVar = this.f8125H;
            m mVar2 = new m();
            mVar2.f8113c = null;
            mVar2.f8114d = f8124P;
            if (mVar != null) {
                mVar2.f8111a = mVar.f8111a;
                l lVar = new l(mVar.f8112b);
                mVar2.f8112b = lVar;
                if (mVar.f8112b.f8100e != null) {
                    lVar.f8100e = new Paint(mVar.f8112b.f8100e);
                }
                if (mVar.f8112b.f8099d != null) {
                    mVar2.f8112b.f8099d = new Paint(mVar.f8112b.f8099d);
                }
                mVar2.f8113c = mVar.f8113c;
                mVar2.f8114d = mVar.f8114d;
                mVar2.f8115e = mVar.f8115e;
            }
            this.f8125H = mVar2;
            this.f8128K = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z7;
        PorterDuff.Mode mode;
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        m mVar = this.f8125H;
        ColorStateList colorStateList = mVar.f8113c;
        if (colorStateList == null || (mode = mVar.f8114d) == null) {
            z7 = false;
        } else {
            this.f8126I = a(colorStateList, mode);
            invalidateSelf();
            z7 = true;
        }
        l lVar = mVar.f8112b;
        if (lVar.f8109n == null) {
            lVar.f8109n = Boolean.valueOf(lVar.f8102g.a());
        }
        if (lVar.f8109n.booleanValue()) {
            boolean zB = mVar.f8112b.f8102g.b(iArr);
            mVar.f8121k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z7;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j8) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j8);
        } else {
            super.scheduleSelf(runnable, j8);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setAlpha(i8);
        } else if (this.f8125H.f8112b.getRootAlpha() != i8) {
            this.f8125H.f8112b.setRootAlpha(i8);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setAutoMirrored(z7);
        } else {
            this.f8125H.f8115e = z7;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f8127J = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i8) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            p102n0.c.m(drawable, i8);
        } else {
            setTintList(ColorStateList.valueOf(i8));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
            return;
        }
        m mVar = this.f8125H;
        if (mVar.f8113c != colorStateList) {
            mVar.f8113c = colorStateList;
            this.f8126I = a(colorStateList, mVar.f8114d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setTintMode(mode);
            return;
        }
        m mVar = this.f8125H;
        if (mVar.f8114d != mode) {
            mVar.f8114d = mode;
            this.f8126I = a(mVar.f8113c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z8) {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.setVisible(z7, z8) : super.setVisible(z7, z8);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    public o(m mVar) {
        this.f8129L = true;
        this.f8130M = new float[9];
        this.f8131N = new Matrix();
        this.f8132O = new Rect();
        this.f8125H = mVar;
        this.f8126I = a(mVar.f8113c, mVar.f8114d);
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }
}
