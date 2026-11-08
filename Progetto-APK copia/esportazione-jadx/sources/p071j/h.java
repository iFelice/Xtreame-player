package p071j;

import I.b;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.google.protobuf.U2;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import p079k.q;
import p079k.r;
import p079k.v;

/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public CharSequence f25613A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public CharSequence f25614B;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final /* synthetic */ i f25617E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Menu f25618a;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f25625h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f25626i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f25627j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f25628k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public CharSequence f25629l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f25630m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public char f25631n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f25632o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public char f25633p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f25634q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f25635r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f25636s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f25637t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f25638u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f25639v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f25640w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f25641x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f25642y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public r f25643z;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ColorStateList f25615C = null;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public PorterDuff.Mode f25616D = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f25619b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f25620c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f25621d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f25622e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f25623f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f25624g = true;

    public h(i iVar, Menu menu) {
        this.f25617E = iVar;
        this.f25618a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f25617E.f25648c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e8) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e8);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z7 = false;
        menuItem.setChecked(this.f25636s).setVisible(this.f25637t).setEnabled(this.f25638u).setCheckable(this.f25635r >= 1).setTitleCondensed(this.f25629l).setIcon(this.f25630m);
        int i8 = this.f25639v;
        if (i8 >= 0) {
            menuItem.setShowAsAction(i8);
        }
        String str = this.f25642y;
        i iVar = this.f25617E;
        if (str != null) {
            if (iVar.f25648c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (iVar.f25649d == null) {
                iVar.f25649d = i.a(iVar.f25648c);
            }
            Object obj = iVar.f25649d;
            String str2 = this.f25642y;
            g gVar = new g();
            gVar.f25611a = obj;
            Class<?> cls = obj.getClass();
            try {
                gVar.f25612b = cls.getMethod(str2, g.f25610c);
                menuItem.setOnMenuItemClickListener(gVar);
            } catch (Exception e8) {
                StringBuilder sbP = U2.p("Couldn't resolve menu item onClick handler ", str2, " in class ");
                sbP.append(cls.getName());
                InflateException inflateException = new InflateException(sbP.toString());
                inflateException.initCause(e8);
                throw inflateException;
            }
        }
        if (this.f25635r >= 2) {
            if (menuItem instanceof q) {
                q qVar = (q) menuItem;
                qVar.f25874x = (qVar.f25874x & (-5)) | 4;
            } else if (menuItem instanceof v) {
                v vVar = (v) menuItem;
                try {
                    Method method = vVar.f25886e;
                    b bVar = vVar.f25885d;
                    if (method == null) {
                        vVar.f25886e = bVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    vVar.f25886e.invoke(bVar, Boolean.TRUE);
                } catch (Exception e9) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e9);
                }
            }
        }
        String str3 = this.f25641x;
        if (str3 != null) {
            menuItem.setActionView((View) a(str3, i.f25644e, iVar.f25646a));
            z7 = true;
        }
        int i9 = this.f25640w;
        if (i9 > 0) {
            if (z7) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i9);
            }
        }
        r rVar = this.f25643z;
        if (rVar != null) {
            if (menuItem instanceof b) {
                ((b) menuItem).a(rVar);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.f25613A;
        boolean z8 = menuItem instanceof b;
        if (z8) {
            ((b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            D.r.i(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.f25614B;
        if (z8) {
            ((b) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            D.r.q(menuItem, charSequence2);
        }
        char c8 = this.f25631n;
        int i10 = this.f25632o;
        if (z8) {
            ((b) menuItem).setAlphabeticShortcut(c8, i10);
        } else if (Build.VERSION.SDK_INT >= 26) {
            D.r.g(menuItem, c8, i10);
        }
        char c9 = this.f25633p;
        int i11 = this.f25634q;
        if (z8) {
            ((b) menuItem).setNumericShortcut(c9, i11);
        } else if (Build.VERSION.SDK_INT >= 26) {
            D.r.m(menuItem, c9, i11);
        }
        PorterDuff.Mode mode = this.f25616D;
        if (mode != null) {
            if (z8) {
                ((b) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                D.r.l(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.f25615C;
        if (colorStateList != null) {
            if (z8) {
                ((b) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                D.r.k(menuItem, colorStateList);
            }
        }
    }
}
