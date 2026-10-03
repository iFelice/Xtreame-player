package p079k;

import I.b;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class v extends AbstractC3012d implements MenuItem {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f25885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Method f25886e;

    public v(Context context, b bVar) {
        super(context);
        if (bVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f25885d = bVar;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return this.f25885d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return this.f25885d.expandActionView();
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        r rVarB = this.f25885d.b();
        if (rVarB instanceof r) {
            return rVarB.f25878b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View actionView = this.f25885d.getActionView();
        return actionView instanceof s ? (View) ((s) actionView).f25880G : actionView;
    }

    @Override // android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f25885d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f25885d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f25885d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f25885d.getGroupId();
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f25885d.getIcon();
    }

    @Override // android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f25885d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f25885d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f25885d.getIntent();
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f25885d.getItemId();
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f25885d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f25885d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f25885d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f25885d.getOrder();
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f25885d.getSubMenu();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f25885d.getTitle();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        return this.f25885d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f25885d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f25885d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f25885d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return this.f25885d.isCheckable();
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return this.f25885d.isChecked();
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return this.f25885d.isEnabled();
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return this.f25885d.isVisible();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        r rVar = new r(this, actionProvider);
        if (actionProvider == null) {
            rVar = null;
        }
        this.f25885d.a(rVar);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new s(view);
        }
        this.f25885d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8) {
        this.f25885d.setAlphabeticShortcut(c8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z7) {
        this.f25885d.setCheckable(z7);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z7) {
        this.f25885d.setChecked(z7);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f25885d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z7) {
        this.f25885d.setEnabled(z7);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f25885d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f25885d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f25885d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f25885d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8) {
        this.f25885d.setNumericShortcut(c8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f25885d.setOnActionExpandListener(onActionExpandListener != null ? new t(this, onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f25885d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new u(this, onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9) {
        this.f25885d.setShortcut(c8, c9);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i8) {
        this.f25885d.setShowAsAction(i8);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i8) {
        this.f25885d.setShowAsActionFlags(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f25885d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f25885d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f25885d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z7) {
        return this.f25885d.setVisible(z7);
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c8, int i8) {
        this.f25885d.setAlphabeticShortcut(c8, i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i8) {
        this.f25885d.setIcon(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c8, int i8) {
        this.f25885d.setNumericShortcut(c8, i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c8, char c9, int i8, int i9) {
        this.f25885d.setShortcut(c8, c9, i8, i9);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i8) {
        this.f25885d.setTitle(i8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i8) {
        b bVar = this.f25885d;
        bVar.setActionView(i8);
        View actionView = bVar.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            bVar.setActionView(new s(actionView));
        }
        return this;
    }
}
