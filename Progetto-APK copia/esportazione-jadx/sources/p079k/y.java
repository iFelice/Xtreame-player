package p079k;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final o f25890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f25891c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25892d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f25893e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public View f25894f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f25896h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public z f25897i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public w f25898j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f25899k;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f25895g = 8388611;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final x f25900l = new x(this);

    public y(int i8, int i9, Context context, View view, o oVar, boolean z7) {
        this.f25889a = context;
        this.f25890b = oVar;
        this.f25894f = view;
        this.f25891c = z7;
        this.f25892d = i8;
        this.f25893e = i9;
    }

    public final w a() {
        w f8;
        if (this.f25898j == null) {
            Context context = this.f25889a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                f8 = new i(this.f25889a, this.f25894f, this.f25892d, this.f25893e, this.f25891c);
            } else {
                View view = this.f25894f;
                f8 = new F(this.f25892d, this.f25893e, this.f25889a, view, this.f25890b, this.f25891c);
            }
            f8.l(this.f25890b);
            f8.r(this.f25900l);
            f8.n(this.f25894f);
            f8.f(this.f25897i);
            f8.o(this.f25896h);
            f8.p(this.f25895g);
            this.f25898j = f8;
        }
        return this.f25898j;
    }

    public final boolean b() {
        w wVar = this.f25898j;
        return wVar != null && wVar.a();
    }

    public void c() {
        this.f25898j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f25899k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i8, int i9, boolean z7, boolean z8) {
        w wVarA = a();
        wVarA.s(z8);
        if (z7) {
            if ((Gravity.getAbsoluteGravity(this.f25895g, this.f25894f.getLayoutDirection()) & 7) == 5) {
                i8 -= this.f25894f.getWidth();
            }
            wVarA.q(i8);
            wVarA.t(i9);
            int i10 = (int) ((this.f25889a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            wVarA.f25887G = new Rect(i8 - i10, i9 - i10, i8 + i10, i9 + i10);
        }
        wVarA.h();
    }
}
