package Y1;

import J6.r;
import Z3.H;
import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public final class d extends f implements Animatable {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Context f8064I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final p047g.f f8065J = new p047g.f(this);

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final b f8063H = new b();

    public d(Context context) {
        this.f8064I = context;
    }

    @Override // Y1.f, android.graphics.drawable.Drawable
    public final void applyTheme(Resources.Theme theme) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.applyTheme(theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        b bVar = this.f8063H;
        bVar.f8058a.draw(canvas);
        if (bVar.f8059b.isStarted()) {
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getAlpha() : this.f8063H.f8058a.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            return drawable.getChangingConfigurations();
        }
        int changingConfigurations = super.getChangingConfigurations();
        this.f8063H.getClass();
        return changingConfigurations | 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getColorFilter() : this.f8063H.f8058a.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f8067G == null || Build.VERSION.SDK_INT < 24) {
            return null;
        }
        return new c(this.f8067G.getConstantState());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getIntrinsicHeight() : this.f8063H.f8058a.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getIntrinsicWidth() : this.f8063H.f8058a.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.getOpacity() : this.f8063H.f8058a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        inflate(resources, xmlPullParser, attributeSet, null);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.isAutoMirrored() : this.f8063H.f8058a.isAutoMirrored();
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        Drawable drawable = this.f8067G;
        return drawable != null ? ((AnimatedVectorDrawable) drawable).isRunning() : this.f8063H.f8059b.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.isStateful() : this.f8063H.f8058a.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.mutate();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setBounds(rect);
        } else {
            this.f8063H.f8058a.setBounds(rect);
        }
    }

    @Override // Y1.f, android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i8) {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.setLevel(i8) : this.f8063H.f8058a.setLevel(i8);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        Drawable drawable = this.f8067G;
        return drawable != null ? drawable.setState(iArr) : this.f8063H.f8058a.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i8) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setAlpha(i8);
        } else {
            this.f8063H.f8058a.setAlpha(i8);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setAutoMirrored(z7);
        } else {
            this.f8063H.f8058a.setAutoMirrored(z7);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f8063H.f8058a.setColorFilter(colorFilter);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i8) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            p102n0.c.m(drawable, i8);
        } else {
            this.f8063H.f8058a.setTint(i8);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            p102n0.c.n(drawable, colorStateList);
        } else {
            this.f8063H.f8058a.setTintList(colorStateList);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            p102n0.c.o(drawable, mode);
        } else {
            this.f8063H.f8058a.setTintMode(mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z8) {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            return drawable.setVisible(z7, z8);
        }
        this.f8063H.f8058a.setVisible(z7, z8);
        return super.setVisible(z7, z8);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).start();
            return;
        }
        b bVar = this.f8063H;
        if (bVar.f8059b.isStarted()) {
            return;
        }
        bVar.f8059b.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            ((AnimatedVectorDrawable) drawable).stop();
        } else {
            this.f8063H.f8059b.end();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        b bVar;
        Animator animatorD;
        o oVar;
        int next;
        Drawable drawable = this.f8067G;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
            return;
        }
        int eventType = xmlPullParser.getEventType();
        int depth = xmlPullParser.getDepth() + 1;
        while (true) {
            bVar = this.f8063H;
            if (eventType == 1 || (xmlPullParser.getDepth() < depth && eventType == 3)) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("animated-vector".equals(name)) {
                    TypedArray typedArrayN = H.n(resources, theme, attributeSet, a.f8051e);
                    int resourceId = typedArrayN.getResourceId(0, 0);
                    if (resourceId != 0) {
                        PorterDuff.Mode mode = o.f8124P;
                        if (Build.VERSION.SDK_INT >= 24) {
                            oVar = new o();
                            ThreadLocal threadLocal = F.n.f2990a;
                            oVar.f8067G = resources.getDrawable(resourceId, theme);
                            new n(oVar.f8067G.getConstantState());
                        } else {
                            try {
                                XmlResourceParser xml = resources.getXml(resourceId);
                                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                                do {
                                    next = xml.next();
                                    if (next == 2) {
                                        break;
                                    }
                                } while (next != 1);
                                if (next == 2) {
                                    oVar = new o();
                                    oVar.inflate(resources, xml, attributeSetAsAttributeSet, theme);
                                } else {
                                    throw new XmlPullParserException("No start tag found");
                                }
                            } catch (IOException e8) {
                                Log.e("VectorDrawableCompat", "parser error", e8);
                                oVar = null;
                            } catch (XmlPullParserException e9) {
                                Log.e("VectorDrawableCompat", "parser error", e9);
                                oVar = null;
                            }
                        }
                        oVar.f8129L = false;
                        oVar.setCallback(this.f8065J);
                        o oVar2 = bVar.f8058a;
                        if (oVar2 != null) {
                            oVar2.setCallback(null);
                        }
                        bVar.f8058a = oVar;
                    }
                    typedArrayN.recycle();
                } else {
                    XmlResourceParser animation = null;
                    if ("target".equals(name)) {
                        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, a.f8052f);
                        String string = typedArrayObtainAttributes.getString(0);
                        int resourceId2 = typedArrayObtainAttributes.getResourceId(1, 0);
                        if (resourceId2 != 0) {
                            Context context = this.f8064I;
                            if (context != null) {
                                if (Build.VERSION.SDK_INT >= 24) {
                                    animatorD = AnimatorInflater.loadAnimator(context, resourceId2);
                                } else {
                                    Resources resources2 = context.getResources();
                                    Resources.Theme theme2 = context.getTheme();
                                    try {
                                        try {
                                            try {
                                                animation = resources2.getAnimation(resourceId2);
                                                animatorD = r.d(context, resources2, theme2, animation, Xml.asAttributeSet(animation), null, 0);
                                                animation.close();
                                            } catch (XmlPullParserException e10) {
                                                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                                notFoundException.initCause(e10);
                                                throw notFoundException;
                                            }
                                        } catch (IOException e11) {
                                            Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load animation resource ID #0x" + Integer.toHexString(resourceId2));
                                            notFoundException2.initCause(e11);
                                            throw notFoundException2;
                                        }
                                    } catch (Throwable th) {
                                        if (animation != null) {
                                            animation.close();
                                        }
                                        throw th;
                                    }
                                }
                                animatorD.setTarget(bVar.f8058a.f8125H.f8112b.f8110o.get(string));
                                if (bVar.f8060c == null) {
                                    bVar.f8060c = new ArrayList();
                                    bVar.f8061d = new p132r.f(0);
                                }
                                bVar.f8060c.add(animatorD);
                                bVar.f8061d.put(animatorD, string);
                            } else {
                                typedArrayObtainAttributes.recycle();
                                throw new IllegalStateException("Context can't be null when inflating animators");
                            }
                        }
                        typedArrayObtainAttributes.recycle();
                    } else {
                        continue;
                    }
                }
            }
            eventType = xmlPullParser.next();
        }
        if (bVar.f8059b == null) {
            bVar.f8059b = new AnimatorSet();
        }
        bVar.f8059b.playTogether(bVar.f8060c);
    }
}
