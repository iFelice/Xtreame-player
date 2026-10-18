package p079k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.google.protobuf.U2;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import p039f.S;
import p086l.C3066z0;
import p086l.G;
import p086l.O0;
import p086l.P0;
import p086l.R0;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class i extends w implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f25780H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f25781I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f25782J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f25783K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f25784L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Handler f25785M;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC3013e f25788P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final ViewOnAttachStateChangeListenerC3014f f25789Q;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public View f25793U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public View f25794V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f25795W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f25796X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f25797Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f25798Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f25799a0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f25801c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public z f25802d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public ViewTreeObserver f25803e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public PopupWindow.OnDismissListener f25804f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f25805g0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final ArrayList f25786N = new ArrayList();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final ArrayList f25787O = new ArrayList();

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final S f25790R = new S(this, 2);

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f25791S = 0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f25792T = 0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f25800b0 = false;

    public i(Context context, View view, int i8, int i9, boolean z7) {
        int i10 = 0;
        this.f25788P = new ViewTreeObserverOnGlobalLayoutListenerC3013e(this, i10);
        this.f25789Q = new ViewOnAttachStateChangeListenerC3014f(this, i10);
        this.f25780H = context;
        this.f25793U = view;
        this.f25782J = i8;
        this.f25783K = i9;
        this.f25784L = z7;
        this.f25795W = view.getLayoutDirection() != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f25781I = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f25785M = new Handler();
    }

    @Override // p079k.E
    public final boolean a() {
        ArrayList arrayList = this.f25787O;
        return arrayList.size() > 0 && ((h) arrayList.get(0)).f25777a.f26154e0.isShowing();
    }

    @Override // p079k.A
    public final boolean c(G g8) {
        for (h hVar : this.f25787O) {
            if (g8 == hVar.f25778b) {
                hVar.f25777a.f26132I.requestFocus();
                return true;
            }
        }
        if (!g8.hasVisibleItems()) {
            return false;
        }
        l(g8);
        z zVar = this.f25802d0;
        if (zVar != null) {
            zVar.o(g8);
        }
        return true;
    }

    @Override // p079k.A
    public final void d(o oVar, boolean z7) {
        ArrayList arrayList = this.f25787O;
        int size = arrayList.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size) {
                i8 = -1;
                break;
            } else if (oVar == ((h) arrayList.get(i8)).f25778b) {
                break;
            } else {
                i8++;
            }
        }
        if (i8 < 0) {
            return;
        }
        int i9 = i8 + 1;
        if (i9 < arrayList.size()) {
            ((h) arrayList.get(i9)).f25778b.c(false);
        }
        h hVar = (h) arrayList.remove(i8);
        hVar.f25778b.r(this);
        boolean z8 = this.f25805g0;
        R0 r7 = hVar.f25777a;
        if (z8) {
            if (Build.VERSION.SDK_INT >= 23) {
                O0.b(r7.f26154e0, null);
            } else {
                r7.getClass();
            }
            r7.f26154e0.setAnimationStyle(0);
        }
        r7.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f25795W = ((h) arrayList.get(size2 - 1)).f25779c;
        } else {
            this.f25795W = this.f25793U.getLayoutDirection() == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z7) {
                ((h) arrayList.get(0)).f25778b.c(false);
                return;
            }
            return;
        }
        dismiss();
        z zVar = this.f25802d0;
        if (zVar != null) {
            zVar.d(oVar, true);
        }
        ViewTreeObserver viewTreeObserver = this.f25803e0;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f25803e0.removeGlobalOnLayoutListener(this.f25788P);
            }
            this.f25803e0 = null;
        }
        this.f25794V.removeOnAttachStateChangeListener(this.f25789Q);
        this.f25804f0.onDismiss();
    }

    @Override // p079k.E
    public final void dismiss() {
        ArrayList arrayList = this.f25787O;
        int size = arrayList.size();
        if (size > 0) {
            h[] hVarArr = (h[]) arrayList.toArray(new h[size]);
            for (int i8 = size - 1; i8 >= 0; i8--) {
                h hVar = hVarArr[i8];
                if (hVar.f25777a.f26154e0.isShowing()) {
                    hVar.f25777a.dismiss();
                }
            }
        }
    }

    @Override // p079k.A
    public final void f(z zVar) {
        this.f25802d0 = zVar;
    }

    @Override // p079k.A
    public final boolean g() {
        return false;
    }

    @Override // p079k.E
    public final void h() {
        if (a()) {
            return;
        }
        ArrayList arrayList = this.f25786N;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v((o) it.next());
        }
        arrayList.clear();
        View view = this.f25793U;
        this.f25794V = view;
        if (view != null) {
            boolean z7 = this.f25803e0 == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f25803e0 = viewTreeObserver;
            if (z7) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f25788P);
            }
            this.f25794V.addOnAttachStateChangeListener(this.f25789Q);
        }
    }

    @Override // p079k.A
    public final void i() {
        Iterator it = this.f25787O.iterator();
        while (it.hasNext()) {
            ListAdapter adapter = ((h) it.next()).f25777a.f26132I.getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                adapter = ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            }
            ((l) adapter).notifyDataSetChanged();
        }
    }

    @Override // p079k.E
    public final C3066z0 j() {
        ArrayList arrayList = this.f25787O;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((h) U2.g(arrayList, 1)).f25777a.f26132I;
    }

    @Override // p079k.w
    public final void l(o oVar) {
        oVar.b(this, this.f25780H);
        if (a()) {
            v(oVar);
        } else {
            this.f25786N.add(oVar);
        }
    }

    @Override // p079k.w
    public final void n(View view) {
        if (this.f25793U != view) {
            this.f25793U = view;
            this.f25792T = Gravity.getAbsoluteGravity(this.f25791S, view.getLayoutDirection());
        }
    }

    @Override // p079k.w
    public final void o(boolean z7) {
        this.f25800b0 = z7;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        h hVar;
        ArrayList arrayList = this.f25787O;
        int size = arrayList.size();
        int i8 = 0;
        while (true) {
            if (i8 >= size) {
                hVar = null;
                break;
            }
            hVar = (h) arrayList.get(i8);
            if (!hVar.f25777a.f26154e0.isShowing()) {
                break;
            } else {
                i8++;
            }
        }
        if (hVar != null) {
            hVar.f25778b.c(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i8, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i8 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p079k.w
    public final void p(int i8) {
        if (this.f25791S != i8) {
            this.f25791S = i8;
            this.f25792T = Gravity.getAbsoluteGravity(i8, this.f25793U.getLayoutDirection());
        }
    }

    @Override // p079k.w
    public final void q(int i8) {
        this.f25796X = true;
        this.f25798Z = i8;
    }

    @Override // p079k.w
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f25804f0 = onDismissListener;
    }

    @Override // p079k.w
    public final void s(boolean z7) {
        this.f25801c0 = z7;
    }

    @Override // p079k.w
    public final void t(int i8) {
        this.f25797Y = true;
        this.f25799a0 = i8;
    }

    /* JADX WARN: Code duplicated, block: B:105:0x00f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:53:0x0103  */
    /* JADX WARN: Code duplicated, block: B:56:0x010d  */
    /* JADX WARN: Code duplicated, block: B:67:0x014d  */
    /* JADX WARN: Code duplicated, block: B:68:0x014f  */
    /* JADX WARN: Code duplicated, block: B:71:0x0157  */
    /* JADX WARN: Code duplicated, block: B:72:0x015c  */
    /* JADX WARN: Code duplicated, block: B:74:0x016f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0185  */
    /* JADX WARN: Code duplicated, block: B:79:0x0196 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:80:0x0198  */
    /* JADX WARN: Code duplicated, block: B:81:0x019a  */
    /* JADX WARN: Code duplicated, block: B:82:0x019e A[PHI: r5
      0x019e: PHI (r5v14 int) = (r5v5 int), (r5v15 int) binds: [B:83:0x01a0, B:81:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x01a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:86:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:88:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:91:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:94:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:95:0x01cc  */
    public final void v(o oVar) {
        h hVar;
        View childAt;
        Rect rect;
        Rect rect2;
        int i8;
        G g8;
        int i9;
        int i10;
        boolean z7;
        int[] iArr;
        int[] iArr2;
        char c8;
        int i11;
        int i12;
        int width;
        Method method;
        MenuItem item;
        l lVar;
        int headersCount;
        int firstVisiblePosition;
        Context context = this.f25780H;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        l lVar2 = new l(oVar, layoutInflaterFrom, this.f25784L, R.layout.abc_cascading_menu_item_layout);
        if (!a() && this.f25800b0) {
            lVar2.f25816c = true;
        } else if (a()) {
            lVar2.f25816c = w.u(oVar);
        }
        int iM = w.m(lVar2, context, this.f25781I);
        R0 r7 = new R0(context, null, this.f25782J, this.f25783K);
        r7.f26172i0 = this.f25790R;
        r7.f26145V = this;
        r7.f26154e0.setOnDismissListener(this);
        r7.f26144U = this.f25793U;
        r7.f26141R = this.f25792T;
        r7.f26153d0 = true;
        r7.f26154e0.setFocusable(true);
        r7.f26154e0.setInputMethodMode(2);
        r7.n(lVar2);
        r7.p(iM);
        r7.f26141R = this.f25792T;
        ArrayList arrayList = this.f25787O;
        if (arrayList.size() > 0) {
            hVar = (h) U2.g(arrayList, 1);
            o oVar2 = hVar.f25778b;
            int size = oVar2.f25826f.size();
            int i13 = 0;
            while (true) {
                if (i13 >= size) {
                    item = null;
                    break;
                }
                item = oVar2.getItem(i13);
                if (item.hasSubMenu() && oVar == item.getSubMenu()) {
                    break;
                } else {
                    i13++;
                }
            }
            if (item == null) {
                childAt = null;
            } else {
                C3066z0 c3066z0 = hVar.f25777a.f26132I;
                ListAdapter adapter = c3066z0.getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    lVar = (l) headerViewListAdapter.getWrappedAdapter();
                } else {
                    lVar = (l) adapter;
                    headersCount = 0;
                }
                int count = lVar.getCount();
                int i14 = 0;
                while (true) {
                    if (i14 >= count) {
                        i14 = -1;
                        break;
                    } else if (item == lVar.getItem(i14)) {
                        break;
                    } else {
                        i14++;
                    }
                }
                if (i14 != -1 && (firstVisiblePosition = (i14 + headersCount) - c3066z0.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < c3066z0.getChildCount()) {
                    childAt = c3066z0.getChildAt(firstVisiblePosition);
                }
            }
            if (childAt != null) {
                i8 = Build.VERSION.SDK_INT;
                g8 = r7.f26154e0;
                if (i8 <= 28) {
                    method = R0.f26171j0;
                    if (method != null) {
                        try {
                            method.invoke(g8, Boolean.FALSE);
                        } catch (Exception unused) {
                            Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                        }
                    }
                } else {
                    P0.a(g8, false);
                }
                i9 = Build.VERSION.SDK_INT;
                if (i9 >= 23) {
                    O0.a(r7.f26154e0, null);
                }
                C3066z0 c3066z1 = ((h) U2.g(arrayList, 1)).f25777a.f26132I;
                int[] iArr3 = new int[2];
                c3066z1.getLocationOnScreen(iArr3);
                Rect rect3 = new Rect();
                this.f25794V.getWindowVisibleDisplayFrame(rect3);
                i10 = (this.f25795W == 1 ? iArr3[0] - iM >= 0 : (c3066z1.getWidth() + iArr3[0]) + iM > rect3.right) ? 0 : 1;
                if (i10 == 1) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                this.f25795W = i10;
                if (i9 >= 26) {
                    r7.f26144U = childAt;
                    i12 = 0;
                    i11 = 0;
                } else {
                    iArr = new int[2];
                    this.f25793U.getLocationOnScreen(iArr);
                    iArr2 = new int[2];
                    childAt.getLocationOnScreen(iArr2);
                    if ((this.f25792T & 7) == 5) {
                        c8 = 0;
                        iArr[0] = this.f25793U.getWidth() + iArr[0];
                        iArr2[0] = childAt.getWidth() + iArr2[0];
                    } else {
                        c8 = 0;
                    }
                    i11 = iArr2[c8] - iArr[c8];
                    i12 = iArr2[1] - iArr[1];
                }
                if ((this.f25792T & 5) == 5) {
                    if (z7) {
                        width = i11 + iM;
                    } else {
                        iM = childAt.getWidth();
                        width = i11 - iM;
                    }
                } else if (z7) {
                    width = i11 + childAt.getWidth();
                } else {
                    width = i11 - iM;
                }
                r7.f26135L = width;
                r7.f26140Q = true;
                r7.f26139P = true;
                r7.i(i12);
            } else {
                if (this.f25796X) {
                    r7.f26135L = this.f25798Z;
                }
                if (this.f25797Y) {
                    r7.i(this.f25799a0);
                }
                rect = this.f25887G;
                if (rect != null) {
                    rect2 = new Rect(rect);
                } else {
                    rect2 = null;
                }
                r7.f26152c0 = rect2;
            }
            arrayList.add(new h(r7, oVar, this.f25795W));
            r7.h();
            C3066z0 c3066z2 = r7.f26132I;
            c3066z2.setOnKeyListener(this);
            if (hVar == null || !this.f25801c0 || oVar.f25833m == null) {
                return;
            }
            FrameLayout frameLayout = (FrameLayout) layoutInflaterFrom.inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c3066z2, false);
            TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(oVar.f25833m);
            c3066z2.addHeaderView(frameLayout, null, false);
            r7.h();
            return;
        }
        hVar = null;
        childAt = null;
        if (childAt != null) {
            i8 = Build.VERSION.SDK_INT;
            g8 = r7.f26154e0;
            if (i8 <= 28) {
                method = R0.f26171j0;
                if (method != null) {
                    method.invoke(g8, Boolean.FALSE);
                }
            } else {
                P0.a(g8, false);
            }
            i9 = Build.VERSION.SDK_INT;
            if (i9 >= 23) {
                O0.a(r7.f26154e0, null);
            }
            C3066z0 c3066z3 = ((h) U2.g(arrayList, 1)).f25777a.f26132I;
            int[] iArr4 = new int[2];
            c3066z3.getLocationOnScreen(iArr4);
            Rect rect4 = new Rect();
            this.f25794V.getWindowVisibleDisplayFrame(rect4);
            if (this.f25795W == 1) {
            }
            if (i10 == 1) {
                z7 = true;
            } else {
                z7 = false;
            }
            this.f25795W = i10;
            if (i9 >= 26) {
                r7.f26144U = childAt;
                i12 = 0;
                i11 = 0;
            } else {
                iArr = new int[2];
                this.f25793U.getLocationOnScreen(iArr);
                iArr2 = new int[2];
                childAt.getLocationOnScreen(iArr2);
                if ((this.f25792T & 7) == 5) {
                    c8 = 0;
                    iArr[0] = this.f25793U.getWidth() + iArr[0];
                    iArr2[0] = childAt.getWidth() + iArr2[0];
                } else {
                    c8 = 0;
                }
                i11 = iArr2[c8] - iArr[c8];
                i12 = iArr2[1] - iArr[1];
            }
            if ((this.f25792T & 5) == 5) {
                if (z7) {
                    width = i11 + iM;
                } else {
                    iM = childAt.getWidth();
                    width = i11 - iM;
                }
            } else if (z7) {
                width = i11 + childAt.getWidth();
            } else {
                width = i11 - iM;
            }
            r7.f26135L = width;
            r7.f26140Q = true;
            r7.f26139P = true;
            r7.i(i12);
        } else {
            if (this.f25796X) {
                r7.f26135L = this.f25798Z;
            }
            if (this.f25797Y) {
                r7.i(this.f25799a0);
            }
            rect = this.f25887G;
            if (rect != null) {
                rect2 = new Rect(rect);
            } else {
                rect2 = null;
            }
            r7.f26152c0 = rect2;
        }
        arrayList.add(new h(r7, oVar, this.f25795W));
        r7.h();
        C3066z0 c3066z4 = r7.f26132I;
        c3066z4.setOnKeyListener(this);
        if (hVar == null) {
        }
    }
}
