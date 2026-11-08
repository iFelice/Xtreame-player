package p086l;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: loaded from: classes.dex */
public final class o1 implements InterfaceC3049q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Toolbar f26323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f26324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f26325c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Drawable f26326d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Drawable f26327e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Drawable f26328f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f26329g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public CharSequence f26330h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f26331i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CharSequence f26332j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Window.Callback f26333k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f26334l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C3042n f26335m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f26336n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Drawable f26337o;

    public final void a(int i8) {
        View view;
        int i9 = this.f26324b ^ i8;
        this.f26324b = i8;
        if (i9 != 0) {
            if ((i9 & 4) != 0) {
                if ((i8 & 4) != 0) {
                    b();
                }
                int i10 = this.f26324b & 4;
                Toolbar toolbar = this.f26323a;
                if (i10 != 0) {
                    Drawable drawable = this.f26328f;
                    if (drawable == null) {
                        drawable = this.f26337o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i9 & 3) != 0) {
                c();
            }
            int i11 = i9 & 8;
            Toolbar toolbar2 = this.f26323a;
            if (i11 != 0) {
                if ((i8 & 8) != 0) {
                    toolbar2.setTitle(this.f26330h);
                    toolbar2.setSubtitle(this.f26331i);
                } else {
                    toolbar2.setTitle((CharSequence) null);
                    toolbar2.setSubtitle((CharSequence) null);
                }
            }
            if ((i9 & 16) == 0 || (view = this.f26325c) == null) {
                return;
            }
            if ((i8 & 16) != 0) {
                toolbar2.addView(view);
            } else {
                toolbar2.removeView(view);
            }
        }
    }

    public final void b() {
        if ((this.f26324b & 4) != 0) {
            boolean zIsEmpty = TextUtils.isEmpty(this.f26332j);
            Toolbar toolbar = this.f26323a;
            if (zIsEmpty) {
                toolbar.setNavigationContentDescription(this.f26336n);
            } else {
                toolbar.setNavigationContentDescription(this.f26332j);
            }
        }
    }

    public final void c() {
        Drawable drawable;
        int i8 = this.f26324b;
        if ((i8 & 2) == 0) {
            drawable = null;
        } else if ((i8 & 1) == 0 || (drawable = this.f26327e) == null) {
            drawable = this.f26326d;
        }
        this.f26323a.setLogo(drawable);
    }
}
