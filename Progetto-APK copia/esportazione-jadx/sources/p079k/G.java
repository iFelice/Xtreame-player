package p079k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class G extends o implements SubMenu {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final q f25746A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final o f25747z;

    public G(Context context, o oVar, q qVar) {
        super(context);
        this.f25747z = oVar;
        this.f25746A = qVar;
    }

    @Override // p079k.o
    public final boolean d(q qVar) {
        return this.f25747z.d(qVar);
    }

    @Override // p079k.o
    public final boolean e(o oVar, MenuItem menuItem) {
        return super.e(oVar, menuItem) || this.f25747z.e(oVar, menuItem);
    }

    @Override // p079k.o
    public final boolean f(q qVar) {
        return this.f25747z.f(qVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f25746A;
    }

    @Override // p079k.o
    public final String j() {
        q qVar = this.f25746A;
        int i8 = qVar != null ? qVar.f25851a : 0;
        if (i8 == 0) {
            return null;
        }
        return r.f("android:menu:actionviewstates:", i8);
    }

    @Override // p079k.o
    public final o k() {
        return this.f25747z.k();
    }

    @Override // p079k.o
    public final boolean m() {
        return this.f25747z.m();
    }

    @Override // p079k.o
    public final boolean n() {
        return this.f25747z.n();
    }

    @Override // p079k.o
    public final boolean o() {
        return this.f25747z.o();
    }

    @Override // p079k.o, android.view.Menu
    public final void setGroupDividerEnabled(boolean z7) {
        this.f25747z.setGroupDividerEnabled(z7);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i8) {
        u(0, null, i8, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i8) {
        u(i8, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f25746A.setIcon(drawable);
        return this;
    }

    @Override // p079k.o, android.view.Menu
    public final void setQwertyMode(boolean z7) {
        this.f25747z.setQwertyMode(z7);
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i8) {
        this.f25746A.setIcon(i8);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }
}
