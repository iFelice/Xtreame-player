package p039f;

import A0.O;
import N.C;
import N.N;
import N.U;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.widget.PopupWindow;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ViewStubCompat;
import com.google.android.gms.internal.measurement.H1;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import p071j.b;
import p071j.d;
import p071j.e;
import p071j.f;
import p071j.l;
import p071j.m;
import p071j.n;
import p079k.o;
import p096m2.i;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class E implements Window.Callback {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Window.Callback f24894G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f24895H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f24896I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f24897J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ K f24898K;

    public E(K k8, Window.Callback callback) {
        this.f24898K = k8;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f24894G = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f24895H = true;
            callback.onContentChanged();
        } finally {
            this.f24895H = false;
        }
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f24894G.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f24894G.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final void onAttachedToWindow() {
        this.f24894G.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f24894G.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z7 = this.f24896I;
        Window.Callback callback = this.f24894G;
        if (z7) {
            return callback.dispatchKeyEvent(keyEvent);
        }
        return this.f24898K.t(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        W w7;
        o oVar;
        if (this.f24894G.dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        K k8 = this.f24898K;
        k8.A();
        X x7 = k8.f24946U;
        if (x7 != null && (w7 = x7.f25012U) != null && (oVar = w7.f24998J) != null) {
            oVar.setQwertyMode(KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() != 1);
            if (oVar.performShortcut(keyCode, keyEvent, 0)) {
                return true;
            }
        }
        J j8 = k8.f24971t0;
        if (j8 != null && k8.F(j8, keyEvent.getKeyCode(), keyEvent)) {
            J j9 = k8.f24971t0;
            if (j9 == null) {
                return true;
            }
            j9.f24919l = true;
            return true;
        }
        if (k8.f24971t0 == null) {
            J jZ = k8.z(0);
            k8.G(jZ, keyEvent);
            boolean zF = k8.F(jZ, keyEvent.getKeyCode(), keyEvent);
            jZ.f24918k = false;
            if (zF) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f24894G.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f24894G.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f24894G.dispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public final void onDetachedFromWindow() {
        this.f24894G.onDetachedFromWindow();
    }

    public final boolean f(int i8, Menu menu) {
        return this.f24894G.onMenuOpened(i8, menu);
    }

    public final void g(int i8, Menu menu) {
        this.f24894G.onPanelClosed(i8, menu);
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final void onPointerCaptureChanged(boolean z7) {
        n.a(this.f24894G, z7);
    }

    public final void i(List list, Menu menu, int i8) {
        m.a(this.f24894G, list, menu, i8);
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f24894G.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final void onWindowFocusChanged(boolean z7) {
        this.f24894G.onWindowFocusChanged(z7);
    }

    public final f l(ActionMode.Callback callback) {
        ViewGroup viewGroup;
        K k8 = this.f24898K;
        i iVar = new i(k8.f24942Q, callback);
        b bVar = k8.f24952a0;
        if (bVar != null) {
            bVar.a();
        }
        A a8 = new A(k8, iVar);
        k8.A();
        X x7 = k8.f24946U;
        if (x7 != null) {
            W w7 = x7.f25012U;
            if (w7 != null) {
                w7.a();
            }
            x7.f25006O.setHideOnContentScrollEnabled(false);
            x7.f25009R.e();
            W w8 = new W(x7, x7.f25009R.getContext(), a8);
            o oVar = w8.f24998J;
            oVar.w();
            try {
                boolean zF = w8.f24999K.f(w8, oVar);
                oVar.v();
                if (zF) {
                    x7.f25012U = w8;
                    w8.h();
                    x7.f25009R.c(w8);
                    x7.G0(true);
                } else {
                    w8 = null;
                }
                k8.f24952a0 = w8;
            } catch (Throwable th) {
                oVar.v();
                throw th;
            }
        }
        if (k8.f24952a0 == null) {
            U u7 = k8.f24956e0;
            if (u7 != null) {
                u7.b();
            }
            b bVar2 = k8.f24952a0;
            if (bVar2 != null) {
                bVar2.a();
            }
            if (k8.f24945T != null) {
                boolean z7 = k8.f24975x0;
            }
            if (k8.f24953b0 == null) {
                boolean z8 = k8.f24967p0;
                Context context = k8.f24942Q;
                if (z8) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = context.getTheme();
                    theme.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = context.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        d dVar = new d(context, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                        context = dVar;
                    }
                    k8.f24953b0 = new ActionBarContextView(context, null);
                    PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, R.attr.actionModePopupWindowStyle);
                    k8.f24954c0 = popupWindow;
                    H1.y(popupWindow, 2);
                    k8.f24954c0.setContentView(k8.f24953b0);
                    k8.f24954c0.setWidth(-1);
                    context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                    k8.f24953b0.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                    k8.f24954c0.setHeight(-2);
                    k8.f24955d0 = new RunnableC3008x(k8, 1);
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) k8.f24959h0.findViewById(R.id.action_mode_bar_stub);
                    if (viewStubCompat != null) {
                        k8.A();
                        X x8 = k8.f24946U;
                        Context contextH0 = x8 != null ? x8.H0() : null;
                        if (contextH0 != null) {
                            context = contextH0;
                        }
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                        k8.f24953b0 = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (k8.f24953b0 != null) {
                U u8 = k8.f24956e0;
                if (u8 != null) {
                    u8.b();
                }
                k8.f24953b0.e();
                Context context2 = k8.f24953b0.getContext();
                ActionBarContextView actionBarContextView = k8.f24953b0;
                e eVar = new e();
                eVar.f25602I = context2;
                eVar.f25603J = actionBarContextView;
                eVar.f25604K = a8;
                o oVar2 = new o(actionBarContextView.getContext());
                oVar2.f25832l = 1;
                eVar.f25607N = oVar2;
                oVar2.f25825e = eVar;
                if (a8.f24892G.f(eVar, oVar2)) {
                    eVar.h();
                    k8.f24953b0.c(eVar);
                    k8.f24952a0 = eVar;
                    if (k8.f24958g0 && (viewGroup = k8.f24959h0) != null && viewGroup.isLaidOut()) {
                        k8.f24953b0.setAlpha(0.0f);
                        U uA = N.a(k8.f24953b0);
                        uA.a(1.0f);
                        k8.f24956e0 = uA;
                        uA.d(new z(k8, 1));
                    } else {
                        k8.f24953b0.setAlpha(1.0f);
                        k8.f24953b0.setVisibility(0);
                        if (k8.f24953b0.getParent() instanceof View) {
                            View view = (View) k8.f24953b0.getParent();
                            WeakHashMap weakHashMap = N.f4843a;
                            C.c(view);
                        }
                    }
                    if (k8.f24954c0 != null) {
                        k8.f24943R.getDecorView().post(k8.f24955d0);
                    }
                } else {
                    k8.f24952a0 = null;
                }
            }
            k8.I();
            k8.f24952a0 = k8.f24952a0;
        }
        k8.I();
        b bVar3 = k8.f24952a0;
        if (bVar3 != null) {
            return iVar.k(bVar3);
        }
        return null;
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f24895H) {
            this.f24894G.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i8, Menu menu) {
        if (i8 != 0 || (menu instanceof o)) {
            return this.f24894G.onCreatePanelMenu(i8, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i8) {
        return this.f24894G.onCreatePanelView(i8);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i8, MenuItem menuItem) {
        return this.f24894G.onMenuItemSelected(i8, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i8, Menu menu) {
        f(i8, menu);
        K k8 = this.f24898K;
        if (i8 == 108) {
            k8.A();
            X x7 = k8.f24946U;
            if (x7 != null && true != x7.f25015X) {
                x7.f25015X = true;
                ArrayList arrayList = x7.f25016Y;
                if (arrayList.size() > 0) {
                    O.I(arrayList.get(0));
                    throw null;
                }
            }
        } else {
            k8.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i8, Menu menu) {
        if (this.f24897J) {
            this.f24894G.onPanelClosed(i8, menu);
            return;
        }
        g(i8, menu);
        K k8 = this.f24898K;
        if (i8 != 108) {
            if (i8 != 0) {
                k8.getClass();
                return;
            }
            J jZ = k8.z(i8);
            if (jZ.f24920m) {
                k8.r(jZ, false);
                return;
            }
            return;
        }
        k8.A();
        X x7 = k8.f24946U;
        if (x7 == null || !x7.f25015X) {
            return;
        }
        x7.f25015X = false;
        ArrayList arrayList = x7.f25016Y;
        if (arrayList.size() <= 0) {
            return;
        }
        O.I(arrayList.get(0));
        throw null;
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i8, View view, Menu menu) {
        o oVar = menu instanceof o ? (o) menu : null;
        if (i8 == 0 && oVar == null) {
            return false;
        }
        if (oVar != null) {
            oVar.f25844x = true;
        }
        boolean zOnPreparePanel = this.f24894G.onPreparePanel(i8, view, menu);
        if (oVar != null) {
            oVar.f25844x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i8) {
        o oVar = this.f24898K.z(0).f24915h;
        if (oVar != null) {
            i(list, oVar, i8);
        } else {
            i(list, menu, i8);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return l.a(this.f24894G, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i8) {
        return (this.f24898K.f24957f0 && i8 == 0) ? l(callback) : l.b(this.f24894G, callback, i8);
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f24894G.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (Build.VERSION.SDK_INT >= 23) {
            return null;
        }
        if (this.f24898K.f24957f0) {
            return l(callback);
        }
        return this.f24894G.onWindowStartingActionMode(callback);
    }
}
