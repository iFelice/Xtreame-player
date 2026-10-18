package p047g;

import H.b;
import Y1.d;
import Y1.o;
import Z3.H;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.StateSet;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;
import p055h.a;
import p086l.V0;

/* JADX INFO: loaded from: classes.dex */
public final class e extends j implements b {

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public b f25236V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public AbstractC2617p2 f25237W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f25238X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public int f25239Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public boolean f25240Z;

    public e(b bVar, Resources resources) {
        this.f25281K = 255;
        this.f25283M = -1;
        this.f25238X = -1;
        this.f25239Y = -1;
        d(new b(bVar, this, resources));
        onStateChange(getState());
        jumpToCurrentState();
    }

    public static e e(Context context, Resources.Theme theme, Resources resources, AttributeSet attributeSet, XmlResourceParser xmlResourceParser) throws XmlPullParserException, IOException {
        int depth;
        int next;
        int next2;
        Context context2 = context;
        Resources.Theme theme2 = theme;
        Resources resources2 = resources;
        String name = xmlResourceParser.getName();
        if (!name.equals("animated-selector")) {
            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": invalid animated-selector tag " + name);
        }
        e eVar = new e(null, null);
        TypedArray typedArrayN = H.n(resources2, theme2, attributeSet, p055h.b.f25378a);
        int i8 = 1;
        eVar.setVisible(typedArrayN.getBoolean(1, true), true);
        b bVar = eVar.f25236V;
        bVar.f25253d |= a.b(typedArrayN);
        int i9 = 2;
        bVar.f25258i = typedArrayN.getBoolean(2, bVar.f25258i);
        int i10 = 3;
        bVar.f25261l = typedArrayN.getBoolean(3, bVar.f25261l);
        bVar.f25274y = typedArrayN.getInt(4, bVar.f25274y);
        bVar.f25275z = typedArrayN.getInt(5, bVar.f25275z);
        boolean z7 = false;
        eVar.setDither(typedArrayN.getBoolean(0, bVar.f25272w));
        g gVar = eVar.f25277G;
        if (resources2 != null) {
            gVar.f25251b = resources2;
            int i11 = resources.getDisplayMetrics().densityDpi;
            if (i11 == 0) {
                i11 = 160;
            }
            int i12 = gVar.f25252c;
            gVar.f25252c = i11;
            if (i12 != i11) {
                gVar.f25262m = false;
                gVar.f25259j = false;
            }
        } else {
            gVar.getClass();
        }
        typedArrayN.recycle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next3 = xmlResourceParser.next();
            if (next3 == i8 || ((depth = xmlResourceParser.getDepth()) < depth2 && next3 == i10)) {
                break;
            }
            if (next3 == i9 && depth <= depth2) {
                if (xmlResourceParser.getName().equals("item")) {
                    TypedArray typedArrayN2 = H.n(resources2, theme2, attributeSet, p055h.b.f25379b);
                    int resourceId = typedArrayN2.getResourceId(z7 ? 1 : 0, z7 ? 1 : 0);
                    int resourceId2 = typedArrayN2.getResourceId(i8, -1);
                    Drawable drawableF = resourceId2 > 0 ? V0.d().f(context2, resourceId2) : null;
                    typedArrayN2.recycle();
                    int attributeCount = attributeSet.getAttributeCount();
                    int[] iArr = new int[attributeCount];
                    int i13 = 0;
                    for (int i14 = 0; i14 < attributeCount; i14++) {
                        int attributeNameResource = attributeSet.getAttributeNameResource(i14);
                        if (attributeNameResource != 0 && attributeNameResource != 16842960 && attributeNameResource != 16843161) {
                            int i15 = i13 + 1;
                            if (!attributeSet.getAttributeBooleanValue(i14, z7)) {
                                attributeNameResource = -attributeNameResource;
                            }
                            iArr[i13] = attributeNameResource;
                            i13 = i15;
                        }
                    }
                    int[] iArrTrimStateSet = StateSet.trimStateSet(iArr, i13);
                    if (drawableF == null) {
                        do {
                            next2 = xmlResourceParser.next();
                        } while (next2 == 4);
                        if (next2 != 2) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        if (xmlResourceParser.getName().equals("vector")) {
                            drawableF = new o();
                            drawableF.inflate(resources2, xmlResourceParser, attributeSet, theme2);
                        } else {
                            drawableF = a.a(resources2, xmlResourceParser, attributeSet, theme2);
                        }
                    }
                    if (drawableF == null) {
                        throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <item> tag requires a 'drawable' attribute or child tag defining a drawable");
                    }
                    b bVar2 = eVar.f25236V;
                    int iA = bVar2.a(drawableF);
                    bVar2.f25289H[iA] = iArrTrimStateSet;
                    bVar2.f25230J.c(iA, Integer.valueOf(resourceId));
                } else {
                    if (xmlResourceParser.getName().equals("transition")) {
                        TypedArray typedArrayN3 = H.n(resources2, theme2, attributeSet, p055h.b.f25380c);
                        int resourceId3 = typedArrayN3.getResourceId(2, -1);
                        int resourceId4 = typedArrayN3.getResourceId(1, -1);
                        int resourceId5 = typedArrayN3.getResourceId(z7 ? 1 : 0, -1);
                        Drawable drawableF2 = resourceId5 > 0 ? V0.d().f(context2, resourceId5) : null;
                        boolean z8 = typedArrayN3.getBoolean(3, z7);
                        typedArrayN3.recycle();
                        if (drawableF2 == null) {
                            do {
                                next = xmlResourceParser.next();
                            } while (next == 4);
                            if (next != 2) {
                                throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                            }
                            if (xmlResourceParser.getName().equals("animated-vector")) {
                                drawableF2 = new d(context2);
                                drawableF2.inflate(resources2, xmlResourceParser, attributeSet, theme2);
                            } else {
                                drawableF2 = a.a(resources2, xmlResourceParser, attributeSet, theme2);
                            }
                        }
                        if (drawableF2 == null) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires a 'drawable' attribute or child tag defining a drawable");
                        }
                        if (resourceId3 == -1 || resourceId4 == -1) {
                            throw new XmlPullParserException(xmlResourceParser.getPositionDescription() + ": <transition> tag requires 'fromId' & 'toId' attributes");
                        }
                        b bVar3 = eVar.f25236V;
                        int iA2 = bVar3.a(drawableF2);
                        long j8 = resourceId3;
                        long j9 = resourceId4;
                        long j10 = (j8 << 32) | j9;
                        long j11 = z8 ? 8589934592L : 0L;
                        long j12 = iA2;
                        bVar3.f25229I.a(Long.valueOf(j12 | j11), j10);
                        if (z8) {
                            bVar3.f25229I.a(Long.valueOf(j12 | 4294967296L | j11), (j9 << 32) | j8);
                        }
                        context2 = context;
                        theme2 = theme;
                        resources2 = resources;
                        i8 = 1;
                        z7 = false;
                    } else {
                        context2 = context;
                        theme2 = theme;
                        resources2 = resources;
                    }
                    i9 = 2;
                    i10 = 3;
                }
                i8 = 1;
                i9 = 2;
                i10 = 3;
            }
        }
        eVar.onStateChange(eVar.getState());
        return eVar;
    }

    @Override // p047g.h
    public final void d(b bVar) {
        this.f25277G = bVar;
        int i8 = this.f25283M;
        if (i8 >= 0) {
            Drawable drawableD = bVar.d(i8);
            this.f25279I = drawableD;
            if (drawableD != null) {
                b(drawableD);
            }
        }
        this.f25280J = null;
        this.f25290T = bVar;
        this.f25236V = bVar;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // p047g.h, android.graphics.drawable.Drawable
    public final void jumpToCurrentState() {
        super.jumpToCurrentState();
        AbstractC2617p2 abstractC2617p2 = this.f25237W;
        if (abstractC2617p2 != null) {
            abstractC2617p2.n();
            this.f25237W = null;
            c(this.f25238X);
            this.f25238X = -1;
            this.f25239Y = -1;
        }
    }

    @Override // p047g.j, p047g.h, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.f25240Z) {
            super.mutate();
            b bVar = this.f25236V;
            bVar.f25229I = bVar.f25229I.clone();
            bVar.f25230J = bVar.f25230J.clone();
            this.f25240Z = true;
        }
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f1  */
    @Override // p047g.j, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int iE;
        AbstractC2617p2 aVar;
        b bVar = this.f25236V;
        int[][] iArr2 = bVar.f25289H;
        int i8 = bVar.f25257h;
        boolean z7 = false;
        int i9 = 0;
        while (true) {
            if (i9 >= i8) {
                i9 = -1;
                break;
            }
            if (StateSet.stateSetMatches(iArr2[i9], iArr)) {
                break;
            }
            i9++;
        }
        if (i9 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = bVar.f25289H;
            int i10 = bVar.f25257h;
            i9 = 0;
            while (true) {
                if (i9 >= i10) {
                    i9 = -1;
                    break;
                }
                if (StateSet.stateSetMatches(iArr4[i9], iArr3)) {
                    break;
                }
                i9++;
            }
        }
        int i11 = this.f25283M;
        if (i9 != i11) {
            AbstractC2617p2 abstractC2617p2 = this.f25237W;
            if (abstractC2617p2 == null) {
                this.f25237W = null;
                this.f25239Y = -1;
                this.f25238X = -1;
                b bVar2 = this.f25236V;
                int iE2 = bVar2.e(i11);
                iE = bVar2.e(i9);
                if (iE == 0 && iE2 != 0) {
                    long j8 = ((long) iE) | (((long) iE2) << 32);
                    int iLongValue = (int) ((Long) bVar2.f25229I.e(j8)).longValue();
                    if (iLongValue >= 0) {
                        boolean z8 = (((Long) bVar2.f25229I.e(j8)).longValue() & 8589934592L) != 0;
                        c(iLongValue);
                        Object obj = this.f25279I;
                        if (obj instanceof AnimationDrawable) {
                            aVar = new c((AnimationDrawable) obj, (((Long) bVar2.f25229I.e(j8)).longValue() & 4294967296L) != 0, z8);
                        } else if (obj instanceof d) {
                            aVar = new a((d) obj, 1);
                        } else if (obj instanceof Animatable) {
                            aVar = new a((Animatable) obj, 0);
                        } else if (c(i9)) {
                            z7 = true;
                        }
                        aVar.m();
                        this.f25237W = aVar;
                        this.f25239Y = i11;
                        this.f25238X = i9;
                        z7 = true;
                    } else if (c(i9)) {
                        z7 = true;
                    }
                } else if (c(i9)) {
                    z7 = true;
                }
            } else {
                if (i9 != this.f25238X) {
                    if (i9 == this.f25239Y && abstractC2617p2.a()) {
                        abstractC2617p2.l();
                        this.f25238X = this.f25239Y;
                        this.f25239Y = i9;
                    } else {
                        i11 = this.f25238X;
                        abstractC2617p2.n();
                        this.f25237W = null;
                        this.f25239Y = -1;
                        this.f25238X = -1;
                        b bVar3 = this.f25236V;
                        int iE3 = bVar3.e(i11);
                        iE = bVar3.e(i9);
                        if (iE == 0) {
                            if (c(i9)) {
                            }
                        } else if (c(i9)) {
                        }
                    }
                }
                z7 = true;
            }
        }
        Drawable drawable = this.f25279I;
        return drawable != null ? z7 | drawable.setState(iArr) : z7;
    }

    @Override // p047g.h, android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z8) {
        boolean visible = super.setVisible(z7, z8);
        AbstractC2617p2 abstractC2617p2 = this.f25237W;
        if (abstractC2617p2 != null && (visible || z8)) {
            if (z7) {
                abstractC2617p2.m();
            } else {
                jumpToCurrentState();
            }
        }
        return visible;
    }
}
