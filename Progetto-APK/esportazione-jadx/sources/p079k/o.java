package p079k;

import I.a;
import N.O;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import p093m.d;

/* JADX INFO: loaded from: classes.dex */
public class o implements a {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int[] f25820y = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Resources f25822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f25824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m f25825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f25826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ArrayList f25827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f25828h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f25829i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f25830j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f25831k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f25833m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Drawable f25834n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public View f25835o;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public q f25842v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f25844x;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f25832l = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f25836p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f25837q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f25838r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f25839s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ArrayList f25840t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f25841u = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f25843w = false;

    public o(Context context) {
        Resources resources;
        int identifier;
        boolean z7 = false;
        this.f25821a = context;
        Resources resources2 = context.getResources();
        this.f25822b = resources2;
        this.f25826f = new ArrayList();
        this.f25827g = new ArrayList();
        this.f25828h = true;
        this.f25829i = new ArrayList();
        this.f25830j = new ArrayList();
        this.f25831k = true;
        if (resources2.getConfiguration().keyboard != 1) {
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            Method method = O.f4849a;
            if (Build.VERSION.SDK_INT < 28 ? !((identifier = (resources = context.getResources()).getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android")) == 0 || !resources.getBoolean(identifier)) : d.n(viewConfiguration)) {
                z7 = true;
            }
        }
        this.f25824d = z7;
    }

    public final q a(int i8, int i9, int i10, CharSequence charSequence) {
        int i11;
        int i12 = ((-65536) & i10) >> 16;
        if (i12 < 0 || i12 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i13 = (f25820y[i12] << 16) | (65535 & i10);
        q qVar = new q(this, i8, i9, i10, i13, charSequence, this.f25832l);
        ArrayList arrayList = this.f25826f;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((q) arrayList.get(size)).f25854d <= i13) {
                i11 = size + 1;
                arrayList.add(i11, qVar);
                p(true);
                return qVar;
            }
        }
        i11 = 0;
        arrayList.add(i11, qVar);
        p(true);
        return qVar;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i8, int i9, int i10, ComponentName componentName, Intent[] intentArr, Intent intent, int i11, MenuItem[] menuItemArr) {
        int i12;
        PackageManager packageManager = this.f25821a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i11 & 1) == 0) {
            removeGroup(i8);
        }
        for (int i13 = 0; i13 < size; i13++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i13);
            int i14 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i14 < 0 ? intent : intentArr[i14]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            q qVarA = a(i8, i9, i10, resolveInfo.loadLabel(packageManager));
            qVarA.setIcon(resolveInfo.loadIcon(packageManager));
            qVarA.f25857g = intent2;
            if (menuItemArr != null && (i12 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i12] = qVarA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(A a8, Context context) {
        this.f25841u.add(new WeakReference(a8));
        a8.k(context, this);
        this.f25831k = true;
    }

    public final void c(boolean z7) {
        if (this.f25839s) {
            return;
        }
        this.f25839s = true;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f25841u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            A a8 = (A) weakReference.get();
            if (a8 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                a8.d(this, z7);
            }
        }
        this.f25839s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        q qVar = this.f25842v;
        if (qVar != null) {
            d(qVar);
        }
        this.f25826f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.f25834n = null;
        this.f25833m = null;
        this.f25835o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(q qVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f25841u;
        boolean zE = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f25842v == qVar) {
            w();
            for (WeakReference weakReference : copyOnWriteArrayList) {
                A a8 = (A) weakReference.get();
                if (a8 != null) {
                    zE = a8.e(qVar);
                    if (zE) {
                        break;
                    }
                } else {
                    copyOnWriteArrayList.remove(weakReference);
                }
            }
            v();
            if (zE) {
                this.f25842v = null;
            }
        }
        return zE;
    }

    public boolean e(o oVar, MenuItem menuItem) {
        m mVar = this.f25825e;
        return mVar != null && mVar.g(oVar, menuItem);
    }

    public boolean f(q qVar) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f25841u;
        boolean zB = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            A a8 = (A) weakReference.get();
            if (a8 != null) {
                zB = a8.b(qVar);
                if (zB) {
                    break;
                }
            } else {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
        v();
        if (zB) {
            this.f25842v = qVar;
        }
        return zB;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i8) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            q qVar = (q) arrayList.get(i9);
            if (qVar.f25851a == i8) {
                return qVar;
            }
            if (qVar.hasSubMenu() && (menuItemFindItem = qVar.f25865o.findItem(i8)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final q g(int i8, KeyEvent keyEvent) {
        ArrayList arrayList = this.f25840t;
        arrayList.clear();
        h(arrayList, i8, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (q) arrayList.get(0);
        }
        boolean zN = n();
        for (int i9 = 0; i9 < size; i9++) {
            q qVar = (q) arrayList.get(i9);
            char c8 = zN ? qVar.f25860j : qVar.f25858h;
            char[] cArr = keyData.meta;
            if ((c8 == cArr[0] && (metaState & 2) == 0) || ((c8 == cArr[2] && (metaState & 2) != 0) || (zN && c8 == '\b' && i8 == 67))) {
                return qVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i8) {
        return (MenuItem) this.f25826f.get(i8);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0069  */
    public final void h(ArrayList arrayList, int i8, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i8 == 67) {
            ArrayList arrayList2 = this.f25826f;
            int size = arrayList2.size();
            for (int i9 = 0; i9 < size; i9++) {
                q qVar = (q) arrayList2.get(i9);
                if (qVar.hasSubMenu()) {
                    qVar.f25865o.h(arrayList, i8, keyEvent);
                }
                char c8 = zN ? qVar.f25860j : qVar.f25858h;
                if ((modifiers & 69647) == ((zN ? qVar.f25861k : qVar.f25859i) & 69647) && c8 != 0) {
                    char[] cArr = keyData.meta;
                    if (c8 != cArr[0] && c8 != cArr[2]) {
                        if (zN && c8 == '\b') {
                            if (i8 == 67) {
                            }
                        }
                    }
                    if (qVar.isEnabled()) {
                        arrayList.add(qVar);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f25844x) {
            return true;
        }
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (((q) arrayList.get(i8)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f25831k) {
            CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f25841u;
            boolean zG = false;
            for (WeakReference weakReference : copyOnWriteArrayList) {
                A a8 = (A) weakReference.get();
                if (a8 == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zG |= a8.g();
                }
            }
            ArrayList arrayList = this.f25829i;
            ArrayList arrayList2 = this.f25830j;
            if (zG) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i8 = 0; i8 < size; i8++) {
                    q qVar = (q) arrayListL.get(i8);
                    if (qVar.f()) {
                        arrayList.add(qVar);
                    } else {
                        arrayList2.add(qVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f25831k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i8, KeyEvent keyEvent) {
        return g(i8, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public final ArrayList l() {
        boolean z7 = this.f25828h;
        ArrayList arrayList = this.f25827g;
        if (!z7) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f25826f;
        int size = arrayList2.size();
        for (int i8 = 0; i8 < size; i8++) {
            q qVar = (q) arrayList2.get(i8);
            if (qVar.isVisible()) {
                arrayList.add(qVar);
            }
        }
        this.f25828h = false;
        this.f25831k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f25843w;
    }

    public boolean n() {
        return this.f25823c;
    }

    public boolean o() {
        return this.f25824d;
    }

    public final void p(boolean z7) {
        if (this.f25836p) {
            this.f25837q = true;
            if (z7) {
                this.f25838r = true;
                return;
            }
            return;
        }
        if (z7) {
            this.f25828h = true;
            this.f25831k = true;
        }
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f25841u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        for (WeakReference weakReference : copyOnWriteArrayList) {
            A a8 = (A) weakReference.get();
            if (a8 == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                a8.i();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i8, int i9) {
        return q(findItem(i8), null, i9);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i8, KeyEvent keyEvent, int i9) {
        q qVarG = g(i8, keyEvent);
        boolean zQ = qVarG != null ? q(qVarG, null, i9) : false;
        if ((i9 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0018  */
    /* JADX WARN: Code duplicated, block: B:32:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0058  */
    /* JADX WARN: Code duplicated, block: B:37:0x005f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:45:0x0075  */
    /* JADX WARN: Code duplicated, block: B:47:0x0079  */
    /* JADX WARN: Code duplicated, block: B:50:0x0082  */
    /* JADX WARN: Code duplicated, block: B:53:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:79:0x00b1 A[SYNTHETIC] */
    public final boolean q(MenuItem menuItem, A a8, int i8) {
        r rVar;
        boolean zExpandActionView;
        r rVar2;
        boolean z7;
        G g8;
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList;
        A a9;
        q qVar = (q) menuItem;
        boolean zC = false;
        if (qVar == null || !qVar.isEnabled()) {
            return false;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = qVar.f25866p;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(qVar)) {
            o oVar = qVar.f25864n;
            if (oVar.e(oVar, qVar)) {
                zExpandActionView = true;
            } else {
                Intent intent = qVar.f25857g;
                if (intent != null) {
                    try {
                        oVar.f25821a.startActivity(intent);
                    } catch (ActivityNotFoundException e8) {
                        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e8);
                        rVar = qVar.f25848A;
                        if (rVar == null) {
                        }
                        zExpandActionView = false;
                        rVar2 = qVar.f25848A;
                        if (rVar2 == null) {
                            z7 = false;
                        } else {
                            z7 = false;
                        }
                        if (qVar.e()) {
                            zExpandActionView |= qVar.expandActionView();
                            if (zExpandActionView) {
                                c(true);
                            }
                        } else if (qVar.hasSubMenu()) {
                            if ((i8 & 4) == 0) {
                                c(false);
                            }
                            if (!qVar.hasSubMenu()) {
                                G g9 = new G(this.f25821a, this, qVar);
                                qVar.f25865o = g9;
                                g9.setHeaderTitle(qVar.f25855e);
                            }
                            g8 = qVar.f25865o;
                            if (z7) {
                                rVar2.f25879c.getClass();
                                rVar2.f25878b.onPrepareSubMenu(g8);
                            }
                            copyOnWriteArrayList = this.f25841u;
                            if (!copyOnWriteArrayList.isEmpty()) {
                                if (a8 != null) {
                                }
                                for (WeakReference weakReference : copyOnWriteArrayList) {
                                    a9 = (A) weakReference.get();
                                    if (a9 == null) {
                                        copyOnWriteArrayList.remove(weakReference);
                                    } else if (!zC) {
                                        zC = a9.c(g8);
                                    }
                                }
                            }
                            zExpandActionView |= zC;
                            if (!zExpandActionView) {
                                c(true);
                            }
                        } else {
                            if ((i8 & 4) == 0) {
                                c(false);
                            }
                            if (!qVar.hasSubMenu()) {
                                G g10 = new G(this.f25821a, this, qVar);
                                qVar.f25865o = g10;
                                g10.setHeaderTitle(qVar.f25855e);
                            }
                            g8 = qVar.f25865o;
                            if (z7) {
                                rVar2.f25879c.getClass();
                                rVar2.f25878b.onPrepareSubMenu(g8);
                            }
                            copyOnWriteArrayList = this.f25841u;
                            if (!copyOnWriteArrayList.isEmpty()) {
                                zC = a8 != null ? a8.c(g8) : false;
                                while (r8.hasNext()) {
                                    a9 = (A) weakReference.get();
                                    if (a9 == null) {
                                        copyOnWriteArrayList.remove(weakReference);
                                    } else if (!zC) {
                                        zC = a9.c(g8);
                                    }
                                }
                            }
                            zExpandActionView |= zC;
                            if (!zExpandActionView) {
                                c(true);
                            }
                        }
                        return zExpandActionView;
                    }
                    zExpandActionView = true;
                } else {
                    rVar = qVar.f25848A;
                    if (rVar == null && rVar.f25878b.onPerformDefaultAction()) {
                        zExpandActionView = true;
                    } else {
                        zExpandActionView = false;
                    }
                }
            }
        } else {
            zExpandActionView = true;
        }
        rVar2 = qVar.f25848A;
        if (rVar2 == null && rVar2.f25878b.hasSubMenu()) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (qVar.e()) {
            zExpandActionView |= qVar.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (qVar.hasSubMenu() || z7) {
            if ((i8 & 4) == 0) {
                c(false);
            }
            if (!qVar.hasSubMenu()) {
                G g11 = new G(this.f25821a, this, qVar);
                qVar.f25865o = g11;
                g11.setHeaderTitle(qVar.f25855e);
            }
            g8 = qVar.f25865o;
            if (z7) {
                rVar2.f25879c.getClass();
                rVar2.f25878b.onPrepareSubMenu(g8);
            }
            copyOnWriteArrayList = this.f25841u;
            if (!copyOnWriteArrayList.isEmpty()) {
                if (a8 != null) {
                }
                while (r8.hasNext()) {
                    a9 = (A) weakReference.get();
                    if (a9 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zC) {
                        zC = a9.c(g8);
                    }
                }
            }
            zExpandActionView |= zC;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i8 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(A a8) {
        CopyOnWriteArrayList<WeakReference> copyOnWriteArrayList = this.f25841u;
        for (WeakReference weakReference : copyOnWriteArrayList) {
            A a9 = (A) weakReference.get();
            if (a9 == null || a9 == a8) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i8) {
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        int i9 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                i10 = -1;
                break;
            } else if (((q) arrayList.get(i10)).f25852b == i8) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0) {
            int size2 = arrayList.size() - i10;
            while (true) {
                int i11 = i9 + 1;
                if (i9 >= size2 || ((q) arrayList.get(i10)).f25852b != i8) {
                    break;
                }
                if (i10 >= 0) {
                    ArrayList arrayList2 = this.f25826f;
                    if (i10 < arrayList2.size()) {
                        arrayList2.remove(i10);
                    }
                }
                i9 = i11;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i8) {
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                i9 = -1;
                break;
            } else if (((q) arrayList.get(i9)).f25851a == i8) {
                break;
            } else {
                i9++;
            }
        }
        if (i9 >= 0) {
            ArrayList arrayList2 = this.f25826f;
            if (i9 >= arrayList2.size()) {
                return;
            }
            arrayList2.remove(i9);
            p(true);
        }
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f25826f.size();
        for (int i8 = 0; i8 < size; i8++) {
            MenuItem item = getItem(i8);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((G) item.getSubMenu()).s(bundle);
            }
        }
        int i9 = bundle.getInt("android:menu:expandedactionview");
        if (i9 <= 0 || (menuItemFindItem = findItem(i9)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i8, boolean z7, boolean z8) {
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            q qVar = (q) arrayList.get(i9);
            if (qVar.f25852b == i8) {
                qVar.f25874x = (qVar.f25874x & (-5)) | (z8 ? 4 : 0);
                qVar.setCheckable(z7);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z7) {
        this.f25843w = z7;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i8, boolean z7) {
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            q qVar = (q) arrayList.get(i9);
            if (qVar.f25852b == i8) {
                qVar.setEnabled(z7);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i8, boolean z7) {
        ArrayList arrayList = this.f25826f;
        int size = arrayList.size();
        boolean z8 = false;
        for (int i9 = 0; i9 < size; i9++) {
            q qVar = (q) arrayList.get(i9);
            if (qVar.f25852b == i8) {
                int i10 = qVar.f25874x;
                int i11 = (i10 & (-9)) | (z7 ? 0 : 8);
                qVar.f25874x = i11;
                if (i10 != i11) {
                    z8 = true;
                }
            }
        }
        if (z8) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z7) {
        this.f25823c = z7;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f25826f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f25826f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i8 = 0; i8 < size; i8++) {
            MenuItem item = getItem(i8);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((G) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i8, CharSequence charSequence, int i9, Drawable drawable, View view) {
        if (view != null) {
            this.f25835o = view;
            this.f25833m = null;
            this.f25834n = null;
        } else {
            if (i8 > 0) {
                this.f25833m = this.f25822b.getText(i8);
            } else if (charSequence != null) {
                this.f25833m = charSequence;
            }
            if (i9 > 0) {
                this.f25834n = this.f25821a.getDrawable(i9);
            } else if (drawable != null) {
                this.f25834n = drawable;
            }
            this.f25835o = null;
        }
        p(false);
    }

    public final void v() {
        this.f25836p = false;
        if (this.f25837q) {
            this.f25837q = false;
            p(this.f25838r);
        }
    }

    public final void w() {
        if (this.f25836p) {
            return;
        }
        this.f25836p = true;
        this.f25837q = false;
        this.f25838r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i8) {
        return a(0, 0, 0, this.f25822b.getString(i8));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i8) {
        return addSubMenu(0, 0, 0, this.f25822b.getString(i8));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i8, int i9, int i10, CharSequence charSequence) {
        return a(i8, i9, i10, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i8, int i9, int i10, CharSequence charSequence) {
        q qVarA = a(i8, i9, i10, charSequence);
        G g8 = new G(this.f25821a, this, qVarA);
        qVarA.f25865o = g8;
        g8.setHeaderTitle(qVarA.f25855e);
        return g8;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i8, int i9, int i10, int i11) {
        return a(i8, i9, i10, this.f25822b.getString(i11));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i8, int i9, int i10, int i11) {
        return addSubMenu(i8, i9, i10, this.f25822b.getString(i11));
    }

    public o k() {
        return this;
    }
}
