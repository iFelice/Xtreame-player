package com.google.android.material.tabs;

import J6.r;
import M.d;
import N.N;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.widget.M;
import androidx.viewpager.widget.ViewPager;
import com.google.android.gms.internal.ads.Cw;
import e7.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import p003a2.a;
import p003a2.b;
import p086l.J0;
import p145s4.e;
import p145s4.f;
import p145s4.g;
import p145s4.h;
import p145s4.i;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
@b
public class TabLayout extends HorizontalScrollView {

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final d f24156x0 = new d(16);

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f24157G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public f f24158H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final RectF f24159I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final e f24160J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f24161K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f24162L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f24163M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f24164N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f24165O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ColorStateList f24166P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ColorStateList f24167Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ColorStateList f24168R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public Drawable f24169S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final PorterDuff.Mode f24170T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final float f24171U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final float f24172V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f24173W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f24174a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final int f24175b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f24176c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f24177d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f24178e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f24179f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final int f24180g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public int f24181h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public int f24182i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f24183j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f24184k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f24185l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public p145s4.b f24186m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final ArrayList f24187n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public i f24188o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public ValueAnimator f24189p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ViewPager f24190q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public a f24191r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public J0 f24192s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public g f24193t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public p145s4.a f24194u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f24195v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final p156u.e f24196w0;

    public TabLayout(Context context, AttributeSet attributeSet) {
        int resourceId;
        Drawable drawableH;
        super(context, attributeSet, R.attr.tabStyle);
        this.f24157G = new ArrayList();
        this.f24159I = new RectF();
        this.f24174a0 = com.google.android.gms.common.api.d.API_PRIORITY_OTHER;
        this.f24187n0 = new ArrayList();
        this.f24196w0 = new p156u.e(12, 1);
        setHorizontalScrollBarEnabled(false);
        e eVar = new e(this, context);
        this.f24160J = eVar;
        super.addView(eVar, 0, new FrameLayout.LayoutParams(-2, -1));
        TypedArray typedArrayB = p121p4.b.b(context, attributeSet, p060h4.a.f25414g, R.attr.tabStyle, R.style.Widget_Design_TabLayout, 22);
        int dimensionPixelSize = typedArrayB.getDimensionPixelSize(10, -1);
        if (eVar.f30098G != dimensionPixelSize) {
            eVar.f30098G = dimensionPixelSize;
            WeakHashMap weakHashMap = N.f4843a;
            eVar.postInvalidateOnAnimation();
        }
        int color = typedArrayB.getColor(7, 0);
        Paint paint = eVar.f30099H;
        if (paint.getColor() != color) {
            paint.setColor(color);
            WeakHashMap weakHashMap2 = N.f4843a;
            eVar.postInvalidateOnAnimation();
        }
        setSelectedTabIndicator((!typedArrayB.hasValue(5) || (resourceId = typedArrayB.getResourceId(5, 0)) == 0 || (drawableH = r.h(context, resourceId)) == null) ? typedArrayB.getDrawable(5) : drawableH);
        setSelectedTabIndicatorGravity(typedArrayB.getInt(9, 0));
        setTabIndicatorFullWidth(typedArrayB.getBoolean(8, true));
        int dimensionPixelSize2 = typedArrayB.getDimensionPixelSize(15, 0);
        this.f24164N = dimensionPixelSize2;
        this.f24163M = dimensionPixelSize2;
        this.f24162L = dimensionPixelSize2;
        this.f24161K = dimensionPixelSize2;
        this.f24161K = typedArrayB.getDimensionPixelSize(18, dimensionPixelSize2);
        this.f24162L = typedArrayB.getDimensionPixelSize(19, dimensionPixelSize2);
        this.f24163M = typedArrayB.getDimensionPixelSize(17, dimensionPixelSize2);
        this.f24164N = typedArrayB.getDimensionPixelSize(16, dimensionPixelSize2);
        int resourceId2 = typedArrayB.getResourceId(22, R.style.TextAppearance_Design_Tab);
        this.f24165O = resourceId2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(resourceId2, p031e.a.f24708w);
        try {
            this.f24171U = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            this.f24166P = Cw.l(context, typedArrayObtainStyledAttributes, 3);
            typedArrayObtainStyledAttributes.recycle();
            if (typedArrayB.hasValue(23)) {
                this.f24166P = Cw.l(context, typedArrayB, 23);
            }
            if (typedArrayB.hasValue(21)) {
                this.f24166P = new ColorStateList(new int[][]{HorizontalScrollView.SELECTED_STATE_SET, HorizontalScrollView.EMPTY_STATE_SET}, new int[]{typedArrayB.getColor(21, 0), this.f24166P.getDefaultColor()});
            }
            this.f24167Q = Cw.l(context, typedArrayB, 3);
            this.f24170T = Cw.m(typedArrayB.getInt(4, -1), null);
            this.f24168R = Cw.l(context, typedArrayB, 20);
            this.f24180g0 = typedArrayB.getInt(6, 300);
            this.f24175b0 = typedArrayB.getDimensionPixelSize(13, -1);
            this.f24176c0 = typedArrayB.getDimensionPixelSize(12, -1);
            this.f24173W = typedArrayB.getResourceId(0, 0);
            this.f24178e0 = typedArrayB.getDimensionPixelSize(1, 0);
            this.f24182i0 = typedArrayB.getInt(14, 1);
            this.f24179f0 = typedArrayB.getInt(2, 0);
            this.f24183j0 = typedArrayB.getBoolean(11, false);
            this.f24185l0 = typedArrayB.getBoolean(24, false);
            typedArrayB.recycle();
            Resources resources = getResources();
            this.f24172V = resources.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
            this.f24177d0 = resources.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
            b();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    private int getDefaultHeight() {
        ArrayList arrayList = this.f24157G;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            f fVar = (f) arrayList.get(i8);
            if (fVar != null && fVar.f30108a != null && !TextUtils.isEmpty(fVar.f30109b)) {
                if (!this.f24183j0) {
                    return 72;
                }
            }
        }
        return 48;
    }

    private int getTabMinWidth() {
        int i8 = this.f24175b0;
        if (i8 != -1) {
            return i8;
        }
        if (this.f24182i0 == 0) {
            return this.f24177d0;
        }
        return 0;
    }

    private int getTabScrollRange() {
        return Math.max(0, ((this.f24160J.getWidth() - getWidth()) - getPaddingLeft()) - getPaddingRight());
    }

    private void setSelectedTabView(int i8) {
        e eVar = this.f24160J;
        int childCount = eVar.getChildCount();
        if (i8 < childCount) {
            int i9 = 0;
            while (i9 < childCount) {
                View childAt = eVar.getChildAt(i9);
                boolean z7 = true;
                childAt.setSelected(i9 == i8);
                if (i9 != i8) {
                    z7 = false;
                }
                childAt.setActivated(z7);
                i9++;
            }
        }
    }

    public final void a(int i8) {
        if (i8 == -1) {
            return;
        }
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap = N.f4843a;
            if (isLaidOut()) {
                e eVar = this.f24160J;
                int childCount = eVar.getChildCount();
                for (int i9 = 0; i9 < childCount; i9++) {
                    if (eVar.getChildAt(i9).getWidth() > 0) {
                    }
                }
                int scrollX = getScrollX();
                int iC = c(i8, 0.0f);
                if (scrollX != iC) {
                    e();
                    this.f24189p0.setIntValues(scrollX, iC);
                    this.f24189p0.start();
                }
                eVar.a(i8, this.f24180g0);
                return;
            }
        }
        i(i8, 0.0f, true, true);
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public final void b() {
        int iMax = this.f24182i0 == 0 ? Math.max(0, this.f24178e0 - this.f24161K) : 0;
        WeakHashMap weakHashMap = N.f4843a;
        e eVar = this.f24160J;
        eVar.setPaddingRelative(iMax, 0, 0, 0);
        int i8 = this.f24182i0;
        if (i8 == 0) {
            eVar.setGravity(8388611);
        } else if (i8 == 1) {
            eVar.setGravity(1);
        }
        k(true);
    }

    public final int c(int i8, float f8) {
        if (this.f24182i0 != 0) {
            return 0;
        }
        e eVar = this.f24160J;
        View childAt = eVar.getChildAt(i8);
        int i9 = i8 + 1;
        View childAt2 = i9 < eVar.getChildCount() ? eVar.getChildAt(i9) : null;
        int width = childAt != null ? childAt.getWidth() : 0;
        int width2 = childAt2 != null ? childAt2.getWidth() : 0;
        int left = ((width / 2) + childAt.getLeft()) - (getWidth() / 2);
        int i10 = (int) ((width + width2) * 0.5f * f8);
        WeakHashMap weakHashMap = N.f4843a;
        return getLayoutDirection() == 0 ? left + i10 : left - i10;
    }

    public final int d(int i8) {
        return Math.round(getResources().getDisplayMetrics().density * i8);
    }

    public final void e() {
        if (this.f24189p0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f24189p0 = valueAnimator;
            valueAnimator.setInterpolator(p068i4.a.f25574a);
            this.f24189p0.setDuration(this.f24180g0);
            this.f24189p0.addUpdateListener(new M(this, 2));
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void f() {
        p156u.e eVar;
        f fVar;
        d dVar;
        int currentItem;
        String string;
        e eVar2 = this.f24160J;
        int childCount = eVar2.getChildCount() - 1;
        while (true) {
            eVar = this.f24196w0;
            fVar = null;
            if (childCount < 0) {
                break;
            }
            h hVar = (h) eVar2.getChildAt(childCount);
            eVar2.removeViewAt(childCount);
            if (hVar != null) {
                if (hVar.f30119G != null) {
                    hVar.f30119G = null;
                    hVar.a();
                }
                hVar.setSelected(false);
                eVar.a(hVar);
            }
            requestLayout();
            childCount--;
        }
        ArrayList arrayList = this.f24157G;
        Iterator it = arrayList.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            dVar = f24156x0;
            if (!zHasNext) {
                break;
            }
            f fVar2 = (f) it.next();
            it.remove();
            fVar2.f30113f = null;
            fVar2.f30114g = null;
            fVar2.f30108a = null;
            fVar2.f30109b = null;
            fVar2.f30110c = null;
            fVar2.f30111d = -1;
            fVar2.f30112e = null;
            dVar.a(fVar2);
        }
        this.f24158H = null;
        a aVar = this.f24191r0;
        if (aVar != null) {
            int iC = aVar.c();
            for (int i8 = 0; i8 < iC; i8++) {
                f fVar3 = (f) dVar.h();
                if (fVar3 == null) {
                    fVar3 = new f();
                    fVar3.f30111d = -1;
                }
                fVar3.f30113f = this;
                h hVar2 = eVar != null ? (h) eVar.h() : null;
                if (hVar2 == null) {
                    hVar2 = new h(this, getContext());
                }
                if (fVar3 != hVar2.f30119G) {
                    hVar2.f30119G = fVar3;
                    hVar2.a();
                }
                hVar2.setFocusable(true);
                hVar2.setMinimumWidth(getTabMinWidth());
                if (TextUtils.isEmpty(fVar3.f30110c)) {
                    hVar2.setContentDescription(fVar3.f30109b);
                } else {
                    hVar2.setContentDescription(fVar3.f30110c);
                }
                fVar3.f30114g = hVar2;
                e7.d dVar2 = ((c) this.f24191r0).f24880g;
                Resources resourcesO = dVar2.o();
                int iIntValue = ((Integer) dVar2.f24883T0.get(i8)).intValue();
                if (iIntValue == 1) {
                    string = resourcesO.getString(R.string.track_selection_title_audio);
                } else if (iIntValue == 2) {
                    string = resourcesO.getString(R.string.track_selection_title_video);
                } else if (iIntValue == 3) {
                    string = resourcesO.getString(R.string.track_selection_title_text);
                } else {
                    if (iIntValue != 4) {
                        throw new IllegalArgumentException();
                    }
                    string = resourcesO.getString(R.string.track_selection_title_image);
                }
                if (TextUtils.isEmpty(fVar3.f30110c) && !TextUtils.isEmpty(string)) {
                    fVar3.f30114g.setContentDescription(string);
                }
                fVar3.f30109b = string;
                h hVar3 = fVar3.f30114g;
                if (hVar3 != null) {
                    hVar3.a();
                }
                int size = arrayList.size();
                if (fVar3.f30113f != this) {
                    throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
                }
                fVar3.f30111d = size;
                arrayList.add(size, fVar3);
                int size2 = arrayList.size();
                while (true) {
                    size++;
                    if (size >= size2) {
                        break;
                    } else {
                        ((f) arrayList.get(size)).f30111d = size;
                    }
                }
                h hVar4 = fVar3.f30114g;
                int i9 = fVar3.f30111d;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                if (this.f24182i0 == 1 && this.f24179f0 == 0) {
                    layoutParams.width = 0;
                    layoutParams.weight = 1.0f;
                } else {
                    layoutParams.width = -2;
                    layoutParams.weight = 0.0f;
                }
                eVar2.addView(hVar4, i9, layoutParams);
            }
            ViewPager viewPager = this.f24190q0;
            if (viewPager == null || iC <= 0 || (currentItem = viewPager.getCurrentItem()) == getSelectedTabPosition() || currentItem >= getTabCount()) {
                return;
            }
            if (currentItem >= 0 && currentItem < getTabCount()) {
                fVar = (f) arrayList.get(currentItem);
            }
            g(fVar, true);
        }
    }

    public final void g(f fVar, boolean z7) {
        f fVar2 = this.f24158H;
        ArrayList arrayList = this.f24187n0;
        if (fVar2 == fVar) {
            if (fVar2 != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((p145s4.b) arrayList.get(size)).getClass();
                }
                a(fVar.f30111d);
                return;
            }
            return;
        }
        int i8 = fVar != null ? fVar.f30111d : -1;
        if (z7) {
            if ((fVar2 == null || fVar2.f30111d == -1) && i8 != -1) {
                i(i8, 0.0f, true, true);
            } else {
                a(i8);
            }
            if (i8 != -1) {
                setSelectedTabView(i8);
            }
        }
        this.f24158H = fVar;
        if (fVar2 != null) {
            for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                ((p145s4.b) arrayList.get(size2)).getClass();
            }
        }
        if (fVar != null) {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                i iVar = (i) ((p145s4.b) arrayList.get(size3));
                iVar.getClass();
                iVar.f30128a.setCurrentItem(fVar.f30111d);
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    public int getSelectedTabPosition() {
        f fVar = this.f24158H;
        if (fVar != null) {
            return fVar.f30111d;
        }
        return -1;
    }

    public int getTabCount() {
        return this.f24157G.size();
    }

    public int getTabGravity() {
        return this.f24179f0;
    }

    public ColorStateList getTabIconTint() {
        return this.f24167Q;
    }

    public int getTabIndicatorGravity() {
        return this.f24181h0;
    }

    public int getTabMaxWidth() {
        return this.f24174a0;
    }

    public int getTabMode() {
        return this.f24182i0;
    }

    public ColorStateList getTabRippleColor() {
        return this.f24168R;
    }

    public Drawable getTabSelectedIndicator() {
        return this.f24169S;
    }

    public ColorStateList getTabTextColors() {
        return this.f24166P;
    }

    public final void h(a aVar, boolean z7) {
        J0 j8;
        a aVar2 = this.f24191r0;
        if (aVar2 != null && (j8 = this.f24192s0) != null) {
            aVar2.f8632a.unregisterObserver(j8);
        }
        this.f24191r0 = aVar;
        if (z7 && aVar != null) {
            if (this.f24192s0 == null) {
                this.f24192s0 = new J0(this, 2);
            }
            aVar.f8632a.registerObserver(this.f24192s0);
        }
        f();
    }

    public final void i(int i8, float f8, boolean z7, boolean z8) {
        int iRound = Math.round(i8 + f8);
        if (iRound >= 0) {
            e eVar = this.f24160J;
            if (iRound >= eVar.getChildCount()) {
                return;
            }
            if (z8) {
                ValueAnimator valueAnimator = eVar.f30106O;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    eVar.f30106O.cancel();
                }
                eVar.f30101J = i8;
                eVar.f30102K = f8;
                eVar.c();
            }
            ValueAnimator valueAnimator2 = this.f24189p0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.f24189p0.cancel();
            }
            scrollTo(c(i8, f8), 0);
            if (z7) {
                setSelectedTabView(iRound);
            }
        }
    }

    public final void j(ViewPager viewPager, boolean z7) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ViewPager viewPager2 = this.f24190q0;
        if (viewPager2 != null) {
            g gVar = this.f24193t0;
            if (gVar != null && (arrayList2 = viewPager2.f9767z0) != null) {
                arrayList2.remove(gVar);
            }
            p145s4.a aVar = this.f24194u0;
            if (aVar != null && (arrayList = this.f24190q0.f9722B0) != null) {
                arrayList.remove(aVar);
            }
        }
        i iVar = this.f24188o0;
        ArrayList arrayList3 = this.f24187n0;
        if (iVar != null) {
            arrayList3.remove(iVar);
            this.f24188o0 = null;
        }
        if (viewPager != null) {
            this.f24190q0 = viewPager;
            if (this.f24193t0 == null) {
                this.f24193t0 = new g(this);
            }
            g gVar2 = this.f24193t0;
            gVar2.f30117c = 0;
            gVar2.f30116b = 0;
            if (viewPager.f9767z0 == null) {
                viewPager.f9767z0 = new ArrayList();
            }
            viewPager.f9767z0.add(gVar2);
            i iVar2 = new i(viewPager);
            this.f24188o0 = iVar2;
            if (!arrayList3.contains(iVar2)) {
                arrayList3.add(iVar2);
            }
            a adapter = viewPager.getAdapter();
            if (adapter != null) {
                h(adapter, true);
            }
            if (this.f24194u0 == null) {
                this.f24194u0 = new p145s4.a(this);
            }
            p145s4.a aVar2 = this.f24194u0;
            aVar2.f30089a = true;
            if (viewPager.f9722B0 == null) {
                viewPager.f9722B0 = new ArrayList();
            }
            viewPager.f9722B0.add(aVar2);
            i(viewPager.getCurrentItem(), 0.0f, true, true);
        } else {
            this.f24190q0 = null;
            h(null, false);
        }
        this.f24195v0 = z7;
    }

    public final void k(boolean z7) {
        int i8 = 0;
        while (true) {
            e eVar = this.f24160J;
            if (i8 >= eVar.getChildCount()) {
                return;
            }
            View childAt = eVar.getChildAt(i8);
            childAt.setMinimumWidth(getTabMinWidth());
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            if (this.f24182i0 == 1 && this.f24179f0 == 0) {
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
            } else {
                layoutParams.width = -2;
                layoutParams.weight = 0.0f;
            }
            if (z7) {
                childAt.requestLayout();
            }
            i8++;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f24190q0 == null) {
            ViewParent parent = getParent();
            if (parent instanceof ViewPager) {
                j((ViewPager) parent, true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f24195v0) {
            setupWithViewPager(null);
            this.f24195v0 = false;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        h hVar;
        Drawable drawable;
        int i8 = 0;
        while (true) {
            e eVar = this.f24160J;
            if (i8 >= eVar.getChildCount()) {
                super.onDraw(canvas);
                return;
            }
            View childAt = eVar.getChildAt(i8);
            if ((childAt instanceof h) && (drawable = (hVar = (h) childAt).f30125M) != null) {
                drawable.setBounds(hVar.getLeft(), hVar.getTop(), hVar.getRight(), hVar.getBottom());
                hVar.f30125M.draw(canvas);
            }
            i8++;
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        int paddingBottom = getPaddingBottom() + getPaddingTop() + d(getDefaultHeight());
        int mode = View.MeasureSpec.getMode(i9);
        if (mode == Integer.MIN_VALUE) {
            i9 = View.MeasureSpec.makeMeasureSpec(Math.min(paddingBottom, View.MeasureSpec.getSize(i9)), 1073741824);
        } else if (mode == 0) {
            i9 = View.MeasureSpec.makeMeasureSpec(paddingBottom, 1073741824);
        }
        int size = View.MeasureSpec.getSize(i8);
        if (View.MeasureSpec.getMode(i8) != 0) {
            int iD = this.f24176c0;
            if (iD <= 0) {
                iD = size - d(56);
            }
            this.f24174a0 = iD;
        }
        super.onMeasure(i8, i9);
        if (getChildCount() == 1) {
            View childAt = getChildAt(0);
            int i10 = this.f24182i0;
            if (i10 != 0) {
                if (i10 != 1 || childAt.getMeasuredWidth() == getMeasuredWidth()) {
                    return;
                }
            } else if (childAt.getMeasuredWidth() >= getMeasuredWidth()) {
                return;
            }
            childAt.measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), ViewGroup.getChildMeasureSpec(i9, getPaddingBottom() + getPaddingTop(), childAt.getLayoutParams().height));
        }
    }

    public void setInlineLabel(boolean z7) {
        if (this.f24183j0 == z7) {
            return;
        }
        this.f24183j0 = z7;
        int i8 = 0;
        while (true) {
            e eVar = this.f24160J;
            if (i8 >= eVar.getChildCount()) {
                b();
                return;
            }
            View childAt = eVar.getChildAt(i8);
            if (childAt instanceof h) {
                h hVar = (h) childAt;
                hVar.setOrientation(!hVar.f30127O.f24183j0 ? 1 : 0);
                TextView textView = hVar.f30123K;
                if (textView == null && hVar.f30124L == null) {
                    hVar.c(hVar.f30120H, hVar.f30121I);
                } else {
                    hVar.c(textView, hVar.f30124L);
                }
            }
            i8++;
        }
    }

    public void setInlineLabelResource(int i8) {
        setInlineLabel(getResources().getBoolean(i8));
    }

    @Deprecated
    public void setOnTabSelectedListener(p145s4.b bVar) {
        p145s4.b bVar2 = this.f24186m0;
        ArrayList arrayList = this.f24187n0;
        if (bVar2 != null) {
            arrayList.remove(bVar2);
        }
        this.f24186m0 = bVar;
        if (bVar == null || arrayList.contains(bVar)) {
            return;
        }
        arrayList.add(bVar);
    }

    public void setScrollAnimatorListener(Animator.AnimatorListener animatorListener) {
        e();
        this.f24189p0.addListener(animatorListener);
    }

    public void setSelectedTabIndicator(Drawable drawable) {
        if (this.f24169S != drawable) {
            this.f24169S = drawable;
            WeakHashMap weakHashMap = N.f4843a;
            this.f24160J.postInvalidateOnAnimation();
        }
    }

    public void setSelectedTabIndicatorColor(int i8) {
        e eVar = this.f24160J;
        Paint paint = eVar.f30099H;
        if (paint.getColor() != i8) {
            paint.setColor(i8);
            WeakHashMap weakHashMap = N.f4843a;
            eVar.postInvalidateOnAnimation();
        }
    }

    public void setSelectedTabIndicatorGravity(int i8) {
        if (this.f24181h0 != i8) {
            this.f24181h0 = i8;
            WeakHashMap weakHashMap = N.f4843a;
            this.f24160J.postInvalidateOnAnimation();
        }
    }

    @Deprecated
    public void setSelectedTabIndicatorHeight(int i8) {
        e eVar = this.f24160J;
        if (eVar.f30098G != i8) {
            eVar.f30098G = i8;
            WeakHashMap weakHashMap = N.f4843a;
            eVar.postInvalidateOnAnimation();
        }
    }

    public void setTabGravity(int i8) {
        if (this.f24179f0 != i8) {
            this.f24179f0 = i8;
            b();
        }
    }

    public void setTabIconTint(ColorStateList colorStateList) {
        if (this.f24167Q != colorStateList) {
            this.f24167Q = colorStateList;
            ArrayList arrayList = this.f24157G;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                h hVar = ((f) arrayList.get(i8)).f30114g;
                if (hVar != null) {
                    hVar.a();
                }
            }
        }
    }

    public void setTabIconTintResource(int i8) {
        setTabIconTint(r.g(getContext(), i8));
    }

    public void setTabIndicatorFullWidth(boolean z7) {
        this.f24184k0 = z7;
        WeakHashMap weakHashMap = N.f4843a;
        this.f24160J.postInvalidateOnAnimation();
    }

    public void setTabMode(int i8) {
        if (i8 != this.f24182i0) {
            this.f24182i0 = i8;
            b();
        }
    }

    public void setTabRippleColor(ColorStateList colorStateList) {
        if (this.f24168R == colorStateList) {
            return;
        }
        this.f24168R = colorStateList;
        int i8 = 0;
        while (true) {
            e eVar = this.f24160J;
            if (i8 >= eVar.getChildCount()) {
                return;
            }
            View childAt = eVar.getChildAt(i8);
            if (childAt instanceof h) {
                Context context = getContext();
                int i9 = h.f30118P;
                ((h) childAt).b(context);
            }
            i8++;
        }
    }

    public void setTabRippleColorResource(int i8) {
        setTabRippleColor(r.g(getContext(), i8));
    }

    public void setTabTextColors(ColorStateList colorStateList) {
        if (this.f24166P != colorStateList) {
            this.f24166P = colorStateList;
            ArrayList arrayList = this.f24157G;
            int size = arrayList.size();
            for (int i8 = 0; i8 < size; i8++) {
                h hVar = ((f) arrayList.get(i8)).f30114g;
                if (hVar != null) {
                    hVar.a();
                }
            }
        }
    }

    @Deprecated
    public void setTabsFromPagerAdapter(a aVar) {
        h(aVar, false);
    }

    public void setUnboundedRipple(boolean z7) {
        if (this.f24185l0 == z7) {
            return;
        }
        this.f24185l0 = z7;
        int i8 = 0;
        while (true) {
            e eVar = this.f24160J;
            if (i8 >= eVar.getChildCount()) {
                return;
            }
            View childAt = eVar.getChildAt(i8);
            if (childAt instanceof h) {
                Context context = getContext();
                int i9 = h.f30118P;
                ((h) childAt).b(context);
            }
            i8++;
        }
    }

    public void setUnboundedRippleResource(int i8) {
        setUnboundedRipple(getResources().getBoolean(i8));
    }

    public void setupWithViewPager(ViewPager viewPager) {
        j(viewPager, false);
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return getTabScrollRange() > 0;
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i8) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return generateDefaultLayoutParams();
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup
    public final void addView(View view, int i8, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    @Override // android.widget.HorizontalScrollView, android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        throw new IllegalArgumentException("Only TabItem instances can be added to TabLayout");
    }

    public void setSelectedTabIndicator(int i8) {
        if (i8 != 0) {
            setSelectedTabIndicator(r.h(getContext(), i8));
        } else {
            setSelectedTabIndicator((Drawable) null);
        }
    }
}
