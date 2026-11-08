package p071j;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import p079k.D;

/* JADX INFO: loaded from: classes.dex */
public final class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f25609b;

    public f(Context context, b bVar) {
        this.f25608a = context;
        this.f25609b = bVar;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f25609b.a();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f25609b.b();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new D(this.f25608a, this.f25609b.c());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f25609b.d();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f25609b.e();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f25609b.f25594G;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f25609b.f();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f25609b.f25595H;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f25609b.h();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f25609b.i();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f25609b.j(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f25609b.l(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f25609b.f25594G = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f25609b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z7) {
        this.f25609b.p(z7);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i8) {
        this.f25609b.k(i8);
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i8) {
        this.f25609b.n(i8);
    }
}
