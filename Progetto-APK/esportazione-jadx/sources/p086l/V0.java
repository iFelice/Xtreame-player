package p086l;

import Y1.o;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
import p102n0.c;
import p132r.j;
import p132r.k;
import p132r.m;
import p132r.n;
import p140s.a;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class V0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static V0 f26183i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap f26185a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public m f26186b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f26187c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WeakHashMap f26188d = new WeakHashMap(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f26189e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f26190f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public C3061x f26191g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final PorterDuff.Mode f26182h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final T0 f26184j = new T0(6);

    public static synchronized V0 d() {
        try {
            if (f26183i == null) {
                V0 v5 = new V0();
                f26183i = v5;
                j(v5);
            }
        } catch (Throwable th) {
            throw th;
        }
        return f26183i;
    }

    public static synchronized PorterDuffColorFilter h(int i8, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        T0 t7 = f26184j;
        t7.getClass();
        int i9 = (31 + i8) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) t7.b(Integer.valueOf(mode.hashCode() + i9));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i8, mode);
        }
        return porterDuffColorFilter;
    }

    public static void j(V0 v5) {
        if (Build.VERSION.SDK_INT < 24) {
            v5.a("vector", new S0(3));
            v5.a("animated-vector", new S0(1));
            v5.a("animated-selector", new S0(0));
            v5.a("drawable", new S0(2));
        }
    }

    public final void a(String str, S0 s7) {
        if (this.f26186b == null) {
            this.f26186b = new m(0);
        }
        this.f26186b.put(str, s7);
    }

    public final synchronized void b(Context context, long j8, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                j jVar = (j) this.f26188d.get(context);
                if (jVar == null) {
                    jVar = new j();
                    this.f26188d.put(context, jVar);
                }
                jVar.g(new WeakReference(constantState), j8);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Drawable c(Context context, int i8) {
        if (this.f26189e == null) {
            this.f26189e = new TypedValue();
        }
        TypedValue typedValue = this.f26189e;
        context.getResources().getValue(i8, typedValue, true);
        long j8 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable drawableE = e(context, j8);
        if (drawableE != null) {
            return drawableE;
        }
        LayerDrawable layerDrawableI = null;
        if (this.f26191g != null) {
            if (i8 == R.drawable.abc_cab_background_top_material) {
                layerDrawableI = new LayerDrawable(new Drawable[]{f(context, R.drawable.abc_cab_background_internal_bg), f(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i8 == R.drawable.abc_ratingbar_material) {
                layerDrawableI = C3061x.i(this, context, R.dimen.abc_star_big);
            } else if (i8 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableI = C3061x.i(this, context, R.dimen.abc_star_medium);
            } else if (i8 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableI = C3061x.i(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableI != null) {
            layerDrawableI.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j8, layerDrawableI);
        }
        return layerDrawableI;
    }

    public final synchronized Drawable e(Context context, long j8) {
        j jVar = (j) this.f26188d.get(context);
        if (jVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) jVar.d(j8);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int iB = a.b(jVar.f29672H, jVar.f29674J, j8);
            if (iB >= 0) {
                Object[] objArr = jVar.f29673I;
                Object obj = objArr[iB];
                Object obj2 = k.f29675a;
                if (obj != obj2) {
                    objArr[iB] = obj2;
                    jVar.f29671G = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable f(Context context, int i8) {
        return g(context, i8, false);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x005e  */
    /* JADX WARN: Code duplicated, block: B:88:0x019d A[Catch: all -> 0x00f9, TryCatch #1 {all -> 0x00f9, blocks: (B:3:0x0001, B:12:0x0026, B:14:0x002b, B:16:0x0031, B:18:0x0037, B:20:0x0043, B:23:0x004c, B:26:0x0056, B:30:0x0068, B:32:0x006c, B:33:0x0073, B:59:0x00f4, B:63:0x00fe, B:65:0x0104, B:67:0x010a, B:74:0x0123, B:72:0x011f, B:76:0x0129, B:80:0x0140, B:87:0x0176, B:88:0x019d, B:95:0x01aa, B:36:0x008d, B:38:0x0091, B:40:0x009d, B:41:0x00a5, B:46:0x00b1, B:48:0x00c4, B:52:0x00d3, B:53:0x00dc, B:54:0x00e3, B:55:0x00e4, B:57:0x00ed, B:29:0x0061, B:6:0x0007, B:8:0x0012, B:10:0x0016, B:99:0x01b0, B:100:0x01b9), top: B:104:0x0001, inners: #0 }] */
    public final synchronized Drawable g(Context context, int i8, boolean z7) {
        Drawable drawable;
        int next;
        Object obj;
        try {
            if (!this.f26190f) {
                this.f26190f = true;
                Drawable drawableF = f(context, R.drawable.abc_vector_test);
                if (drawableF == null || (!(drawableF instanceof o) && !"android.graphics.drawable.VectorDrawable".equals(drawableF.getClass().getName()))) {
                    this.f26190f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            m mVar = this.f26186b;
            Drawable drawable2 = null;
            mode = null;
            PorterDuff.Mode mode = null;
            if (mVar == null || mVar.isEmpty()) {
                drawable = null;
            } else {
                n nVar = this.f26187c;
                if (nVar != null) {
                    Object obj2 = p132r.o.f29688a;
                    int iA = a.a(nVar.f29687I, i8, nVar.f29685G);
                    if (iA < 0 || (obj = nVar.f29686H[iA]) == p132r.o.f29688a) {
                        obj = null;
                    }
                    String str = (String) obj;
                    if ("appcompat_skip_skip".equals(str) || (str != null && this.f26186b.get(str) == null)) {
                        drawable = null;
                    }
                } else {
                    this.f26187c = new n();
                }
                if (this.f26189e == null) {
                    this.f26189e = new TypedValue();
                }
                TypedValue typedValue = this.f26189e;
                Resources resources = context.getResources();
                resources.getValue(i8, typedValue, true);
                long j8 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
                drawable = e(context, j8);
                if (drawable == null) {
                    CharSequence charSequence = typedValue.string;
                    if (charSequence != null && charSequence.toString().endsWith(".xml")) {
                        try {
                            XmlResourceParser xml = resources.getXml(i8);
                            AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                            do {
                                next = xml.next();
                                if (next == 2) {
                                    break;
                                }
                            } while (next != 1);
                            if (next != 2) {
                                throw new XmlPullParserException("No start tag found");
                            }
                            String name = xml.getName();
                            this.f26187c.a(i8, name);
                            U0 u7 = (U0) this.f26186b.get(name);
                            if (u7 != null) {
                                drawable = ((S0) u7).a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                            }
                            if (drawable != null) {
                                drawable.setChangingConfigurations(typedValue.changingConfigurations);
                                b(context, j8, drawable);
                            }
                        } catch (Exception e8) {
                            Log.e("ResourceManagerInternal", "Exception while inflating drawable", e8);
                        }
                    }
                    if (drawable == null) {
                        this.f26187c.a(i8, "appcompat_skip_skip");
                    }
                }
            }
            if (drawable == null) {
                drawable = c(context, i8);
            }
            if (drawable == null) {
                drawable = context.getDrawable(i8);
            }
            if (drawable != null) {
                ColorStateList colorStateListI = i(context, i8);
                if (colorStateListI != null) {
                    Drawable drawableQ = c.q(drawable.mutate());
                    drawableQ.setTintList(colorStateListI);
                    if (this.f26191g != null && i8 == R.drawable.abc_switch_thumb_material) {
                        mode = PorterDuff.Mode.MULTIPLY;
                    }
                    if (mode != null) {
                        drawableQ.setTintMode(mode);
                    }
                    drawable2 = drawableQ;
                } else if (this.f26191g != null) {
                    if (i8 == R.drawable.abc_seekbar_track_material) {
                        LayerDrawable layerDrawable = (LayerDrawable) drawable;
                        Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                        int iC = c1.c(context, R.attr.colorControlNormal);
                        PorterDuff.Mode mode2 = C3063y.f26418b;
                        C3061x.n(drawableFindDrawableByLayerId, iC, mode2);
                        C3061x.n(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), c1.c(context, R.attr.colorControlNormal), mode2);
                        C3061x.n(layerDrawable.findDrawableByLayerId(android.R.id.progress), c1.c(context, R.attr.colorControlActivated), mode2);
                    } else if (i8 == R.drawable.abc_ratingbar_material || i8 == R.drawable.abc_ratingbar_indicator_material || i8 == R.drawable.abc_ratingbar_small_material) {
                        LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                        Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                        int iB = c1.b(context, R.attr.colorControlNormal);
                        PorterDuff.Mode mode3 = C3063y.f26418b;
                        C3061x.n(drawableFindDrawableByLayerId2, iB, mode3);
                        C3061x.n(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), c1.c(context, R.attr.colorControlActivated), mode3);
                        C3061x.n(layerDrawable2.findDrawableByLayerId(android.R.id.progress), c1.c(context, R.attr.colorControlActivated), mode3);
                    } else if (!m(context, i8, drawable)) {
                    }
                    drawable2 = drawable;
                } else if (!m(context, i8, drawable) || !z7) {
                    drawable2 = drawable;
                }
                drawable = drawable2;
            }
            if (drawable != null) {
                AbstractC3054t0.a(drawable);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawable;
    }

    public final synchronized ColorStateList i(Context context, int i8) {
        ColorStateList colorStateList;
        n nVar;
        Object obj;
        WeakHashMap weakHashMap = this.f26185a;
        ColorStateList colorStateListJ = null;
        if (weakHashMap == null || (nVar = (n) weakHashMap.get(context)) == null) {
            colorStateList = null;
        } else {
            Object obj2 = p132r.o.f29688a;
            int iA = a.a(nVar.f29687I, i8, nVar.f29685G);
            if (iA < 0 || (obj = nVar.f29686H[iA]) == p132r.o.f29688a) {
                obj = null;
            }
            colorStateList = (ColorStateList) obj;
        }
        if (colorStateList == null) {
            C3061x c3061x = this.f26191g;
            if (c3061x != null) {
                colorStateListJ = c3061x.j(context, i8);
            }
            if (colorStateListJ != null) {
                if (this.f26185a == null) {
                    this.f26185a = new WeakHashMap();
                }
                n nVar2 = (n) this.f26185a.get(context);
                if (nVar2 == null) {
                    nVar2 = new n();
                    this.f26185a.put(context, nVar2);
                }
                nVar2.a(i8, colorStateListJ);
            }
            colorStateList = colorStateListJ;
        }
        return colorStateList;
    }

    public final synchronized void k(Context context) {
        j jVar = (j) this.f26188d.get(context);
        if (jVar != null) {
            jVar.b();
        }
    }

    public final synchronized void l(C3061x c3061x) {
        this.f26191g = c3061x;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0059  */
    /* JADX WARN: Code duplicated, block: B:30:0x006e  */
    /* JADX WARN: Code duplicated, block: B:36:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:? A[RETURN, SYNTHETIC] */
    public final boolean m(Context context, int i8, Drawable drawable) {
        int i9;
        int iRound;
        boolean z7;
        Drawable drawableMutate;
        int iC;
        C3061x c3061x = this.f26191g;
        if (c3061x == null) {
            return false;
        }
        PorterDuff.Mode mode = C3063y.f26418b;
        if (C3061x.d((int[]) c3061x.f26410G, i8)) {
            i9 = R.attr.colorControlNormal;
        } else if (C3061x.d((int[]) c3061x.f26412I, i8)) {
            i9 = R.attr.colorControlActivated;
        } else {
            if (!C3061x.d((int[]) c3061x.f26413J, i8)) {
                if (i8 == R.drawable.abc_list_divider_mtrl_alpha) {
                    iRound = Math.round(40.8f);
                    i9 = android.R.attr.colorForeground;
                    z7 = true;
                } else if (i8 != R.drawable.abc_dialog_material_background) {
                    i9 = 0;
                    iRound = -1;
                    z7 = false;
                }
                if (z7) {
                    return false;
                }
                drawableMutate = drawable.mutate();
                iC = c1.c(context, i9);
                synchronized (C3063y.class) {
                    PorterDuffColorFilter porterDuffColorFilterH = h(iC, mode);
                }
                drawableMutate.setColorFilter(porterDuffColorFilterH);
                if (iRound != -1) {
                    drawableMutate.setAlpha(iRound);
                }
                return true;
            }
            mode = PorterDuff.Mode.MULTIPLY;
            i9 = android.R.attr.colorBackground;
        }
        iRound = -1;
        z7 = true;
        if (z7) {
            return false;
        }
        drawableMutate = drawable.mutate();
        iC = c1.c(context, i9);
        synchronized (C3063y.class) {
            PorterDuffColorFilter porterDuffColorFilterH2 = h(iC, mode);
            drawableMutate.setColorFilter(porterDuffColorFilterH2);
            if (iRound != -1) {
                drawableMutate.setAlpha(iRound);
            }
            return true;
        }
    }
}
