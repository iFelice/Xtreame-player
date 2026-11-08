package p086l;

import Y1.d;
import Y1.o;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import p047g.e;
import p055h.a;

/* JADX INFO: loaded from: classes.dex */
public final class S0 implements U0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26175a;

    public /* synthetic */ S0(int i8) {
        this.f26175a = i8;
    }

    public final Drawable a(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        switch (this.f26175a) {
            case 0:
                try {
                    return e.e(context, theme, context.getResources(), attributeSet, xmlResourceParser);
                } catch (Exception e8) {
                    Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e8);
                    return null;
                }
            case 1:
                try {
                    Resources resources = context.getResources();
                    d dVar = new d(context);
                    dVar.inflate(resources, xmlResourceParser, attributeSet, theme);
                    return dVar;
                } catch (Exception e9) {
                    Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e9);
                    return null;
                }
            case 2:
                String classAttribute = attributeSet.getClassAttribute();
                if (classAttribute == null) {
                    return null;
                }
                try {
                    Drawable drawable = (Drawable) S0.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    a.c(drawable, context.getResources(), xmlResourceParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e10) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e10);
                    return null;
                }
            default:
                try {
                    Resources resources2 = context.getResources();
                    o oVar = new o();
                    oVar.inflate(resources2, xmlResourceParser, attributeSet, theme);
                    return oVar;
                } catch (Exception e11) {
                    Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e11);
                    return null;
                }
        }
    }
}
