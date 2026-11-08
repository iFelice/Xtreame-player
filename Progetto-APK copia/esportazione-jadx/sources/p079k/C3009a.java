package p079k;

import I.b;
import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p102n0.c;

/* JADX INFO: renamed from: k.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3009a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CharSequence f25748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CharSequence f25749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Intent f25750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public char f25751d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public char f25753f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Drawable f25755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f25756i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f25757j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f25758k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f25752e = 4096;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f25754g = 4096;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f25759l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f25760m = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f25761n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f25762o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f25763p = 16;

    public C3009a(Context context, CharSequence charSequence) {
        this.f25756i = context;
        this.f25748a = charSequence;
    }

    @Override // I.b
    public final b a(r rVar) {
        throw new UnsupportedOperationException();
    }

    @Override // I.b
    public final r b() {
        return null;
    }

    public final void c() {
        Drawable drawable = this.f25755h;
        if (drawable != null) {
            if (this.f25761n || this.f25762o) {
                Drawable drawableQ = c.q(drawable);
                this.f25755h = drawableQ;
                Drawable drawableMutate = drawableQ.mutate();
                this.f25755h = drawableMutate;
                if (this.f25761n) {
                    drawableMutate.setTintList(this.f25759l);
                }
                if (this.f25762o) {
                    this.f25755h.setTintMode(this.f25760m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // I.b, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f25754g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f25753f;
    }

    @Override // I.b, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f25757j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f25755h;
    }

    @Override // I.b, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f25759l;
    }

    @Override // I.b, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f25760m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f25750c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // I.b, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f25752e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f25751d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f25748a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f25749b;
        return charSequence != null ? charSequence : this.f25748a;
    }

    @Override // I.b, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f25758k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f25763p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f25763p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f25763p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f25763p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8) {
        this.f25753f = Character.toLowerCase(c8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z7) {
        this.f25763p = (z7 ? 1 : 0) | (this.f25763p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z7) {
        this.f25763p = (z7 ? 2 : 0) | (this.f25763p & (-3));
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final b setContentDescription(CharSequence charSequence) {
        this.f25757j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z7) {
        this.f25763p = (z7 ? 16 : 0) | (this.f25763p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f25755h = drawable;
        c();
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f25759l = colorStateList;
        this.f25761n = true;
        c();
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f25760m = mode;
        this.f25762o = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f25750c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8) {
        this.f25751d = c8;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9) {
        this.f25751d = c8;
        this.f25753f = Character.toLowerCase(c9);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f25748a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f25749b = charSequence;
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final b setTooltipText(CharSequence charSequence) {
        this.f25758k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z7) {
        this.f25763p = (this.f25763p & 8) | (z7 ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i8) {
        throw new UnsupportedOperationException();
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8, int i8) {
        this.f25753f = Character.toLowerCase(c8);
        this.f25754g = KeyEvent.normalizeMetaState(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f25757j = charSequence;
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8, int i8) {
        this.f25751d = c8;
        this.f25752e = KeyEvent.normalizeMetaState(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i8) {
        this.f25748a = this.f25756i.getResources().getString(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f25758k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i8) {
        this.f25755h = this.f25756i.getDrawable(i8);
        c();
        return this;
    }

    @Override // I.b, android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9, int i8, int i9) {
        this.f25751d = c8;
        this.f25752e = KeyEvent.normalizeMetaState(i8);
        this.f25753f = Character.toLowerCase(c9);
        this.f25754g = KeyEvent.normalizeMetaState(i9);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i8) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i8) {
        return this;
    }
}
