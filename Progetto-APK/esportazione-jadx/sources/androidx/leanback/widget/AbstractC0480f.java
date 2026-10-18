package androidx.leanback.widget;

import O1.C0311j;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import okhttp3.internal.http2.Http2;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: renamed from: androidx.leanback.widget.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0480f extends RecyclerView {

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public final C0491q f9291r1;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public boolean f9292s1;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public boolean f9293t1;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public O1.H f9294u1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public O1.T f9295v1;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public int f9296w1;

    public AbstractC0480f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f9292s1 = true;
        this.f9293t1 = true;
        this.f9296w1 = 4;
        C0491q c0491q = new C0491q(this);
        this.f9291r1 = c0491q;
        setLayoutManager(c0491q);
        setPreserveFocusAfterLayout(false);
        setDescendantFocusability(262144);
        setHasFixedSize(true);
        setChildrenDrawingOrderEnabled(true);
        setWillNotDraw(true);
        setOverScrollMode(2);
        ((C0311j) getItemAnimator()).f5419g = false;
        super.setRecyclerListener(new C0475a(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public final View focusSearch(int i8) {
        if (isFocused()) {
            C0491q c0491q = this.f9291r1;
            View viewS = c0491q.s(c0491q.f9339B);
            if (viewS != null) {
                return focusSearch(viewS, i8);
            }
        }
        return super.focusSearch(i8);
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final int getChildDrawingOrder(int i8, int i9) {
        int iIndexOfChild;
        C0491q c0491q = this.f9291r1;
        View viewS = c0491q.s(c0491q.f9339B);
        if (viewS != null && i9 >= (iIndexOfChild = indexOfChild(viewS))) {
            return i9 < i8 + (-1) ? ((iIndexOfChild + i8) - 1) - i9 : iIndexOfChild;
        }
        return i9;
    }

    public int getExtraLayoutSpace() {
        return this.f9291r1.f9363Z;
    }

    public int getFocusScrollStrategy() {
        return this.f9291r1.f9359V;
    }

    @Deprecated
    public int getHorizontalMargin() {
        return this.f9291r1.f9351N;
    }

    public int getHorizontalSpacing() {
        return this.f9291r1.f9351N;
    }

    public int getInitialPrefetchItemCount() {
        return this.f9296w1;
    }

    public int getItemAlignmentOffset() {
        return ((C0494u) this.f9291r1.f9361X.f26084e).f9380b;
    }

    public float getItemAlignmentOffsetPercent() {
        return ((C0494u) this.f9291r1.f9361X.f26084e).f9381c;
    }

    public int getItemAlignmentViewId() {
        return ((C0494u) this.f9291r1.f9361X.f26084e).f9379a;
    }

    public InterfaceC0479e getOnUnhandledKeyListener() {
        return null;
    }

    public final int getSaveChildrenLimitNumber() {
        return this.f9291r1.f9365b0.f6994c;
    }

    public final int getSaveChildrenPolicy() {
        return this.f9291r1.f9365b0.f6993b;
    }

    public int getSelectedPosition() {
        return this.f9291r1.f9339B;
    }

    public int getSelectedSubPosition() {
        return this.f9291r1.f9340C;
    }

    @Deprecated
    public int getVerticalMargin() {
        return this.f9291r1.f9352O;
    }

    public int getVerticalSpacing() {
        return this.f9291r1.f9352O;
    }

    public int getWindowAlignment() {
        return ((Y) this.f9291r1.f9360W.f26084e).f9283f;
    }

    public int getWindowAlignmentOffset() {
        return ((Y) this.f9291r1.f9360W.f26084e).f9284g;
    }

    public float getWindowAlignmentOffsetPercent() {
        return ((Y) this.f9291r1.f9360W.f26084e).f9285h;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return this.f9293t1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public final void k0(int i8) {
        C0491q c0491q = this.f9291r1;
        if ((c0491q.f9378z & 64) != 0) {
            c0491q.y1(i8, false);
        } else {
            super.k0(i8);
        }
    }

    @Override // android.view.View
    public final void onFocusChanged(boolean z7, int i8, Rect rect) {
        super.onFocusChanged(z7, i8, rect);
        C0491q c0491q = this.f9291r1;
        if (!z7) {
            c0491q.getClass();
            return;
        }
        int i9 = c0491q.f9339B;
        while (true) {
            View viewS = c0491q.s(i9);
            if (viewS == null) {
                return;
            }
            if (viewS.getVisibility() == 0 && viewS.hasFocusable()) {
                viewS.requestFocus();
                return;
            }
            i9++;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i8, Rect rect) {
        int i9;
        int i10;
        int i11;
        C0491q c0491q = this.f9291r1;
        int i12 = c0491q.f9359V;
        boolean z7 = true;
        if (i12 != 1 && i12 != 2) {
            View viewS = c0491q.s(c0491q.f9339B);
            if (viewS != null) {
                return viewS.requestFocus(i8, rect);
            }
            return false;
        }
        int iX = c0491q.x();
        if ((i8 & 2) != 0) {
            i10 = iX;
            i9 = 0;
            i11 = 1;
        } else {
            i9 = iX - 1;
            i10 = -1;
            i11 = -1;
        }
        Y y7 = (Y) c0491q.f9360W.f26084e;
        int i13 = y7.f9287j;
        int i14 = ((y7.f9286i - i13) - y7.f9288k) + i13;
        while (i9 != i10) {
            View viewW = c0491q.w(i9);
            if (viewW.getVisibility() == 0 && c0491q.f9371s.d(viewW) >= i13 && c0491q.f9371s.b(viewW) <= i14 && viewW.requestFocus(i8, rect)) {
                return z7;
            }
            i9 += i11;
        }
        z7 = false;
        return z7;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x000d  */
    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i8) {
        int i9;
        C0491q c0491q = this.f9291r1;
        if (c0491q.f9370r == 0) {
            if (i8 == 1) {
                i9 = 262144;
            } else {
                i9 = 0;
            }
        } else if (i8 == 1) {
            i9 = 524288;
        } else {
            i9 = 0;
        }
        int i10 = c0491q.f9378z;
        if ((786432 & i10) == i9) {
            return;
        }
        c0491q.f9378z = i9 | (i10 & (-786433)) | 256;
        ((Y) c0491q.f9360W.f26083d).f9289l = i8 == 1;
    }

    public final void q0(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9809c);
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(4, false);
        boolean z8 = typedArrayObtainStyledAttributes.getBoolean(3, false);
        C0491q c0491q = this.f9291r1;
        c0491q.f9378z = (z7 ? 2048 : 0) | (c0491q.f9378z & (-6145)) | (z8 ? 4096 : 0);
        boolean z9 = typedArrayObtainStyledAttributes.getBoolean(6, true);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(5, true);
        c0491q.f9378z = (z9 ? 8192 : 0) | (c0491q.f9378z & (-24577)) | (z10 ? Http2.INITIAL_MAX_FRAME_SIZE : 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0));
        if (c0491q.f9370r == 1) {
            c0491q.f9352O = dimensionPixelSize;
            c0491q.f9353P = dimensionPixelSize;
        } else {
            c0491q.f9352O = dimensionPixelSize;
            c0491q.f9354Q = dimensionPixelSize;
        }
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0));
        if (c0491q.f9370r == 0) {
            c0491q.f9351N = dimensionPixelSize2;
            c0491q.f9353P = dimensionPixelSize2;
        } else {
            c0491q.f9351N = dimensionPixelSize2;
            c0491q.f9354Q = dimensionPixelSize2;
        }
        if (typedArrayObtainStyledAttributes.hasValue(0)) {
            setGravity(typedArrayObtainStyledAttributes.getInt(0, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAnimateChildLayout(boolean z7) {
        if (this.f9292s1 != z7) {
            this.f9292s1 = z7;
            if (z7) {
                super.setItemAnimator(this.f9294u1);
            } else {
                this.f9294u1 = getItemAnimator();
                super.setItemAnimator(null);
            }
        }
    }

    public void setChildrenVisibility(int i8) {
        C0491q c0491q = this.f9291r1;
        c0491q.f9345H = i8;
        if (i8 != -1) {
            int iX = c0491q.x();
            for (int i9 = 0; i9 < iX; i9++) {
                c0491q.w(i9).setVisibility(c0491q.f9345H);
            }
        }
    }

    public void setExtraLayoutSpace(int i8) {
        C0491q c0491q = this.f9291r1;
        int i9 = c0491q.f9363Z;
        if (i9 == i8) {
            return;
        }
        if (i9 < 0) {
            throw new IllegalArgumentException("ExtraLayoutSpace must >= 0");
        }
        c0491q.f9363Z = i8;
        c0491q.D0();
    }

    public void setFocusDrawingOrderEnabled(boolean z7) {
        super.setChildrenDrawingOrderEnabled(z7);
    }

    public void setFocusScrollStrategy(int i8) {
        if (i8 != 0 && i8 != 1 && i8 != 2) {
            throw new IllegalArgumentException("Invalid scrollStrategy");
        }
        this.f9291r1.f9359V = i8;
        requestLayout();
    }

    public final void setFocusSearchDisabled(boolean z7) {
        setDescendantFocusability(z7 ? 393216 : 262144);
        C0491q c0491q = this.f9291r1;
        c0491q.f9378z = (z7 ? 32768 : 0) | (c0491q.f9378z & (-32769));
    }

    public void setGravity(int i8) {
        this.f9291r1.f9355R = i8;
        requestLayout();
    }

    public void setHasOverlappingRendering(boolean z7) {
        this.f9293t1 = z7;
    }

    @Deprecated
    public void setHorizontalMargin(int i8) {
        setHorizontalSpacing(i8);
    }

    public void setHorizontalSpacing(int i8) {
        C0491q c0491q = this.f9291r1;
        if (c0491q.f9370r == 0) {
            c0491q.f9351N = i8;
            c0491q.f9353P = i8;
        } else {
            c0491q.f9351N = i8;
            c0491q.f9354Q = i8;
        }
        requestLayout();
    }

    public void setInitialPrefetchItemCount(int i8) {
        this.f9296w1 = i8;
    }

    public void setItemAlignmentOffset(int i8) {
        C0491q c0491q = this.f9291r1;
        ((C0494u) c0491q.f9361X.f26084e).f9380b = i8;
        c0491q.z1();
        requestLayout();
    }

    public void setItemAlignmentOffsetPercent(float f8) {
        C0491q c0491q = this.f9291r1;
        C0494u c0494u = (C0494u) c0491q.f9361X.f26084e;
        c0494u.getClass();
        if ((f8 < 0.0f || f8 > 100.0f) && f8 != -1.0f) {
            throw new IllegalArgumentException();
        }
        c0494u.f9381c = f8;
        c0491q.z1();
        requestLayout();
    }

    public void setItemAlignmentOffsetWithPadding(boolean z7) {
        C0491q c0491q = this.f9291r1;
        ((C0494u) c0491q.f9361X.f26084e).f9382d = z7;
        c0491q.z1();
        requestLayout();
    }

    public void setItemAlignmentViewId(int i8) {
        C0491q c0491q = this.f9291r1;
        ((C0494u) c0491q.f9361X.f26084e).f9379a = i8;
        c0491q.z1();
    }

    @Deprecated
    public void setItemMargin(int i8) {
        setItemSpacing(i8);
    }

    public void setItemSpacing(int i8) {
        C0491q c0491q = this.f9291r1;
        c0491q.f9351N = i8;
        c0491q.f9352O = i8;
        c0491q.f9354Q = i8;
        c0491q.f9353P = i8;
        requestLayout();
    }

    public void setLayoutEnabled(boolean z7) {
        C0491q c0491q = this.f9291r1;
        int i8 = c0491q.f9378z;
        if (((i8 & IMediaList.Event.ItemAdded) != 0) != z7) {
            c0491q.f9378z = (i8 & (-513)) | (z7 ? IMediaList.Event.ItemAdded : 0);
            c0491q.D0();
        }
    }

    public void setOnChildLaidOutListener(InterfaceC0497x interfaceC0497x) {
        this.f9291r1.getClass();
    }

    public void setOnChildSelectedListener(InterfaceC0498y interfaceC0498y) {
        this.f9291r1.getClass();
    }

    public void setOnChildViewHolderSelectedListener(z zVar) {
        C0491q c0491q = this.f9291r1;
        if (zVar == null) {
            c0491q.f9338A = null;
            return;
        }
        ArrayList arrayList = c0491q.f9338A;
        if (arrayList == null) {
            c0491q.f9338A = new ArrayList();
        } else {
            arrayList.clear();
        }
        c0491q.f9338A.add(zVar);
    }

    public void setOnKeyInterceptListener(InterfaceC0476b interfaceC0476b) {
    }

    public void setOnMotionInterceptListener(InterfaceC0477c interfaceC0477c) {
    }

    public void setOnTouchInterceptListener(InterfaceC0478d interfaceC0478d) {
    }

    public void setOnUnhandledKeyListener(InterfaceC0479e interfaceC0479e) {
    }

    public void setPruneChild(boolean z7) {
        C0491q c0491q = this.f9291r1;
        int i8 = c0491q.f9378z;
        if (((i8 & 65536) != 0) != z7) {
            c0491q.f9378z = (i8 & (-65537)) | (z7 ? 65536 : 0);
            if (z7) {
                c0491q.D0();
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void setRecyclerListener(O1.T t7) {
        this.f9295v1 = t7;
    }

    public final void setSaveChildrenLimitNumber(int i8) {
        V.b bVar = this.f9291r1.f9365b0;
        bVar.f6994c = i8;
        bVar.d();
    }

    public final void setSaveChildrenPolicy(int i8) {
        V.b bVar = this.f9291r1.f9365b0;
        bVar.f6993b = i8;
        bVar.d();
    }

    public void setScrollEnabled(boolean z7) {
        int i8;
        C0491q c0491q = this.f9291r1;
        int i9 = c0491q.f9378z;
        if (((i9 & 131072) != 0) != z7) {
            int i10 = (i9 & (-131073)) | (z7 ? 131072 : 0);
            c0491q.f9378z = i10;
            if ((i10 & 131072) == 0 || c0491q.f9359V != 0 || (i8 = c0491q.f9339B) == -1) {
                return;
            }
            c0491q.u1(i8, c0491q.f9340C, c0491q.f9344G, true);
        }
    }

    public void setSelectedPosition(int i8) {
        this.f9291r1.y1(i8, false);
    }

    public void setSelectedPositionSmooth(int i8) {
        this.f9291r1.y1(i8, true);
    }

    @Deprecated
    public void setVerticalMargin(int i8) {
        setVerticalSpacing(i8);
    }

    public void setVerticalSpacing(int i8) {
        C0491q c0491q = this.f9291r1;
        if (c0491q.f9370r == 1) {
            c0491q.f9352O = i8;
            c0491q.f9353P = i8;
        } else {
            c0491q.f9352O = i8;
            c0491q.f9354Q = i8;
        }
        requestLayout();
    }

    public void setWindowAlignment(int i8) {
        ((Y) this.f9291r1.f9360W.f26084e).f9283f = i8;
        requestLayout();
    }

    public void setWindowAlignmentOffset(int i8) {
        ((Y) this.f9291r1.f9360W.f26084e).f9284g = i8;
        requestLayout();
    }

    public void setWindowAlignmentOffsetPercent(float f8) {
        Y y7 = (Y) this.f9291r1.f9360W.f26084e;
        y7.getClass();
        if ((f8 < 0.0f || f8 > 100.0f) && f8 != -1.0f) {
            throw new IllegalArgumentException();
        }
        y7.f9285h = f8;
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverHighEdge(boolean z7) {
        Y y7 = (Y) this.f9291r1.f9360W.f26084e;
        y7.f9282e = z7 ? y7.f9282e | 2 : y7.f9282e & (-3);
        requestLayout();
    }

    public void setWindowAlignmentPreferKeyLineOverLowEdge(boolean z7) {
        Y y7 = (Y) this.f9291r1.f9360W.f26084e;
        y7.f9282e = z7 ? y7.f9282e | 1 : y7.f9282e & (-2);
        requestLayout();
    }
}
