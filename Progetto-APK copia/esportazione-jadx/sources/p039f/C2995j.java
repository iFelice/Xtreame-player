package p039f;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import p031e.a;
import pe.hf.black20.R;

/* JADX INFO: renamed from: f.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2995j {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public TextView f25063A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public View f25064B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public ListAdapter f25065C;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public final int f25067E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final int f25068F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f25069G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f25070H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f25071I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HandlerC2993h f25072J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f25074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final M f25075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Window f25076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f25077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f25078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AlertController$RecycleListView f25079f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public View f25080g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f25081h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Button f25083j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f25084k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Message f25085l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Drawable f25086m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Button f25087n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f25088o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Message f25089p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f25090q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Button f25091r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f25092s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Message f25093t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Drawable f25094u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public NestedScrollView f25095v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Drawable f25097x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ImageView f25098y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public TextView f25099z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f25082i = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f25096w = 0;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public int f25066D = -1;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ViewOnClickListenerC2988c f25073K = new ViewOnClickListenerC2988c(this, 0);

    public C2995j(Context context, M m7, Window window) {
        this.f25074a = context;
        this.f25075b = m7;
        this.f25076c = window;
        this.f25072J = new HandlerC2993h(m7);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, a.f24690e, R.attr.alertDialogStyle, 0);
        this.f25067E = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.getResourceId(2, 0);
        this.f25068F = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f25069G = typedArrayObtainStyledAttributes.getResourceId(7, 0);
        this.f25070H = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.f25071I = typedArrayObtainStyledAttributes.getBoolean(6, true);
        this.f25077d = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        m7.e().f(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static void b(View view, View view2, View view3) {
        if (view2 != null) {
            view2.setVisibility(view.canScrollVertically(-1) ? 0 : 4);
        }
        if (view3 != null) {
            view3.setVisibility(view.canScrollVertically(1) ? 0 : 4);
        }
    }

    public static ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void d(int i8, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message messageObtainMessage = onClickListener != null ? this.f25072J.obtainMessage(i8, onClickListener) : null;
        if (i8 == -3) {
            this.f25092s = charSequence;
            this.f25093t = messageObtainMessage;
            this.f25094u = null;
        } else if (i8 == -2) {
            this.f25088o = charSequence;
            this.f25089p = messageObtainMessage;
            this.f25090q = null;
        } else {
            if (i8 != -1) {
                throw new IllegalArgumentException("Button does not exist");
            }
            this.f25084k = charSequence;
            this.f25085l = messageObtainMessage;
            this.f25086m = null;
        }
    }
}
