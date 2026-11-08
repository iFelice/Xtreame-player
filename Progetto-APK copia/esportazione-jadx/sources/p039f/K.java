package p039f;

import E3.f;
import J.g;
import N.E;
import N.F;
import N.InterfaceC0264m;
import N.N;
import N.U;
import N.i0;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.gms.internal.measurement.AbstractC2617p2;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import okhttp3.internal.ws.WebSocketProtocol;
import org.videolan.libvlc.interfaces.IMediaList;
import p031e.a;
import p032e0.EnumC2982j;
import p071j.b;
import p071j.d;
import p071j.i;
import p079k.k;
import p079k.m;
import p079k.o;
import p079k.q;
import p086l.C3032i;
import p086l.C3042n;
import p086l.C3063y;
import p086l.H;
import p086l.InterfaceC3047p0;
import p086l.InterfaceC3049q0;
import p086l.j1;
import p086l.o1;
import p086l.t1;
import p086l.v1;
import p086l.w1;
import p096m2.u;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public final class K extends AbstractC3007w implements m, LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public static final p132r.m f24924O0 = new p132r.m(0);

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public static final int[] f24925P0 = {R.attr.windowBackground};

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public static final boolean f24926Q0 = !"robolectric".equals(Build.FINGERPRINT);

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public int f24927A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public int f24928B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public boolean f24929C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public F f24930D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public F f24931E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public boolean f24932F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public int f24933G0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public boolean f24935I0;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public Rect f24936J0;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public Rect f24937K0;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public O f24938L0;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public OnBackInvokedDispatcher f24939M0;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public OnBackInvokedCallback f24940N0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Object f24941P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Context f24942Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public Window f24943R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public E f24944S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final InterfaceC3001p f24945T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public X f24946U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public i f24947V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public CharSequence f24948W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public InterfaceC3047p0 f24949X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public y f24950Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public y f24951Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public b f24952a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public ActionBarContextView f24953b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public PopupWindow f24954c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public RunnableC3008x f24955d0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f24958g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public ViewGroup f24959h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public TextView f24960i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public View f24961j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f24962k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f24963l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f24964m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f24965n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f24966o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public boolean f24967p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f24968q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f24969r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public J[] f24970s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public J f24971t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f24972u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f24973v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public boolean f24974w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public boolean f24975x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public Configuration f24976y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final int f24977z0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public U f24956e0 = null;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final boolean f24957f0 = true;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public final RunnableC3008x f24934H0 = new RunnableC3008x(this, 0);

    public K(Context context, Window window, InterfaceC3001p interfaceC3001p, Object obj) {
        AbstractActivityC3000o abstractActivityC3000o = null;
        this.f24977z0 = -100;
        this.f24942Q = context;
        this.f24945T = interfaceC3001p;
        this.f24941P = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AbstractActivityC3000o)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    abstractActivityC3000o = (AbstractActivityC3000o) context;
                    break;
                }
            }
            if (abstractActivityC3000o != null) {
                this.f24977z0 = ((K) abstractActivityC3000o.p()).f24977z0;
            }
        }
        if (this.f24977z0 == -100) {
            p132r.m mVar = f24924O0;
            Integer num = (Integer) mVar.get(this.f24941P.getClass().getName());
            if (num != null) {
                this.f24977z0 = num.intValue();
                mVar.remove(this.f24941P.getClass().getName());
            }
        }
        if (window != null) {
            n(window);
        }
        C3063y.c();
    }

    public static g o(Context context) {
        g gVar;
        g gVarB;
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 33 || (gVar = AbstractC3007w.f25119I) == null) {
            return null;
        }
        g gVarY = y(context.getApplicationContext().getResources().getConfiguration());
        int i9 = 0;
        J.i iVar = gVar.f4053a;
        if (i8 < 24) {
            gVarB = iVar.isEmpty() ? g.f4052b : g.b(B.b(iVar.get(0)));
        } else if (iVar.isEmpty()) {
            gVarB = g.f4052b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i9 < gVarY.f4053a.size() + iVar.size()) {
                Locale locale = i9 < iVar.size() ? iVar.get(i9) : gVarY.f4053a.get(i9 - iVar.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i9++;
            }
            gVarB = g.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return gVarB.f4053a.isEmpty() ? gVarY : gVarB;
    }

    public static Configuration s(Context context, int i8, g gVar, Configuration configuration, boolean z7) {
        int i9;
        if (i8 == 1) {
            i9 = 16;
        } else if (i8 != 2) {
            i9 = z7 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i9 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i9 | (configuration2.uiMode & (-49));
        if (gVar != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                C.d(configuration2, gVar);
            } else {
                J.i iVar = gVar.f4053a;
                configuration2.setLocale(iVar.get(0));
                configuration2.setLayoutDirection(iVar.get(0));
            }
        }
        return configuration2;
    }

    public static g y(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? C.b(configuration) : g.b(B.b(configuration.locale));
    }

    public final void A() {
        v();
        if (this.f24964m0 && this.f24946U == null) {
            Object obj = this.f24941P;
            if (obj instanceof Activity) {
                this.f24946U = new X((Activity) obj, this.f24965n0);
            } else if (obj instanceof Dialog) {
                this.f24946U = new X((Dialog) obj);
            }
            X x7 = this.f24946U;
            if (x7 != null) {
                x7.J0(this.f24935I0);
            }
        }
    }

    public final void B(int i8) {
        this.f24933G0 = (1 << i8) | this.f24933G0;
        if (this.f24932F0) {
            return;
        }
        View decorView = this.f24943R.getDecorView();
        WeakHashMap weakHashMap = N.f4843a;
        decorView.postOnAnimation(this.f24934H0);
        this.f24932F0 = true;
    }

    public final int C(Context context, int i8) {
        if (i8 == -100) {
            return -1;
        }
        if (i8 != -1) {
            if (i8 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return x(context).e();
                }
                return -1;
            }
            if (i8 != 1 && i8 != 2) {
                if (i8 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.f24931E0 == null) {
                    this.f24931E0 = new F(this, context);
                }
                return this.f24931E0.e();
            }
        }
        return i8;
    }

    public final boolean D() {
        InterfaceC3049q0 interfaceC3049q0;
        j1 j1Var;
        boolean z7 = this.f24972u0;
        this.f24972u0 = false;
        J jZ = z(0);
        if (jZ.f24920m) {
            if (!z7) {
                r(jZ, true);
            }
            return true;
        }
        b bVar = this.f24952a0;
        if (bVar != null) {
            bVar.a();
            return true;
        }
        A();
        X x7 = this.f24946U;
        if (x7 == null || (interfaceC3049q0 = x7.f25008Q) == null || (j1Var = ((o1) interfaceC3049q0).f26323a.f8930u0) == null || j1Var.f26271H == null) {
            return false;
        }
        j1 j1Var2 = ((o1) interfaceC3049q0).f26323a.f8930u0;
        q qVar = j1Var2 == null ? null : j1Var2.f26271H;
        if (qVar != null) {
            qVar.collapseActionView();
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x01d0  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0172, code lost:
    
        if (r3.f25813L.getCount() > 0) goto L88;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void E(p039f.J r19, android.view.KeyEvent r20) {
        /*
            Method dump skipped, instruction units count: 471
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p039f.K.E(f.J, android.view.KeyEvent):void");
    }

    public final boolean F(J j8, int i8, KeyEvent keyEvent) {
        o oVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((j8.f24918k || G(j8, keyEvent)) && (oVar = j8.f24915h) != null) {
            return oVar.performShortcut(i8, keyEvent, 1);
        }
        return false;
    }

    public final boolean G(J j8, KeyEvent keyEvent) {
        InterfaceC3047p0 interfaceC3047p0;
        InterfaceC3047p0 interfaceC3047p1;
        Resources.Theme themeNewTheme;
        InterfaceC3047p0 interfaceC3047p2;
        InterfaceC3047p0 interfaceC3047p3;
        if (this.f24975x0) {
            return false;
        }
        if (j8.f24918k) {
            return true;
        }
        J j9 = this.f24971t0;
        if (j9 != null && j9 != j8) {
            r(j9, false);
        }
        Window.Callback callback = this.f24943R.getCallback();
        int i8 = j8.f24908a;
        if (callback != null) {
            j8.f24914g = callback.onCreatePanelView(i8);
        }
        boolean z7 = i8 == 0 || i8 == 108;
        if (z7 && (interfaceC3047p3 = this.f24949X) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC3047p3;
            actionBarOverlayLayout.k();
            ((o1) actionBarOverlayLayout.f8796K).f26334l = true;
        }
        if (j8.f24914g == null) {
            o oVar = j8.f24915h;
            if (oVar == null || j8.f24922o) {
                if (oVar == null) {
                    Context context = this.f24942Q;
                    if ((i8 == 0 || i8 == 108) && this.f24949X != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(pe.hf.black20.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(pe.hf.black20.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(pe.hf.black20.R.attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            d dVar = new d(context, 0);
                            dVar.getTheme().setTo(themeNewTheme);
                            context = dVar;
                        }
                    }
                    o oVar2 = new o(context);
                    oVar2.f25825e = this;
                    o oVar3 = j8.f24915h;
                    if (oVar2 != oVar3) {
                        if (oVar3 != null) {
                            oVar3.r(j8.f24916i);
                        }
                        j8.f24915h = oVar2;
                        k kVar = j8.f24916i;
                        if (kVar != null) {
                            oVar2.b(kVar, oVar2.f25821a);
                        }
                    }
                    if (j8.f24915h == null) {
                        return false;
                    }
                }
                if (z7 && (interfaceC3047p1 = this.f24949X) != null) {
                    if (this.f24950Y == null) {
                        this.f24950Y = new y(this, 3);
                    }
                    ((ActionBarOverlayLayout) interfaceC3047p1).l(j8.f24915h, this.f24950Y);
                }
                j8.f24915h.w();
                if (!callback.onCreatePanelMenu(i8, j8.f24915h)) {
                    o oVar4 = j8.f24915h;
                    if (oVar4 != null) {
                        if (oVar4 != null) {
                            oVar4.r(j8.f24916i);
                        }
                        j8.f24915h = null;
                    }
                    if (z7 && (interfaceC3047p0 = this.f24949X) != null) {
                        ((ActionBarOverlayLayout) interfaceC3047p0).l(null, this.f24950Y);
                    }
                    return false;
                }
                j8.f24922o = false;
            }
            j8.f24915h.w();
            Bundle bundle = j8.f24923p;
            if (bundle != null) {
                j8.f24915h.s(bundle);
                j8.f24923p = null;
            }
            if (!callback.onPreparePanel(0, j8.f24914g, j8.f24915h)) {
                if (z7 && (interfaceC3047p2 = this.f24949X) != null) {
                    ((ActionBarOverlayLayout) interfaceC3047p2).l(null, this.f24950Y);
                }
                j8.f24915h.v();
                return false;
            }
            j8.f24915h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            j8.f24915h.v();
        }
        j8.f24918k = true;
        j8.f24919l = false;
        this.f24971t0 = j8;
        return true;
    }

    public final void H() {
        if (this.f24958g0) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void I() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z7 = false;
            if (this.f24939M0 != null && (z(0).f24920m || this.f24952a0 != null)) {
                z7 = true;
            }
            if (z7 && this.f24940N0 == null) {
                this.f24940N0 = D.b(this.f24939M0, this);
            } else {
                if (z7 || (onBackInvokedCallback = this.f24940N0) == null) {
                    return;
                }
                D.c(this.f24939M0, onBackInvokedCallback);
                this.f24940N0 = null;
            }
        }
    }

    public final int J(i0 i0Var, Rect rect) {
        int iD;
        boolean z7;
        boolean z8;
        int iD2;
        boolean z9 = true;
        if (i0Var != null) {
            iD = i0Var.d();
        } else {
            iD = rect != null ? rect.top : 0;
        }
        ActionBarContextView actionBarContextView = this.f24953b0;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z7 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f24953b0.getLayoutParams();
            if (this.f24953b0.isShown()) {
                if (this.f24936J0 == null) {
                    this.f24936J0 = new Rect();
                    this.f24937K0 = new Rect();
                }
                Rect rect2 = this.f24936J0;
                Rect rect3 = this.f24937K0;
                if (i0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(i0Var.b(), i0Var.d(), i0Var.c(), i0Var.a());
                }
                ViewGroup viewGroup = this.f24959h0;
                if (Build.VERSION.SDK_INT >= 29) {
                    boolean z10 = w1.f26407a;
                    v1.a(viewGroup, rect2, rect3);
                } else {
                    if (!w1.f26407a) {
                        w1.f26407a = true;
                        try {
                            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                            w1.f26408b = declaredMethod;
                            if (!declaredMethod.isAccessible()) {
                                w1.f26408b.setAccessible(true);
                            }
                        } catch (NoSuchMethodException unused) {
                            Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
                        }
                    }
                    Method method = w1.f26408b;
                    if (method != null) {
                        try {
                            method.invoke(viewGroup, rect2, rect3);
                        } catch (Exception e8) {
                            Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e8);
                        }
                    }
                }
                int i8 = rect2.top;
                int i9 = rect2.left;
                int i10 = rect2.right;
                ViewGroup viewGroup2 = this.f24959h0;
                WeakHashMap weakHashMap = N.f4843a;
                int i11 = Build.VERSION.SDK_INT;
                i0 i0VarA = i11 >= 23 ? F.a(viewGroup2) : E.e(viewGroup2);
                int iB = i0VarA == null ? 0 : i0VarA.b();
                int iC = i0VarA == null ? 0 : i0VarA.c();
                if (marginLayoutParams.topMargin == i8 && marginLayoutParams.leftMargin == i9 && marginLayoutParams.rightMargin == i10) {
                    z8 = false;
                } else {
                    marginLayoutParams.topMargin = i8;
                    marginLayoutParams.leftMargin = i9;
                    marginLayoutParams.rightMargin = i10;
                    z8 = true;
                }
                Context context = this.f24942Q;
                if (i8 <= 0 || this.f24961j0 != null) {
                    View view = this.f24961j0;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i12 = marginLayoutParams2.height;
                        int i13 = marginLayoutParams.topMargin;
                        if (i12 != i13 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                            marginLayoutParams2.height = i13;
                            marginLayoutParams2.leftMargin = iB;
                            marginLayoutParams2.rightMargin = iC;
                            this.f24961j0.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(context);
                    this.f24961j0 = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iB;
                    layoutParams.rightMargin = iC;
                    this.f24959h0.addView(this.f24961j0, -1, layoutParams);
                }
                View view3 = this.f24961j0;
                z9 = view3 != null;
                if (z9 && view3.getVisibility() != 0) {
                    View view4 = this.f24961j0;
                    if ((view4.getWindowSystemUiVisibility() & 8192) != 0) {
                        iD2 = i11 >= 23 ? H.d(context, pe.hf.black20.R.color.abc_decor_view_status_guard_light) : context.getResources().getColor(pe.hf.black20.R.color.abc_decor_view_status_guard_light);
                    } else {
                        iD2 = i11 >= 23 ? H.d(context, pe.hf.black20.R.color.abc_decor_view_status_guard) : context.getResources().getColor(pe.hf.black20.R.color.abc_decor_view_status_guard);
                    }
                    view4.setBackgroundColor(iD2);
                }
                if (!this.f24966o0 && z9) {
                    iD = 0;
                }
                z7 = z9;
                z9 = z8;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z7 = false;
            } else {
                z7 = false;
                z9 = false;
            }
            if (z9) {
                this.f24953b0.setLayoutParams(marginLayoutParams);
            }
        }
        View view5 = this.f24961j0;
        if (view5 != null) {
            view5.setVisibility(z7 ? 0 : 8);
        }
        return iD;
    }

    @Override // p039f.AbstractC3007w
    public final void a() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f24942Q);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof K) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // p039f.AbstractC3007w
    public final void c() throws IllegalAccessException {
        String strJ;
        this.f24973v0 = true;
        l(false, true);
        w();
        Object obj = this.f24941P;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strJ = c.j(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e8) {
                    throw new IllegalArgumentException(e8);
                }
            } catch (IllegalArgumentException unused) {
                strJ = null;
            }
            if (strJ != null) {
                X x7 = this.f24946U;
                if (x7 == null) {
                    this.f24935I0 = true;
                } else {
                    x7.J0(true);
                }
            }
            synchronized (AbstractC3007w.f25124N) {
                AbstractC3007w.e(this);
                AbstractC3007w.f25123M.add(new WeakReference(this));
            }
        }
        this.f24976y0 = new Configuration(this.f24942Q.getResources().getConfiguration());
        this.f24974w0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // p039f.AbstractC3007w
    public final void d() {
        if (this.f24941P instanceof Activity) {
            synchronized (AbstractC3007w.f25124N) {
                AbstractC3007w.e(this);
            }
        }
        if (this.f24932F0) {
            this.f24943R.getDecorView().removeCallbacks(this.f24934H0);
        }
        this.f24975x0 = true;
        if (this.f24977z0 != -100) {
            Object obj = this.f24941P;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                f24924O0.put(this.f24941P.getClass().getName(), Integer.valueOf(this.f24977z0));
            } else {
                f24924O0.remove(this.f24941P.getClass().getName());
            }
        } else {
            f24924O0.remove(this.f24941P.getClass().getName());
        }
        F f8 = this.f24930D0;
        if (f8 != null) {
            f8.b();
        }
        F f9 = this.f24931E0;
        if (f9 != null) {
            f9.b();
        }
    }

    @Override // p039f.AbstractC3007w
    public final boolean f(int i8) {
        if (i8 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i8 = 108;
        } else if (i8 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i8 = 109;
        }
        if (this.f24968q0 && i8 == 108) {
            return false;
        }
        if (this.f24964m0 && i8 == 1) {
            this.f24964m0 = false;
        }
        if (i8 == 1) {
            H();
            this.f24968q0 = true;
            return true;
        }
        if (i8 == 2) {
            H();
            this.f24962k0 = true;
            return true;
        }
        if (i8 == 5) {
            H();
            this.f24963l0 = true;
            return true;
        }
        if (i8 == 10) {
            H();
            this.f24966o0 = true;
            return true;
        }
        if (i8 == 108) {
            H();
            this.f24964m0 = true;
            return true;
        }
        if (i8 != 109) {
            return this.f24943R.requestFeature(i8);
        }
        H();
        this.f24965n0 = true;
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    @Override // p079k.m
    public final boolean g(o oVar, MenuItem menuItem) {
        J j8;
        Window.Callback callback = this.f24943R.getCallback();
        if (callback != null && !this.f24975x0) {
            o oVarK = oVar.k();
            J[] jArr = this.f24970s0;
            int length = jArr != null ? jArr.length : 0;
            for (int i8 = 0; i8 < length; i8++) {
                j8 = jArr[i8];
                if (j8 != null && j8.f24915h == oVarK) {
                    if (j8 != null) {
                        return callback.onMenuItemSelected(j8.f24908a, menuItem);
                    }
                }
            }
            j8 = null;
            if (j8 != null) {
                return callback.onMenuItemSelected(j8.f24908a, menuItem);
            }
        }
        return false;
    }

    @Override // p039f.AbstractC3007w
    public final void h(int i8) {
        v();
        ViewGroup viewGroup = (ViewGroup) this.f24959h0.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f24942Q).inflate(i8, viewGroup);
        this.f24944S.a(this.f24943R.getCallback());
    }

    @Override // p039f.AbstractC3007w
    public final void i(View view) {
        v();
        ViewGroup viewGroup = (ViewGroup) this.f24959h0.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f24944S.a(this.f24943R.getCallback());
    }

    @Override // p039f.AbstractC3007w
    public final void j(View view, ViewGroup.LayoutParams layoutParams) {
        v();
        ViewGroup viewGroup = (ViewGroup) this.f24959h0.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f24944S.a(this.f24943R.getCallback());
    }

    @Override // p039f.AbstractC3007w
    public final void k(CharSequence charSequence) {
        this.f24948W = charSequence;
        InterfaceC3047p0 interfaceC3047p0 = this.f24949X;
        if (interfaceC3047p0 != null) {
            interfaceC3047p0.setWindowTitle(charSequence);
            return;
        }
        X x7 = this.f24946U;
        if (x7 != null) {
            x7.L0(charSequence);
            return;
        }
        TextView textView = this.f24960i0;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:172:0x0237  */
    /* JADX WARN: Code duplicated, block: B:72:0x0102  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean l(boolean z7, boolean z8) throws IllegalAccessException {
        int i8;
        boolean z9;
        boolean z10;
        boolean z11;
        Map map;
        boolean z12;
        Object obj;
        Object obj2;
        Object obj3;
        int i9;
        if (this.f24975x0) {
            return false;
        }
        int i10 = this.f24977z0;
        if (i10 == -100) {
            i10 = AbstractC3007w.f25118H;
        }
        int i11 = i10;
        Context context = this.f24942Q;
        int iC = C(context, i11);
        int i12 = Build.VERSION.SDK_INT;
        g gVarO = i12 < 33 ? o(context) : null;
        if (!z8 && gVarO != null) {
            gVarO = y(context.getResources().getConfiguration());
        }
        Configuration configurationS = s(context, iC, gVarO, null, false);
        boolean z13 = this.f24929C0;
        Object obj4 = this.f24941P;
        if (z13 || !(obj4 instanceof Activity)) {
            this.f24929C0 = true;
            i8 = this.f24928B0;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i8 = 0;
            } else {
                if (i12 >= 29) {
                    i9 = 269221888;
                } else {
                    i9 = i12 >= 24 ? 786432 : 0;
                }
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj4.getClass()), i9);
                    if (activityInfo != null) {
                        this.f24928B0 = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException e8) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e8);
                    this.f24928B0 = 0;
                }
                this.f24929C0 = true;
                i8 = this.f24928B0;
            }
        }
        Configuration configuration = this.f24976y0;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i13 = configuration.uiMode & 48;
        int i14 = configurationS.uiMode & 48;
        g gVarY = y(configuration);
        g gVarY2 = gVarO == null ? null : y(configurationS);
        int i15 = i13 != i14 ? IMediaList.Event.ItemAdded : 0;
        if (gVarY2 != null && !gVarY.equals(gVarY2)) {
            i15 |= 8196;
        }
        int i16 = 4;
        if (((~i8) & i15) != 0 && z7 && this.f24973v0 && ((f24926Q0 || this.f24974w0) && (obj4 instanceof Activity))) {
            Activity activity = (Activity) obj4;
            if (activity.isChild()) {
                z9 = false;
            } else {
                int i17 = Build.VERSION.SDK_INT;
                if (i17 >= 31 && (i15 & 8192) != 0) {
                    activity.getWindow().getDecorView().setLayoutDirection(configurationS.getLayoutDirection());
                }
                if (i17 >= 28) {
                    activity.recreate();
                } else {
                    new Handler(activity.getMainLooper()).post(new p000a.b(activity, i16));
                }
                z9 = true;
            }
        } else {
            z9 = false;
        }
        if (z9 || i15 == 0) {
            z10 = z9;
        } else {
            boolean z14 = (i8 & i15) == i15;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i14;
            if (gVarY2 != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    C.d(configuration2, gVarY2);
                } else {
                    J.i iVar = gVarY2.f4053a;
                    configuration2.setLocale(iVar.get(0));
                    configuration2.setLayoutDirection(iVar.get(0));
                }
            }
            resources.updateConfiguration(configuration2, null);
            int i18 = Build.VERSION.SDK_INT;
            if (i18 < 26 && i18 < 28) {
                if (i18 >= 24) {
                    if (!f.f2864i) {
                        try {
                            Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                            f.f2863h = declaredField;
                            declaredField.setAccessible(true);
                        } catch (NoSuchFieldException e9) {
                            Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e9);
                        }
                        f.f2864i = true;
                    }
                    Field field = f.f2863h;
                    if (field != null) {
                        try {
                            obj2 = field.get(resources);
                        } catch (IllegalAccessException e10) {
                            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e10);
                            obj2 = null;
                        }
                        if (obj2 != null) {
                            if (!f.f2858c) {
                                try {
                                    Field declaredField2 = obj2.getClass().getDeclaredField("mDrawableCache");
                                    f.f2857b = declaredField2;
                                    declaredField2.setAccessible(true);
                                } catch (NoSuchFieldException e11) {
                                    Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e11);
                                }
                                f.f2858c = true;
                            }
                            Field field2 = f.f2857b;
                            if (field2 != null) {
                                try {
                                    obj3 = field2.get(obj2);
                                } catch (IllegalAccessException e12) {
                                    Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e12);
                                    obj3 = null;
                                }
                            } else {
                                obj3 = null;
                            }
                            if (obj3 != null) {
                                f.l(obj3);
                            }
                        }
                    }
                } else if (i18 >= 23) {
                    if (!f.f2858c) {
                        try {
                            Field declaredField3 = Resources.class.getDeclaredField("mDrawableCache");
                            f.f2857b = declaredField3;
                            z12 = true;
                            try {
                                declaredField3.setAccessible(true);
                            } catch (NoSuchFieldException e13) {
                                e = e13;
                                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
                            }
                        } catch (NoSuchFieldException e14) {
                            e = e14;
                            z12 = true;
                        }
                        f.f2858c = z12;
                    }
                    Field field3 = f.f2857b;
                    if (field3 != null) {
                        try {
                            obj = field3.get(resources);
                        } catch (IllegalAccessException e15) {
                            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e15);
                            obj = null;
                        }
                    } else {
                        obj = null;
                    }
                    if (obj != null) {
                        f.l(obj);
                    }
                } else {
                    if (!f.f2858c) {
                        try {
                            Field declaredField4 = Resources.class.getDeclaredField("mDrawableCache");
                            f.f2857b = declaredField4;
                            z11 = true;
                            try {
                                declaredField4.setAccessible(true);
                            } catch (NoSuchFieldException e16) {
                                e = e16;
                                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
                            }
                        } catch (NoSuchFieldException e17) {
                            e = e17;
                            z11 = true;
                        }
                        f.f2858c = z11;
                    }
                    Field field4 = f.f2857b;
                    if (field4 != null) {
                        try {
                            map = (Map) field4.get(resources);
                        } catch (IllegalAccessException e18) {
                            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e18);
                            map = null;
                        }
                        if (map != null) {
                            map.clear();
                        }
                    }
                }
            }
            int i19 = this.f24927A0;
            if (i19 != 0) {
                context.setTheme(i19);
                if (Build.VERSION.SDK_INT >= 23) {
                    context.getTheme().applyStyle(this.f24927A0, true);
                }
            }
            if (z14 && (obj4 instanceof Activity)) {
                Activity activity2 = (Activity) obj4;
                if (activity2 instanceof p032e0.m) {
                    if (((p032e0.m) activity2).h().f24751L.compareTo(EnumC2982j.f24743I) >= 0) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.f24974w0 && !this.f24975x0) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
            z10 = true;
        }
        if (z10 && (obj4 instanceof AbstractActivityC3000o)) {
            if ((i15 & IMediaList.Event.ItemAdded) != 0) {
                ((AbstractActivityC3000o) obj4).getClass();
            }
            if ((i15 & 4) != 0) {
                ((AbstractActivityC3000o) obj4).getClass();
            }
        }
        if (gVarY2 != null) {
            g gVarY3 = y(context.getResources().getConfiguration());
            if (Build.VERSION.SDK_INT >= 24) {
                C.c(gVarY3);
            } else {
                Locale.setDefault(gVarY3.f4053a.get(0));
            }
        }
        if (i11 == 0) {
            x(context).j();
        } else {
            F f8 = this.f24930D0;
            if (f8 != null) {
                f8.b();
            }
        }
        if (i11 == 3) {
            if (this.f24931E0 == null) {
                this.f24931E0 = new F(this, context);
            }
            this.f24931E0.j();
        } else {
            F f9 = this.f24931E0;
            if (f9 != null) {
                f9.b();
            }
        }
        return z10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.j() != false) goto L20;
     */
    @Override // p079k.m
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m(p079k.o r6) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p039f.K.m(k.o):void");
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0074  */
    public final void n(Window window) {
        Drawable drawableG;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f24943R != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof E) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        E e8 = new E(this, callback);
        this.f24944S = e8;
        window.setCallback(e8);
        int[] iArr = f24925P0;
        Context context = this.f24942Q;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableG = null;
        } else {
            C3063y c3063yA = C3063y.a();
            synchronized (c3063yA) {
                drawableG = c3063yA.f26420a.g(context, resourceId, true);
            }
        }
        if (drawableG != null) {
            window.setBackgroundDrawable(drawableG);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f24943R = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.f24939M0) != null) {
            return;
        }
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f24940N0) != null) {
            D.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.f24940N0 = null;
        }
        Object obj = this.f24941P;
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.f24939M0 = D.a(activity);
            } else {
                this.f24939M0 = null;
            }
        } else {
            this.f24939M0 = null;
        }
        I();
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    public final void p(int i8, J j8, o oVar) {
        if (oVar == null) {
            if (j8 == null && i8 >= 0) {
                J[] jArr = this.f24970s0;
                if (i8 < jArr.length) {
                    j8 = jArr[i8];
                }
            }
            if (j8 != null) {
                oVar = j8.f24915h;
            }
        }
        if ((j8 == null || j8.f24920m) && !this.f24975x0) {
            E e8 = this.f24944S;
            Window.Callback callback = this.f24943R.getCallback();
            e8.getClass();
            try {
                e8.f24897J = true;
                callback.onPanelClosed(i8, oVar);
            } finally {
                e8.f24897J = false;
            }
        }
    }

    public final void q(o oVar) {
        C3042n c3042n;
        if (this.f24969r0) {
            return;
        }
        this.f24969r0 = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f24949X;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((o1) actionBarOverlayLayout.f8796K).f26323a.f8893G;
        if (actionMenuView != null && (c3042n = actionMenuView.f8824c0) != null) {
            c3042n.h();
            C3032i c3032i = c3042n.f26314Z;
            if (c3032i != null && c3032i.b()) {
                c3032i.f25898j.dismiss();
            }
        }
        Window.Callback callback = this.f24943R.getCallback();
        if (callback != null && !this.f24975x0) {
            callback.onPanelClosed(108, oVar);
        }
        this.f24969r0 = false;
    }

    public final void r(J j8, boolean z7) {
        I i8;
        InterfaceC3047p0 interfaceC3047p0;
        C3042n c3042n;
        if (z7 && j8.f24908a == 0 && (interfaceC3047p0 = this.f24949X) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC3047p0;
            actionBarOverlayLayout.k();
            ActionMenuView actionMenuView = ((o1) actionBarOverlayLayout.f8796K).f26323a.f8893G;
            if (actionMenuView != null && (c3042n = actionMenuView.f8824c0) != null && c3042n.j()) {
                q(j8.f24915h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f24942Q.getSystemService("window");
        if (windowManager != null && j8.f24920m && (i8 = j8.f24912e) != null) {
            windowManager.removeView(i8);
            if (z7) {
                p(j8.f24908a, j8, null);
            }
        }
        j8.f24918k = false;
        j8.f24919l = false;
        j8.f24920m = false;
        j8.f24913f = null;
        j8.f24921n = true;
        if (this.f24971t0 == j8) {
            this.f24971t0 = null;
        }
        if (j8.f24908a == 0) {
            I();
        }
    }

    /* JADX WARN: Code duplicated, block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0104  */
    /* JADX WARN: Code duplicated, block: B:89:0x0121  */
    public final boolean t(KeyEvent keyEvent) {
        View decorView;
        boolean z7;
        ActionMenuView actionMenuView;
        C3042n c3042n;
        C3042n c3042n2;
        C3042n c3042n3;
        Object obj = this.f24941P;
        if (((obj instanceof InterfaceC0264m) || (obj instanceof M)) && (decorView = this.f24943R.getDecorView()) != null && AbstractC2617p2.e(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82) {
            E e8 = this.f24944S;
            Window.Callback callback = this.f24943R.getCallback();
            e8.getClass();
            try {
                e8.f24896I = true;
                boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                e8.f24896I = false;
                if (zDispatchKeyEvent) {
                    return true;
                }
            } catch (Throwable th) {
                e8.f24896I = false;
                throw th;
            }
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                this.f24972u0 = (keyEvent.getFlags() & 128) != 0;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() != 0) {
                    return true;
                }
                J jZ = z(0);
                if (jZ.f24920m) {
                    return true;
                }
                G(jZ, keyEvent);
                return true;
            }
        } else if (keyCode != 4) {
            if (keyCode == 82) {
                if (this.f24952a0 != null) {
                    return true;
                }
                J jZ2 = z(0);
                InterfaceC3047p0 interfaceC3047p0 = this.f24949X;
                Context context = this.f24942Q;
                if (interfaceC3047p0 != null) {
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC3047p0;
                    actionBarOverlayLayout.k();
                    Toolbar toolbar = ((o1) actionBarOverlayLayout.f8796K).f26323a;
                    if (toolbar.getVisibility() != 0 || (actionMenuView = toolbar.f8893G) == null || !actionMenuView.f8823b0 || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                        z7 = jZ2.f24920m;
                        if (!z7 || jZ2.f24919l) {
                            r(jZ2, true);
                            if (!z7) {
                                return true;
                            }
                        } else {
                            if (!jZ2.f24918k) {
                                return true;
                            }
                            if (jZ2.f24922o) {
                                jZ2.f24918k = false;
                                if (!G(jZ2, keyEvent)) {
                                    return true;
                                }
                            }
                            E(jZ2, keyEvent);
                        }
                    } else {
                        ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f24949X;
                        actionBarOverlayLayout2.k();
                        ActionMenuView actionMenuView2 = ((o1) actionBarOverlayLayout2.f8796K).f26323a.f8893G;
                        if (actionMenuView2 != null && (c3042n2 = actionMenuView2.f8824c0) != null && c3042n2.j()) {
                            ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f24949X;
                            actionBarOverlayLayout3.k();
                            ActionMenuView actionMenuView3 = ((o1) actionBarOverlayLayout3.f8796K).f26323a.f8893G;
                            if (actionMenuView3 == null || (c3042n3 = actionMenuView3.f8824c0) == null || !c3042n3.h()) {
                                return true;
                            }
                        } else {
                            if (this.f24975x0 || !G(jZ2, keyEvent)) {
                                return true;
                            }
                            ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f24949X;
                            actionBarOverlayLayout4.k();
                            ActionMenuView actionMenuView4 = ((o1) actionBarOverlayLayout4.f8796K).f26323a.f8893G;
                            if (actionMenuView4 == null || (c3042n = actionMenuView4.f8824c0) == null || !c3042n.l()) {
                                return true;
                            }
                        }
                    }
                } else {
                    z7 = jZ2.f24920m;
                    if (z7) {
                        r(jZ2, true);
                        if (!z7) {
                            return true;
                        }
                    } else {
                        r(jZ2, true);
                        if (!z7) {
                            return true;
                        }
                    }
                }
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                if (audioManager != null) {
                    audioManager.playSoundEffect(0);
                    return true;
                }
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
                return true;
            }
        } else if (D()) {
            return true;
        }
        return false;
    }

    public final void u(int i8) {
        J jZ = z(i8);
        if (jZ.f24915h != null) {
            Bundle bundle = new Bundle();
            jZ.f24915h.t(bundle);
            if (bundle.size() > 0) {
                jZ.f24923p = bundle;
            }
            jZ.f24915h.w();
            jZ.f24915h.clear();
        }
        jZ.f24922o = true;
        jZ.f24921n = true;
        if ((i8 == 108 || i8 == 0) && this.f24949X != null) {
            J jZ2 = z(0);
            jZ2.f24918k = false;
            G(jZ2, null);
        }
    }

    public final void v() {
        ViewGroup viewGroup;
        if (this.f24958g0) {
            return;
        }
        int[] iArr = a.f24695j;
        Context context = this.f24942Q;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        int i8 = 0;
        if (typedArrayObtainStyledAttributes.getBoolean(WebSocketProtocol.PAYLOAD_SHORT, false)) {
            f(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            f(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            f(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            f(10);
        }
        this.f24967p0 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        w();
        this.f24943R.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        int i9 = 2;
        if (this.f24968q0) {
            viewGroup = this.f24966o0 ? (ViewGroup) layoutInflaterFrom.inflate(pe.hf.black20.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(pe.hf.black20.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f24967p0) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(pe.hf.black20.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f24965n0 = false;
            this.f24964m0 = false;
        } else if (this.f24964m0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(pe.hf.black20.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new d(context, typedValue.resourceId) : context).inflate(pe.hf.black20.R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC3047p0 interfaceC3047p0 = (InterfaceC3047p0) viewGroup.findViewById(pe.hf.black20.R.id.decor_content_parent);
            this.f24949X = interfaceC3047p0;
            interfaceC3047p0.setWindowCallback(this.f24943R.getCallback());
            if (this.f24965n0) {
                ((ActionBarOverlayLayout) this.f24949X).j(109);
            }
            if (this.f24962k0) {
                ((ActionBarOverlayLayout) this.f24949X).j(2);
            }
            if (this.f24963l0) {
                ((ActionBarOverlayLayout) this.f24949X).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f24964m0 + ", windowActionBarOverlay: " + this.f24965n0 + ", android:windowIsFloating: " + this.f24967p0 + ", windowActionModeOverlay: " + this.f24966o0 + ", windowNoTitle: " + this.f24968q0 + " }");
        }
        y yVar = new y(this, i8);
        WeakHashMap weakHashMap = N.f4843a;
        E.l(viewGroup, yVar);
        if (this.f24949X == null) {
            this.f24960i0 = (TextView) viewGroup.findViewById(pe.hf.black20.R.id.title);
        }
        boolean z7 = w1.f26407a;
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, new Object[0]);
        } catch (IllegalAccessException e8) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e8);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e9) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e9);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(pe.hf.black20.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f24943R.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f24943R.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new y(this, i9));
        this.f24959h0 = viewGroup;
        Object obj = this.f24941P;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f24948W;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC3047p0 interfaceC3047p1 = this.f24949X;
            if (interfaceC3047p1 != null) {
                interfaceC3047p1.setWindowTitle(title);
            } else {
                X x7 = this.f24946U;
                if (x7 != null) {
                    x7.L0(title);
                } else {
                    TextView textView = this.f24960i0;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f24959h0.findViewById(R.id.content);
        View decorView = this.f24943R.getDecorView();
        contentFrameLayout2.f8842M.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f24958g0 = true;
        J jZ = z(0);
        if (this.f24975x0 || jZ.f24915h != null) {
            return;
        }
        B(108);
    }

    public final void w() {
        if (this.f24943R == null) {
            Object obj = this.f24941P;
            if (obj instanceof Activity) {
                n(((Activity) obj).getWindow());
            }
        }
        if (this.f24943R == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final H x(Context context) {
        if (this.f24930D0 == null) {
            if (u.f27276K == null) {
                Context applicationContext = context.getApplicationContext();
                u.f27276K = new u(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f24930D0 = new F(this, u.f27276K);
        }
        return this.f24930D0;
    }

    public final J z(int i8) {
        J[] jArr = this.f24970s0;
        if (jArr == null || jArr.length <= i8) {
            J[] jArr2 = new J[i8 + 1];
            if (jArr != null) {
                System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
            }
            this.f24970s0 = jArr2;
            jArr = jArr2;
        }
        J j8 = jArr[i8];
        if (j8 != null) {
            return j8;
        }
        J j9 = new J();
        j9.f24908a = i8;
        j9.f24921n = false;
        jArr[i8] = j9;
        return j9;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (this.f24938L0 == null) {
            int[] iArr = a.f24695j;
            Context context2 = this.f24942Q;
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            String string = typedArrayObtainStyledAttributes.getString(116);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.f24938L0 = new O();
            } else {
                try {
                    this.f24938L0 = (O) context2.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f24938L0 = new O();
                }
            }
        }
        O o4 = this.f24938L0;
        int i8 = t1.f26387a;
        return o4.createView(view, str, context, attributeSet, false, false, true, false);
    }
}
