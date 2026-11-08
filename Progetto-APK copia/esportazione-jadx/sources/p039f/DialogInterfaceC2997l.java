package p039f;

import N.F;
import N.N;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import java.util.WeakHashMap;
import p086l.D0;
import pe.hf.black20.R;

/* JADX INFO: renamed from: f.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceC2997l extends M implements DialogInterface {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C2995j f25102L;

    public DialogInterfaceC2997l(Context context, int i8) {
        super(context, i(context, i8));
        this.f25102L = new C2995j(getContext(), this, getWindow());
    }

    public static int i(Context context, int i8) {
        if (((i8 >>> 24) & 255) >= 1) {
            return i8;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // p039f.M, p000a.n, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i8;
        View view;
        ListAdapter listAdapter;
        View view2;
        View viewFindViewById;
        super.onCreate(bundle);
        C2995j c2995j = this.f25102L;
        c2995j.f25075b.setContentView(c2995j.f25067E);
        Window window = c2995j.f25076c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View viewInflate = c2995j.f25080g;
        Context context = c2995j.f25074a;
        if (viewInflate == null) {
            viewInflate = c2995j.f25081h != 0 ? LayoutInflater.from(context).inflate(c2995j.f25081h, viewGroup, false) : null;
        }
        boolean z7 = viewInflate != null;
        if (!z7 || !C2995j.a(viewInflate)) {
            window.setFlags(131072, 131072);
        }
        if (z7) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (c2995j.f25082i) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (c2995j.f25079f != null) {
                ((LinearLayout.LayoutParams) ((D0) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupC = C2995j.c(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupC2 = C2995j.c(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupC3 = C2995j.c(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        c2995j.f25095v = nestedScrollView;
        nestedScrollView.setFocusable(false);
        c2995j.f25095v.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupC2.findViewById(android.R.id.message);
        c2995j.f25063A = textView;
        if (textView != null) {
            textView.setVisibility(8);
            c2995j.f25095v.removeView(c2995j.f25063A);
            if (c2995j.f25079f != null) {
                ViewGroup viewGroup2 = (ViewGroup) c2995j.f25095v.getParent();
                int iIndexOfChild = viewGroup2.indexOfChild(c2995j.f25095v);
                viewGroup2.removeViewAt(iIndexOfChild);
                viewGroup2.addView(c2995j.f25079f, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
            } else {
                viewGroupC2.setVisibility(8);
            }
        }
        Button button = (Button) viewGroupC3.findViewById(android.R.id.button1);
        c2995j.f25083j = button;
        ViewOnClickListenerC2988c viewOnClickListenerC2988c = c2995j.f25073K;
        button.setOnClickListener(viewOnClickListenerC2988c);
        boolean zIsEmpty = TextUtils.isEmpty(c2995j.f25084k);
        int i9 = c2995j.f25077d;
        if (zIsEmpty && c2995j.f25086m == null) {
            c2995j.f25083j.setVisibility(8);
            i8 = 0;
        } else {
            c2995j.f25083j.setText(c2995j.f25084k);
            Drawable drawable = c2995j.f25086m;
            if (drawable != null) {
                drawable.setBounds(0, 0, i9, i9);
                c2995j.f25083j.setCompoundDrawables(c2995j.f25086m, null, null, null);
            }
            c2995j.f25083j.setVisibility(0);
            i8 = 1;
        }
        Button button2 = (Button) viewGroupC3.findViewById(android.R.id.button2);
        c2995j.f25087n = button2;
        button2.setOnClickListener(viewOnClickListenerC2988c);
        if (TextUtils.isEmpty(c2995j.f25088o) && c2995j.f25090q == null) {
            c2995j.f25087n.setVisibility(8);
        } else {
            c2995j.f25087n.setText(c2995j.f25088o);
            Drawable drawable2 = c2995j.f25090q;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i9, i9);
                c2995j.f25087n.setCompoundDrawables(c2995j.f25090q, null, null, null);
            }
            c2995j.f25087n.setVisibility(0);
            i8 |= 2;
        }
        Button button3 = (Button) viewGroupC3.findViewById(android.R.id.button3);
        c2995j.f25091r = button3;
        button3.setOnClickListener(viewOnClickListenerC2988c);
        if (TextUtils.isEmpty(c2995j.f25092s) && c2995j.f25094u == null) {
            c2995j.f25091r.setVisibility(8);
            view = null;
        } else {
            c2995j.f25091r.setText(c2995j.f25092s);
            Drawable drawable3 = c2995j.f25094u;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, i9, i9);
                view = null;
                c2995j.f25091r.setCompoundDrawables(c2995j.f25094u, null, null, null);
            } else {
                view = null;
            }
            c2995j.f25091r.setVisibility(0);
            i8 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i8 == 1) {
                Button button4 = c2995j.f25083j;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i8 == 2) {
                Button button5 = c2995j.f25087n;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i8 == 4) {
                Button button6 = c2995j.f25091r;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i8 == 0) {
            viewGroupC3.setVisibility(8);
        }
        if (c2995j.f25064B != null) {
            viewGroupC.addView(c2995j.f25064B, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            c2995j.f25098y = (ImageView) window.findViewById(android.R.id.icon);
            if ((!TextUtils.isEmpty(c2995j.f25078e)) && c2995j.f25071I) {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                c2995j.f25099z = textView2;
                textView2.setText(c2995j.f25078e);
                int i10 = c2995j.f25096w;
                if (i10 != 0) {
                    c2995j.f25098y.setImageResource(i10);
                } else {
                    Drawable drawable4 = c2995j.f25097x;
                    if (drawable4 != null) {
                        c2995j.f25098y.setImageDrawable(drawable4);
                    } else {
                        c2995j.f25099z.setPadding(c2995j.f25098y.getPaddingLeft(), c2995j.f25098y.getPaddingTop(), c2995j.f25098y.getPaddingRight(), c2995j.f25098y.getPaddingBottom());
                        c2995j.f25098y.setVisibility(8);
                    }
                }
            } else {
                window.findViewById(R.id.title_template).setVisibility(8);
                c2995j.f25098y.setVisibility(8);
                viewGroupC.setVisibility(8);
            }
        }
        boolean z8 = viewGroup.getVisibility() != 8;
        int i11 = (viewGroupC == null || viewGroupC.getVisibility() == 8) ? 0 : 1;
        boolean z9 = viewGroupC3.getVisibility() != 8;
        if (!z9 && (viewFindViewById = viewGroupC2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i11 != 0) {
            NestedScrollView nestedScrollView2 = c2995j.f25095v;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = c2995j.f25079f != null ? viewGroupC.findViewById(R.id.titleDividerNoCustom) : view;
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupC2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = c2995j.f25079f;
        if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
            alertController$RecycleListView.getClass();
            if (!z9 || i11 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i11 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f8728G, alertController$RecycleListView.getPaddingRight(), z9 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f8729H);
            }
        }
        if (!z8) {
            View view3 = c2995j.f25079f;
            if (view3 == null) {
                view3 = c2995j.f25095v;
            }
            if (view3 != null) {
                int i12 = i11 | (z9 ? 2 : 0);
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                int i13 = Build.VERSION.SDK_INT;
                if (i13 >= 23) {
                    WeakHashMap weakHashMap = N.f4843a;
                    if (i13 >= 23) {
                        F.b(view3, i12, 3);
                    }
                    if (viewFindViewById11 != null) {
                        viewGroupC2.removeView(viewFindViewById11);
                    }
                    if (viewFindViewById12 != null) {
                        viewGroupC2.removeView(viewFindViewById12);
                    }
                } else {
                    if (viewFindViewById11 != null && (i12 & 1) == 0) {
                        viewGroupC2.removeView(viewFindViewById11);
                        viewFindViewById11 = view;
                    }
                    if (viewFindViewById12 == null || (i12 & 2) != 0) {
                        view2 = viewFindViewById12;
                    } else {
                        viewGroupC2.removeView(viewFindViewById12);
                        view2 = view;
                    }
                    if (viewFindViewById11 != null || view2 != null) {
                        AlertController$RecycleListView alertController$RecycleListView2 = c2995j.f25079f;
                        if (alertController$RecycleListView2 != null) {
                            alertController$RecycleListView2.setOnScrollListener(new C2990e(viewFindViewById11, view2));
                            c2995j.f25079f.post(new RunnableC2989d(c2995j, viewFindViewById11, view2, 1));
                        } else {
                            if (viewFindViewById11 != null) {
                                viewGroupC2.removeView(viewFindViewById11);
                            }
                            if (view2 != null) {
                                viewGroupC2.removeView(view2);
                            }
                        }
                    }
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView3 = c2995j.f25079f;
        if (alertController$RecycleListView3 == null || (listAdapter = c2995j.f25065C) == null) {
            return;
        }
        alertController$RecycleListView3.setAdapter(listAdapter);
        int i14 = c2995j.f25066D;
        if (i14 > -1) {
            alertController$RecycleListView3.setItemChecked(i14, true);
            alertController$RecycleListView3.setSelection(i14);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i8, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f25102L.f25095v;
        if (nestedScrollView == null || !nestedScrollView.i(keyEvent)) {
            return super.onKeyDown(i8, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i8, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f25102L.f25095v;
        if (nestedScrollView == null || !nestedScrollView.i(keyEvent)) {
            return super.onKeyUp(i8, keyEvent);
        }
        return true;
    }

    @Override // p039f.M, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        C2995j c2995j = this.f25102L;
        c2995j.f25078e = charSequence;
        TextView textView = c2995j.f25099z;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
