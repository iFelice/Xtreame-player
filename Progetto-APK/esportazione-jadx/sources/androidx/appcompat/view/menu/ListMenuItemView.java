package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import okhttp3.HttpUrl;
import p031e.a;
import p079k.B;
import p079k.o;
import p079k.q;
import p096m2.u;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements B, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public q f8743G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ImageView f8744H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public RadioButton f8745I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public TextView f8746J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public CheckBox f8747K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public TextView f8748L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ImageView f8749M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public ImageView f8750N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public LinearLayout f8751O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Drawable f8752P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final int f8753Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Context f8754R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f8755S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Drawable f8756T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final boolean f8757U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public LayoutInflater f8758V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f8759W;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        u uVarJ = u.J(getContext(), attributeSet, a.f24703r, R.attr.listMenuViewStyle, 0);
        this.f8752P = uVarJ.s(5);
        this.f8753Q = uVarJ.z(1, -1);
        this.f8755S = uVarJ.n(7, false);
        this.f8754R = context;
        this.f8756T = uVarJ.s(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f8757U = typedArrayObtainStyledAttributes.hasValue(0);
        uVarJ.P();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f8758V == null) {
            this.f8758V = LayoutInflater.from(getContext());
        }
        return this.f8758V;
    }

    private void setSubMenuArrowVisible(boolean z7) {
        ImageView imageView = this.f8749M;
        if (imageView != null) {
            imageView.setVisibility(z7 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f8750N;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f8750N.getLayoutParams();
        rect.top = this.f8750N.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0038  */
    /* JADX WARN: Code duplicated, block: B:25:0x005a  */
    @Override // p079k.B
    public final void c(q qVar) {
        boolean z7;
        int i8;
        String string;
        this.f8743G = qVar;
        setVisibility(qVar.isVisible() ? 0 : 8);
        setTitle(qVar.f25855e);
        setCheckable(qVar.isCheckable());
        if (qVar.f25864n.o()) {
            if ((qVar.f25864n.n() ? qVar.f25860j : qVar.f25858h) != 0) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            z7 = false;
        }
        qVar.f25864n.n();
        if (z7) {
            q qVar2 = this.f8743G;
            if (qVar2.f25864n.o()) {
                i8 = (qVar2.f25864n.n() ? qVar2.f25860j : qVar2.f25858h) == 0 ? 8 : 0;
            }
        }
        if (i8 == 0) {
            TextView textView = this.f8748L;
            q qVar3 = this.f8743G;
            char c8 = qVar3.f25864n.n() ? qVar3.f25860j : qVar3.f25858h;
            if (c8 == 0) {
                string = HttpUrl.FRAGMENT_ENCODE_SET;
            } else {
                o oVar = qVar3.f25864n;
                Resources resources = oVar.f25821a.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(oVar.f25821a).hasPermanentMenuKey()) {
                    sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i9 = oVar.n() ? qVar3.f25861k : qVar3.f25859i;
                q.c(i9, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label), sb);
                q.c(i9, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label), sb);
                q.c(i9, 2, resources.getString(R.string.abc_menu_alt_shortcut_label), sb);
                q.c(i9, 1, resources.getString(R.string.abc_menu_shift_shortcut_label), sb);
                q.c(i9, 4, resources.getString(R.string.abc_menu_sym_shortcut_label), sb);
                q.c(i9, 8, resources.getString(R.string.abc_menu_function_shortcut_label), sb);
                if (c8 == '\b') {
                    sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (c8 == '\n') {
                    sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (c8 != ' ') {
                    sb.append(c8);
                } else {
                    sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.f8748L.getVisibility() != i8) {
            this.f8748L.setVisibility(i8);
        }
        setIcon(qVar.getIcon());
        setEnabled(qVar.isEnabled());
        setSubMenuArrowVisible(qVar.hasSubMenu());
        setContentDescription(qVar.f25867q);
    }

    @Override // p079k.B
    public q getItemData() {
        return this.f8743G;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f8752P);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f8746J = textView;
        int i8 = this.f8753Q;
        if (i8 != -1) {
            textView.setTextAppearance(this.f8754R, i8);
        }
        this.f8748L = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f8749M = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f8756T);
        }
        this.f8750N = (ImageView) findViewById(R.id.group_divider);
        this.f8751O = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        if (this.f8744H != null && this.f8755S) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f8744H.getLayoutParams();
            int i10 = layoutParams.height;
            if (i10 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i10;
            }
        }
        super.onMeasure(i8, i9);
    }

    public void setCheckable(boolean z7) {
        CompoundButton compoundButton;
        View view;
        if (!z7 && this.f8745I == null && this.f8747K == null) {
            return;
        }
        if ((this.f8743G.f25874x & 4) != 0) {
            if (this.f8745I == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f8745I = radioButton;
                LinearLayout linearLayout = this.f8751O;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f8745I;
            view = this.f8747K;
        } else {
            if (this.f8747K == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f8747K = checkBox;
                LinearLayout linearLayout2 = this.f8751O;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f8747K;
            view = this.f8745I;
        }
        if (z7) {
            compoundButton.setChecked(this.f8743G.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f8747K;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f8745I;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z7) {
        CompoundButton compoundButton;
        if ((this.f8743G.f25874x & 4) != 0) {
            if (this.f8745I == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f8745I = radioButton;
                LinearLayout linearLayout = this.f8751O;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f8745I;
        } else {
            if (this.f8747K == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f8747K = checkBox;
                LinearLayout linearLayout2 = this.f8751O;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f8747K;
        }
        compoundButton.setChecked(z7);
    }

    public void setForceShowIcon(boolean z7) {
        this.f8759W = z7;
        this.f8755S = z7;
    }

    public void setGroupDividerEnabled(boolean z7) {
        ImageView imageView = this.f8750N;
        if (imageView != null) {
            imageView.setVisibility((this.f8757U || !z7) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        this.f8743G.f25864n.getClass();
        boolean z7 = this.f8759W;
        if (z7 || this.f8755S) {
            ImageView imageView = this.f8744H;
            if (imageView == null && drawable == null && !this.f8755S) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f8744H = imageView2;
                LinearLayout linearLayout = this.f8751O;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f8755S) {
                this.f8744H.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f8744H;
            if (!z7) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f8744H.getVisibility() != 0) {
                this.f8744H.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f8746J.getVisibility() != 8) {
                this.f8746J.setVisibility(8);
            }
        } else {
            this.f8746J.setText(charSequence);
            if (this.f8746J.getVisibility() != 0) {
                this.f8746J.setVisibility(0);
            }
        }
    }
}
