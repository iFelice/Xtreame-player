package p039f;

import D.f;
import J.g;
import Y.AbstractActivityC0409v;
import Z3.C;
import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.ArrayList;
import java.util.Objects;
import p071j.d;
import p071j.i;
import p071j.k;
import p086l.C3063y;
import p086l.o1;
import p086l.t1;
import p102n0.c;
import z4.q0;

/* JADX INFO: renamed from: f.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractActivityC3000o extends AbstractActivityC0409v implements InterfaceC3001p {

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public K f25105d0;

    public AbstractActivityC3000o() {
        this.f8580K.f6394b.c("androidx:appcompat", new C2998m(this));
        i(new C2999n(this));
    }

    @Override // android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        r();
        K k8 = (K) p();
        k8.v();
        ((ViewGroup) k8.f24959h0.findViewById(R.id.content)).addView(view, layoutParams);
        k8.f24944S.a(k8.f24943R.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0179  */
    /* JADX WARN: Code duplicated, block: B:104:0x0182  */
    /* JADX WARN: Code duplicated, block: B:106:0x0190  */
    /* JADX WARN: Code duplicated, block: B:109:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:112:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:115:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:118:0x01de  */
    /* JADX WARN: Code duplicated, block: B:121:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:124:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:127:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:131:0x020d  */
    /* JADX WARN: Code duplicated, block: B:45:0x0095  */
    /* JADX WARN: Code duplicated, block: B:49:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:68:0x0100  */
    /* JADX WARN: Code duplicated, block: B:69:0x0104  */
    /* JADX WARN: Code duplicated, block: B:71:0x010e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:77:0x0120  */
    /* JADX WARN: Code duplicated, block: B:80:0x0128  */
    /* JADX WARN: Code duplicated, block: B:83:0x0130  */
    /* JADX WARN: Code duplicated, block: B:86:0x0138  */
    /* JADX WARN: Code duplicated, block: B:89:0x0140  */
    /* JADX WARN: Code duplicated, block: B:92:0x014c  */
    /* JADX WARN: Code duplicated, block: B:95:0x015b  */
    /* JADX WARN: Code duplicated, block: B:98:0x016a  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        Configuration configuration;
        Configuration configuration2;
        d dVar;
        float f8;
        float f9;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        int i44;
        K k8 = (K) p();
        k8.f24973v0 = true;
        int i45 = k8.f24977z0;
        if (i45 == -100) {
            i45 = AbstractC3007w.f25118H;
        }
        int iC = k8.C(context, i45);
        int i46 = 0;
        if (AbstractC3007w.b(context) && AbstractC3007w.b(context)) {
            if (Build.VERSION.SDK_INT < 33) {
                synchronized (AbstractC3007w.f25125O) {
                    try {
                        g gVar = AbstractC3007w.f25119I;
                        if (gVar == null) {
                            if (AbstractC3007w.f25120J == null) {
                                AbstractC3007w.f25120J = g.b(f.b(context));
                            }
                            if (!AbstractC3007w.f25120J.f4053a.isEmpty()) {
                                AbstractC3007w.f25119I = AbstractC3007w.f25120J;
                            }
                        } else if (!gVar.equals(AbstractC3007w.f25120J)) {
                            g gVar2 = AbstractC3007w.f25119I;
                            AbstractC3007w.f25120J = gVar2;
                            f.a(context, gVar2.f4053a.a());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } else if (!AbstractC3007w.f25122L) {
                AbstractC3007w.f25117G.execute(new RunnableC3002q(context, i46));
            }
        }
        g gVarO = K.o(context);
        Configuration configuration3 = null;
        if (context instanceof ContextThemeWrapper) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(K.s(context, iC, gVarO, null, false));
            } catch (IllegalStateException unused) {
                if (context instanceof d) {
                    try {
                        ((d) context).a(K.s(context, iC, gVarO, null, false));
                    } catch (IllegalStateException unused2) {
                        if (K.f24926Q0) {
                            Configuration configuration4 = new Configuration();
                            configuration4.uiMode = -1;
                            configuration4.fontScale = 0.0f;
                            configuration = context.createConfigurationContext(configuration4).getResources().getConfiguration();
                            configuration2 = context.getResources().getConfiguration();
                            configuration.uiMode = configuration2.uiMode;
                            if (!configuration.equals(configuration2)) {
                                configuration3 = new Configuration();
                                configuration3.fontScale = 0.0f;
                                if (configuration.diff(configuration2) != 0) {
                                    f8 = configuration.fontScale;
                                    f9 = configuration2.fontScale;
                                    if (f8 != f9) {
                                        configuration3.fontScale = f9;
                                    }
                                    i8 = configuration.mcc;
                                    i9 = configuration2.mcc;
                                    if (i8 != i9) {
                                        configuration3.mcc = i9;
                                    }
                                    i10 = configuration.mnc;
                                    i11 = configuration2.mnc;
                                    if (i10 != i11) {
                                        configuration3.mnc = i11;
                                    }
                                    i12 = Build.VERSION.SDK_INT;
                                    if (i12 >= 24) {
                                        C.a(configuration, configuration2, configuration3);
                                    } else if (!Objects.equals(configuration.locale, configuration2.locale)) {
                                        configuration3.locale = configuration2.locale;
                                    }
                                    i13 = configuration.touchscreen;
                                    i14 = configuration2.touchscreen;
                                    if (i13 != i14) {
                                        configuration3.touchscreen = i14;
                                    }
                                    i15 = configuration.keyboard;
                                    i16 = configuration2.keyboard;
                                    if (i15 != i16) {
                                        configuration3.keyboard = i16;
                                    }
                                    i17 = configuration.keyboardHidden;
                                    i18 = configuration2.keyboardHidden;
                                    if (i17 != i18) {
                                        configuration3.keyboardHidden = i18;
                                    }
                                    i19 = configuration.navigation;
                                    i20 = configuration2.navigation;
                                    if (i19 != i20) {
                                        configuration3.navigation = i20;
                                    }
                                    i21 = configuration.navigationHidden;
                                    i22 = configuration2.navigationHidden;
                                    if (i21 != i22) {
                                        configuration3.navigationHidden = i22;
                                    }
                                    i23 = configuration.orientation;
                                    i24 = configuration2.orientation;
                                    if (i23 != i24) {
                                        configuration3.orientation = i24;
                                    }
                                    i25 = configuration.screenLayout & 15;
                                    i26 = configuration2.screenLayout & 15;
                                    if (i25 != i26) {
                                        configuration3.screenLayout |= i26;
                                    }
                                    i27 = configuration.screenLayout & 192;
                                    i28 = configuration2.screenLayout & 192;
                                    if (i27 != i28) {
                                        configuration3.screenLayout |= i28;
                                    }
                                    i29 = configuration.screenLayout & 48;
                                    i30 = configuration2.screenLayout & 48;
                                    if (i29 != i30) {
                                        configuration3.screenLayout |= i30;
                                    }
                                    i31 = configuration.screenLayout & 768;
                                    i32 = configuration2.screenLayout & 768;
                                    if (i31 != i32) {
                                        configuration3.screenLayout |= i32;
                                    }
                                    if (i12 >= 26) {
                                        if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                                            configuration3.colorMode |= configuration2.colorMode & 3;
                                        }
                                        if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                                            configuration3.colorMode |= configuration2.colorMode & 12;
                                        }
                                    }
                                    i33 = configuration.uiMode & 15;
                                    i34 = configuration2.uiMode & 15;
                                    if (i33 != i34) {
                                        configuration3.uiMode |= i34;
                                    }
                                    i35 = configuration.uiMode & 48;
                                    i36 = configuration2.uiMode & 48;
                                    if (i35 != i36) {
                                        configuration3.uiMode |= i36;
                                    }
                                    i37 = configuration.screenWidthDp;
                                    i38 = configuration2.screenWidthDp;
                                    if (i37 != i38) {
                                        configuration3.screenWidthDp = i38;
                                    }
                                    i39 = configuration.screenHeightDp;
                                    i40 = configuration2.screenHeightDp;
                                    if (i39 != i40) {
                                        configuration3.screenHeightDp = i40;
                                    }
                                    i41 = configuration.smallestScreenWidthDp;
                                    i42 = configuration2.smallestScreenWidthDp;
                                    if (i41 != i42) {
                                        configuration3.smallestScreenWidthDp = i42;
                                    }
                                    i43 = configuration.densityDpi;
                                    i44 = configuration2.densityDpi;
                                    if (i43 != i44) {
                                        configuration3.densityDpi = i44;
                                    }
                                }
                            }
                            Configuration configurationS = K.s(context, iC, gVarO, configuration3, true);
                            dVar = new d(context, pe.hf.black20.R.style.Theme_AppCompat_Empty);
                            dVar.a(configurationS);
                            try {
                                if (context.getTheme() != null) {
                                    C.j(dVar.getTheme());
                                }
                            } catch (NullPointerException unused3) {
                            }
                            context = dVar;
                        }
                    }
                } else if (K.f24926Q0) {
                    Configuration configuration5 = new Configuration();
                    configuration5.uiMode = -1;
                    configuration5.fontScale = 0.0f;
                    configuration = context.createConfigurationContext(configuration5).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (!configuration.equals(configuration2)) {
                        configuration3 = new Configuration();
                        configuration3.fontScale = 0.0f;
                        if (configuration.diff(configuration2) != 0) {
                            f8 = configuration.fontScale;
                            f9 = configuration2.fontScale;
                            if (f8 != f9) {
                                configuration3.fontScale = f9;
                            }
                            i8 = configuration.mcc;
                            i9 = configuration2.mcc;
                            if (i8 != i9) {
                                configuration3.mcc = i9;
                            }
                            i10 = configuration.mnc;
                            i11 = configuration2.mnc;
                            if (i10 != i11) {
                                configuration3.mnc = i11;
                            }
                            i12 = Build.VERSION.SDK_INT;
                            if (i12 >= 24) {
                                C.a(configuration, configuration2, configuration3);
                            } else if (!Objects.equals(configuration.locale, configuration2.locale)) {
                                configuration3.locale = configuration2.locale;
                            }
                            i13 = configuration.touchscreen;
                            i14 = configuration2.touchscreen;
                            if (i13 != i14) {
                                configuration3.touchscreen = i14;
                            }
                            i15 = configuration.keyboard;
                            i16 = configuration2.keyboard;
                            if (i15 != i16) {
                                configuration3.keyboard = i16;
                            }
                            i17 = configuration.keyboardHidden;
                            i18 = configuration2.keyboardHidden;
                            if (i17 != i18) {
                                configuration3.keyboardHidden = i18;
                            }
                            i19 = configuration.navigation;
                            i20 = configuration2.navigation;
                            if (i19 != i20) {
                                configuration3.navigation = i20;
                            }
                            i21 = configuration.navigationHidden;
                            i22 = configuration2.navigationHidden;
                            if (i21 != i22) {
                                configuration3.navigationHidden = i22;
                            }
                            i23 = configuration.orientation;
                            i24 = configuration2.orientation;
                            if (i23 != i24) {
                                configuration3.orientation = i24;
                            }
                            i25 = configuration.screenLayout & 15;
                            i26 = configuration2.screenLayout & 15;
                            if (i25 != i26) {
                                configuration3.screenLayout |= i26;
                            }
                            i27 = configuration.screenLayout & 192;
                            i28 = configuration2.screenLayout & 192;
                            if (i27 != i28) {
                                configuration3.screenLayout |= i28;
                            }
                            i29 = configuration.screenLayout & 48;
                            i30 = configuration2.screenLayout & 48;
                            if (i29 != i30) {
                                configuration3.screenLayout |= i30;
                            }
                            i31 = configuration.screenLayout & 768;
                            i32 = configuration2.screenLayout & 768;
                            if (i31 != i32) {
                                configuration3.screenLayout |= i32;
                            }
                            if (i12 >= 26) {
                                if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                                    configuration3.colorMode |= configuration2.colorMode & 3;
                                }
                                if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                                    configuration3.colorMode |= configuration2.colorMode & 12;
                                }
                            }
                            i33 = configuration.uiMode & 15;
                            i34 = configuration2.uiMode & 15;
                            if (i33 != i34) {
                                configuration3.uiMode |= i34;
                            }
                            i35 = configuration.uiMode & 48;
                            i36 = configuration2.uiMode & 48;
                            if (i35 != i36) {
                                configuration3.uiMode |= i36;
                            }
                            i37 = configuration.screenWidthDp;
                            i38 = configuration2.screenWidthDp;
                            if (i37 != i38) {
                                configuration3.screenWidthDp = i38;
                            }
                            i39 = configuration.screenHeightDp;
                            i40 = configuration2.screenHeightDp;
                            if (i39 != i40) {
                                configuration3.screenHeightDp = i40;
                            }
                            i41 = configuration.smallestScreenWidthDp;
                            i42 = configuration2.smallestScreenWidthDp;
                            if (i41 != i42) {
                                configuration3.smallestScreenWidthDp = i42;
                            }
                            i43 = configuration.densityDpi;
                            i44 = configuration2.densityDpi;
                            if (i43 != i44) {
                                configuration3.densityDpi = i44;
                            }
                        }
                    }
                    Configuration configurationS2 = K.s(context, iC, gVarO, configuration3, true);
                    dVar = new d(context, pe.hf.black20.R.style.Theme_AppCompat_Empty);
                    dVar.a(configurationS2);
                    if (context.getTheme() != null) {
                        C.j(dVar.getTheme());
                    }
                    context = dVar;
                }
            }
        } else if (context instanceof d) {
            ((d) context).a(K.s(context, iC, gVarO, null, false));
        } else if (K.f24926Q0) {
            Configuration configuration6 = new Configuration();
            configuration6.uiMode = -1;
            configuration6.fontScale = 0.0f;
            configuration = context.createConfigurationContext(configuration6).getResources().getConfiguration();
            configuration2 = context.getResources().getConfiguration();
            configuration.uiMode = configuration2.uiMode;
            if (!configuration.equals(configuration2)) {
                configuration3 = new Configuration();
                configuration3.fontScale = 0.0f;
                if (configuration.diff(configuration2) != 0) {
                    f8 = configuration.fontScale;
                    f9 = configuration2.fontScale;
                    if (f8 != f9) {
                        configuration3.fontScale = f9;
                    }
                    i8 = configuration.mcc;
                    i9 = configuration2.mcc;
                    if (i8 != i9) {
                        configuration3.mcc = i9;
                    }
                    i10 = configuration.mnc;
                    i11 = configuration2.mnc;
                    if (i10 != i11) {
                        configuration3.mnc = i11;
                    }
                    i12 = Build.VERSION.SDK_INT;
                    if (i12 >= 24) {
                        C.a(configuration, configuration2, configuration3);
                    } else if (!Objects.equals(configuration.locale, configuration2.locale)) {
                        configuration3.locale = configuration2.locale;
                    }
                    i13 = configuration.touchscreen;
                    i14 = configuration2.touchscreen;
                    if (i13 != i14) {
                        configuration3.touchscreen = i14;
                    }
                    i15 = configuration.keyboard;
                    i16 = configuration2.keyboard;
                    if (i15 != i16) {
                        configuration3.keyboard = i16;
                    }
                    i17 = configuration.keyboardHidden;
                    i18 = configuration2.keyboardHidden;
                    if (i17 != i18) {
                        configuration3.keyboardHidden = i18;
                    }
                    i19 = configuration.navigation;
                    i20 = configuration2.navigation;
                    if (i19 != i20) {
                        configuration3.navigation = i20;
                    }
                    i21 = configuration.navigationHidden;
                    i22 = configuration2.navigationHidden;
                    if (i21 != i22) {
                        configuration3.navigationHidden = i22;
                    }
                    i23 = configuration.orientation;
                    i24 = configuration2.orientation;
                    if (i23 != i24) {
                        configuration3.orientation = i24;
                    }
                    i25 = configuration.screenLayout & 15;
                    i26 = configuration2.screenLayout & 15;
                    if (i25 != i26) {
                        configuration3.screenLayout |= i26;
                    }
                    i27 = configuration.screenLayout & 192;
                    i28 = configuration2.screenLayout & 192;
                    if (i27 != i28) {
                        configuration3.screenLayout |= i28;
                    }
                    i29 = configuration.screenLayout & 48;
                    i30 = configuration2.screenLayout & 48;
                    if (i29 != i30) {
                        configuration3.screenLayout |= i30;
                    }
                    i31 = configuration.screenLayout & 768;
                    i32 = configuration2.screenLayout & 768;
                    if (i31 != i32) {
                        configuration3.screenLayout |= i32;
                    }
                    if (i12 >= 26) {
                        if ((configuration.colorMode & 3) != (configuration2.colorMode & 3)) {
                            configuration3.colorMode |= configuration2.colorMode & 3;
                        }
                        if ((configuration.colorMode & 12) != (configuration2.colorMode & 12)) {
                            configuration3.colorMode |= configuration2.colorMode & 12;
                        }
                    }
                    i33 = configuration.uiMode & 15;
                    i34 = configuration2.uiMode & 15;
                    if (i33 != i34) {
                        configuration3.uiMode |= i34;
                    }
                    i35 = configuration.uiMode & 48;
                    i36 = configuration2.uiMode & 48;
                    if (i35 != i36) {
                        configuration3.uiMode |= i36;
                    }
                    i37 = configuration.screenWidthDp;
                    i38 = configuration2.screenWidthDp;
                    if (i37 != i38) {
                        configuration3.screenWidthDp = i38;
                    }
                    i39 = configuration.screenHeightDp;
                    i40 = configuration2.screenHeightDp;
                    if (i39 != i40) {
                        configuration3.screenHeightDp = i40;
                    }
                    i41 = configuration.smallestScreenWidthDp;
                    i42 = configuration2.smallestScreenWidthDp;
                    if (i41 != i42) {
                        configuration3.smallestScreenWidthDp = i42;
                    }
                    i43 = configuration.densityDpi;
                    i44 = configuration2.densityDpi;
                    if (i43 != i44) {
                        configuration3.densityDpi = i44;
                    }
                }
            }
            Configuration configurationS3 = K.s(context, iC, gVarO, configuration3, true);
            dVar = new d(context, pe.hf.black20.R.style.Theme_AppCompat_Empty);
            dVar.a(configurationS3);
            if (context.getTheme() != null) {
                C.j(dVar.getTheme());
            }
            context = dVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        q();
        if (getWindow().hasFeature(0)) {
            super.closeOptionsMenu();
        }
    }

    @Override // D.h, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        keyEvent.getKeyCode();
        q();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final View findViewById(int i8) {
        K k8 = (K) p();
        k8.v();
        return k8.f24943R.findViewById(i8);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        K k8 = (K) p();
        if (k8.f24947V == null) {
            k8.A();
            X x7 = k8.f24946U;
            k8.f24947V = new i(x7 != null ? x7.H0() : k8.f24942Q);
        }
        return k8.f24947V;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i8 = t1.f26387a;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        K k8 = (K) p();
        if (k8.f24946U != null) {
            k8.A();
            k8.f24946U.getClass();
            k8.B(0);
        }
    }

    @Override // p000a.m, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) throws IllegalAccessException {
        super.onConfigurationChanged(configuration);
        K k8 = (K) p();
        if (k8.f24964m0 && k8.f24958g0) {
            k8.A();
            X x7 = k8.f24946U;
            if (x7 != null) {
                x7.K0(x7.f25004M.getResources().getBoolean(pe.hf.black20.R.bool.abc_action_bar_embed_tabs));
            }
        }
        C3063y c3063yA = C3063y.a();
        Context context = k8.f24942Q;
        synchronized (c3063yA) {
            c3063yA.f26420a.k(context);
        }
        k8.f24976y0 = new Configuration(k8.f24942Q.getResources().getConfiguration());
        k8.l(false, false);
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        p().d();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i8, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return super.onKeyDown(i8, keyEvent);
        }
        return true;
    }

    @Override // Y.AbstractActivityC0409v, p000a.m, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i8, MenuItem menuItem) {
        Intent intentH;
        if (super.onMenuItemSelected(i8, menuItem)) {
            return true;
        }
        X xQ = q();
        if (menuItem.getItemId() != 16908332 || xQ == null || (((o1) xQ.f25008Q).f26324b & 4) == 0 || (intentH = c.h(this)) == null) {
            return false;
        }
        if (!shouldUpRecreateTask(intentH)) {
            navigateUpTo(intentH);
            return true;
        }
        ArrayList arrayList = new ArrayList();
        Intent intentH2 = c.h(this);
        if (intentH2 == null) {
            intentH2 = c.h(this);
        }
        if (intentH2 != null) {
            ComponentName component = intentH2.getComponent();
            if (component == null) {
                component = intentH2.resolveActivity(getPackageManager());
            }
            int size = arrayList.size();
            try {
                Intent intentI = c.i(this, component);
                while (intentI != null) {
                    arrayList.add(size, intentI);
                    intentI = c.i(this, intentI.getComponent());
                }
                arrayList.add(intentH2);
            } catch (PackageManager.NameNotFoundException e8) {
                Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                throw new IllegalArgumentException(e8);
            }
        }
        if (arrayList.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        startActivities(intentArr, null);
        try {
            finishAffinity();
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean onMenuOpened(int i8, Menu menu) {
        return super.onMenuOpened(i8, menu);
    }

    @Override // p000a.m, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i8, Menu menu) {
        super.onPanelClosed(i8, menu);
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((K) p()).v();
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public final void onPostResume() {
        super.onPostResume();
        K k8 = (K) p();
        k8.A();
        X x7 = k8.f24946U;
        if (x7 != null) {
            x7.f25023f0 = true;
        }
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public void onStart() {
        super.onStart();
        ((K) p()).l(true, false);
    }

    @Override // Y.AbstractActivityC0409v, android.app.Activity
    public void onStop() {
        super.onStop();
        K k8 = (K) p();
        k8.A();
        X x7 = k8.f24946U;
        if (x7 != null) {
            x7.f25023f0 = false;
            k kVar = x7.f25022e0;
            if (kVar != null) {
                kVar.a();
            }
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i8) {
        super.onTitleChanged(charSequence, i8);
        p().k(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        q();
        if (getWindow().hasFeature(0)) {
            super.openOptionsMenu();
        }
    }

    public final AbstractC3007w p() {
        if (this.f25105d0 == null) {
            ExecutorC3005u executorC3005u = AbstractC3007w.f25117G;
            this.f25105d0 = new K(this, null, this, this);
        }
        return this.f25105d0;
    }

    public final X q() {
        K k8 = (K) p();
        k8.A();
        return k8.f24946U;
    }

    public final void r() {
        C.k(getWindow().getDecorView(), this);
        View decorView = getWindow().getDecorView();
        q0.h(decorView, "<this>");
        decorView.setTag(pe.hf.black20.R.id.view_tree_view_model_store_owner, this);
        E3.f.y(getWindow().getDecorView(), this);
        com.bumptech.glide.d.p(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public final void setContentView(int i8) {
        r();
        p().h(i8);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i8) {
        super.setTheme(i8);
        ((K) p()).f24927A0 = i8;
    }

    @Override // p000a.m, android.app.Activity
    public void setContentView(View view) {
        r();
        p().i(view);
    }

    @Override // android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        r();
        p().j(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }
}
