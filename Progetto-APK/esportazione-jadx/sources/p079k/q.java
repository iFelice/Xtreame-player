package p079k;

import I.b;
import J6.r;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import p039f.S;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public final class q implements b {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public r f25848A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public MenuItem.OnActionExpandListener f25849B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f25851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f25853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f25855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CharSequence f25856f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Intent f25857g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public char f25858h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public char f25860j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Drawable f25862l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final o f25864n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public G f25865o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f25866p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f25867q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CharSequence f25868r;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f25875y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public View f25876z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f25859i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f25861k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f25863m = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public ColorStateList f25869s = null;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f25870t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f25871u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f25872v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f25873w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f25874x = 16;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f25850C = false;

    public q(o oVar, int i8, int i9, int i10, int i11, CharSequence charSequence, int i12) {
        this.f25864n = oVar;
        this.f25851a = i9;
        this.f25852b = i8;
        this.f25853c = i10;
        this.f25854d = i11;
        this.f25855e = charSequence;
        this.f25875y = i12;
    }

    public static void c(int i8, int i9, String str, StringBuilder sb) {
        if ((i8 & i9) == i9) {
            sb.append(str);
        }
    }

    @Override // I.b
    public final b a(r rVar) {
        r rVar2 = this.f25848A;
        if (rVar2 != null) {
            rVar2.getClass();
        }
        this.f25876z = null;
        this.f25848A = rVar;
        this.f25864n.p(true);
        r rVar3 = this.f25848A;
        if (rVar3 != null) {
            rVar3.f25877a = new S(this, 3);
            rVar3.f25878b.setVisibilityListener(rVar3);
        }
        return this;
    }

    @Override // I.b
    public final r b() {
        return this.f25848A;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f25875y & 8) == 0) {
            return false;
        }
        if (this.f25876z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f25849B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f25864n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f25873w && (this.f25871u || this.f25872v)) {
            drawable = c.q(drawable).mutate();
            if (this.f25871u) {
                drawable.setTintList(this.f25869s);
            }
            if (this.f25872v) {
                drawable.setTintMode(this.f25870t);
            }
            this.f25873w = false;
        }
        return drawable;
    }

    public final boolean e() {
        r rVar;
        if ((this.f25875y & 8) == 0) {
            return false;
        }
        if (this.f25876z == null && (rVar = this.f25848A) != null) {
            this.f25876z = rVar.f25878b.onCreateActionView(this);
        }
        return this.f25876z != null;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f25849B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f25864n.f(this);
        }
        return false;
    }

    public final boolean f() {
        return (this.f25874x & 32) == 32;
    }

    public final void g(boolean z7) {
        if (z7) {
            this.f25874x |= 32;
        } else {
            this.f25874x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f25876z;
        if (view != null) {
            return view;
        }
        r rVar = this.f25848A;
        if (rVar == null) {
            return null;
        }
        View viewOnCreateActionView = rVar.f25878b.onCreateActionView(this);
        this.f25876z = viewOnCreateActionView;
        return viewOnCreateActionView;
    }

    @Override // I.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f25861k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f25860j;
    }

    @Override // I.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f25867q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f25852b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f25862l;
        if (drawable != null) {
            return d(drawable);
        }
        int i8 = this.f25863m;
        if (i8 == 0) {
            return null;
        }
        Drawable drawableH = r.h(this.f25864n.f25821a, i8);
        this.f25863m = 0;
        this.f25862l = drawableH;
        return d(drawableH);
    }

    @Override // I.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f25869s;
    }

    @Override // I.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f25870t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f25857g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f25851a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // I.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f25859i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f25858h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f25853c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f25865o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f25855e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f25856f;
        return charSequence != null ? charSequence : this.f25855e;
    }

    @Override // I.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f25868r;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f25865o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f25850C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f25874x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f25874x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f25874x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        r rVar = this.f25848A;
        if (rVar == null || !rVar.f25878b.overridesItemVisibility()) {
            return (this.f25874x & 8) == 0;
        }
        return (this.f25874x & 8) == 0 && this.f25848A.f25878b.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i8;
        this.f25876z = view;
        this.f25848A = null;
        if (view != null && view.getId() == -1 && (i8 = this.f25851a) > 0) {
            view.setId(i8);
        }
        o oVar = this.f25864n;
        oVar.f25831k = true;
        oVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8) {
        if (this.f25860j == c8) {
            return this;
        }
        this.f25860j = Character.toLowerCase(c8);
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z7) {
        int i8 = this.f25874x;
        int i9 = (z7 ? 1 : 0) | (i8 & (-2));
        this.f25874x = i9;
        if (i8 != i9) {
            this.f25864n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z7) {
        int i8 = this.f25874x;
        if ((i8 & 4) != 0) {
            o oVar = this.f25864n;
            oVar.getClass();
            ArrayList arrayList = oVar.f25826f;
            int size = arrayList.size();
            oVar.w();
            for (int i9 = 0; i9 < size; i9++) {
                q qVar = (q) arrayList.get(i9);
                if (qVar.f25852b == this.f25852b && (qVar.f25874x & 4) != 0 && qVar.isCheckable()) {
                    boolean z8 = qVar == this;
                    int i10 = qVar.f25874x;
                    int i11 = (z8 ? 2 : 0) | (i10 & (-3));
                    qVar.f25874x = i11;
                    if (i10 != i11) {
                        qVar.f25864n.p(false);
                    }
                }
            }
            oVar.v();
        } else {
            int i12 = (i8 & (-3)) | (z7 ? 2 : 0);
            this.f25874x = i12;
            if (i8 != i12) {
                this.f25864n.p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z7) {
        if (z7) {
            this.f25874x |= 16;
        } else {
            this.f25874x &= -17;
        }
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i8) {
        this.f25862l = null;
        this.f25863m = i8;
        this.f25873w = true;
        this.f25864n.p(false);
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f25869s = colorStateList;
        this.f25871u = true;
        this.f25873w = true;
        this.f25864n.p(false);
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f25870t = mode;
        this.f25872v = true;
        this.f25873w = true;
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f25857g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8) {
        if (this.f25858h == c8) {
            return this;
        }
        this.f25858h = c8;
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f25849B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f25866p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9) {
        this.f25858h = c8;
        this.f25860j = Character.toLowerCase(c9);
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i8) {
        int i9 = i8 & 3;
        if (i9 != 0 && i9 != 1 && i9 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f25875y = i8;
        o oVar = this.f25864n;
        oVar.f25831k = true;
        oVar.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i8) {
        setShowAsAction(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f25855e = charSequence;
        this.f25864n.p(false);
        G g8 = this.f25865o;
        if (g8 != null) {
            g8.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f25856f = charSequence;
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z7) {
        int i8 = this.f25874x;
        int i9 = (z7 ? 0 : 8) | (i8 & (-9));
        this.f25874x = i9;
        if (i8 != i9) {
            o oVar = this.f25864n;
            oVar.f25828h = true;
            oVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f25855e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // I.b, android.view.MenuItem
    public final b setContentDescription(CharSequence charSequence) {
        this.f25867q = charSequence;
        this.f25864n.p(false);
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final b setTooltipText(CharSequence charSequence) {
        this.f25868r = charSequence;
        this.f25864n.p(false);
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8, int i8) {
        if (this.f25860j == c8 && this.f25861k == i8) {
            return this;
        }
        this.f25860j = Character.toLowerCase(c8);
        this.f25861k = KeyEvent.normalizeMetaState(i8);
        this.f25864n.p(false);
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8, int i8) {
        if (this.f25858h == c8 && this.f25859i == i8) {
            return this;
        }
        this.f25858h = c8;
        this.f25859i = KeyEvent.normalizeMetaState(i8);
        this.f25864n.p(false);
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9, int i8, int i9) {
        this.f25858h = c8;
        this.f25859i = KeyEvent.normalizeMetaState(i8);
        this.f25860j = Character.toLowerCase(c9);
        this.f25861k = KeyEvent.normalizeMetaState(i9);
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i8) {
        setTitle(this.f25864n.f25821a.getString(i8));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f25863m = 0;
        this.f25862l = drawable;
        this.f25873w = true;
        this.f25864n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i8) {
        int i9;
        Context context = this.f25864n.f25821a;
        View viewInflate = LayoutInflater.from(context).inflate(i8, (ViewGroup) new LinearLayout(context), false);
        this.f25876z = viewInflate;
        this.f25848A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i9 = this.f25851a) > 0) {
            viewInflate.setId(i9);
        }
        o oVar = this.f25864n;
        oVar.f25831k = true;
        oVar.p(true);
        return this;
    }
}
