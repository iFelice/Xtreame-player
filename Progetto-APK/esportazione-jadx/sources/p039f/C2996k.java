package p039f;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;

/* JADX INFO: renamed from: f.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2996k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2992g f25100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f25101b;

    public C2996k(Context context) {
        this(context, DialogInterfaceC2997l.i(context, 0));
    }

    public DialogInterfaceC2997l create() {
        C2992g c2992g = this.f25100a;
        DialogInterfaceC2997l dialogInterfaceC2997l = new DialogInterfaceC2997l(c2992g.f25046a, this.f25101b);
        View view = c2992g.f25050e;
        C2995j c2995j = dialogInterfaceC2997l.f25102L;
        int i8 = 0;
        if (view != null) {
            c2995j.f25064B = view;
        } else {
            CharSequence charSequence = c2992g.f25049d;
            if (charSequence != null) {
                c2995j.f25078e = charSequence;
                TextView textView = c2995j.f25099z;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c2992g.f25048c;
            if (drawable != null) {
                c2995j.f25097x = drawable;
                c2995j.f25096w = 0;
                ImageView imageView = c2995j.f25098y;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c2995j.f25098y.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c2992g.f25051f;
        if (charSequence2 != null) {
            c2995j.d(-1, charSequence2, c2992g.f25052g);
        }
        CharSequence charSequence3 = c2992g.f25053h;
        if (charSequence3 != null) {
            c2995j.d(-2, charSequence3, c2992g.f25054i);
        }
        if (c2992g.f25056k != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c2992g.f25047b.inflate(c2995j.f25068F, (ViewGroup) null);
            int i9 = c2992g.f25059n ? c2995j.f25069G : c2995j.f25070H;
            ListAdapter c2994i = c2992g.f25056k;
            if (c2994i == null) {
                c2994i = new C2994i(c2992g.f25046a, i9, R.id.text1, null);
            }
            c2995j.f25065C = c2994i;
            c2995j.f25066D = c2992g.f25060o;
            if (c2992g.f25057l != null) {
                alertController$RecycleListView.setOnItemClickListener(new C2991f(i8, c2992g, c2995j));
            }
            if (c2992g.f25059n) {
                alertController$RecycleListView.setChoiceMode(1);
            }
            c2995j.f25079f = alertController$RecycleListView;
        }
        View view2 = c2992g.f25058m;
        if (view2 != null) {
            c2995j.f25080g = view2;
            c2995j.f25081h = 0;
            c2995j.f25082i = false;
        }
        dialogInterfaceC2997l.setCancelable(true);
        dialogInterfaceC2997l.setCanceledOnTouchOutside(true);
        dialogInterfaceC2997l.setOnCancelListener(null);
        dialogInterfaceC2997l.setOnDismissListener(null);
        DialogInterface.OnKeyListener onKeyListener = c2992g.f25055j;
        if (onKeyListener != null) {
            dialogInterfaceC2997l.setOnKeyListener(onKeyListener);
        }
        return dialogInterfaceC2997l;
    }

    public Context getContext() {
        return this.f25100a.f25046a;
    }

    public C2996k setNegativeButton(int i8, DialogInterface.OnClickListener onClickListener) {
        C2992g c2992g = this.f25100a;
        c2992g.f25053h = c2992g.f25046a.getText(i8);
        c2992g.f25054i = onClickListener;
        return this;
    }

    public C2996k setPositiveButton(int i8, DialogInterface.OnClickListener onClickListener) {
        C2992g c2992g = this.f25100a;
        c2992g.f25051f = c2992g.f25046a.getText(i8);
        c2992g.f25052g = onClickListener;
        return this;
    }

    public C2996k setTitle(CharSequence charSequence) {
        this.f25100a.f25049d = charSequence;
        return this;
    }

    public C2996k setView(View view) {
        this.f25100a.f25058m = view;
        return this;
    }

    public C2996k(Context context, int i8) {
        this.f25100a = new C2992g(new ContextThemeWrapper(context, DialogInterfaceC2997l.i(context, i8)));
        this.f25101b = i8;
    }
}
