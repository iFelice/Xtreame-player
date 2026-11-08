package androidx.media3.ui;

import D1.C0141f;
import D1.P;
import D1.Q;
import D1.S;
import K0.t;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p039f.ViewOnClickListenerC2988c;
import p094m0.g0;
import p094m0.h0;
import p094m0.l0;

/* JADX INFO: loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final /* synthetic */ int f9521U = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f9522G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final LayoutInflater f9523H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final CheckedTextView f9524I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final CheckedTextView f9525J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final ViewOnClickListenerC2988c f9526K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ArrayList f9527L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final HashMap f9528M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f9529N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f9530O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public P f9531P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public CheckedTextView[][] f9532Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f9533R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public t f9534S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public S f9535T;

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f9522G = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f9523H = layoutInflaterFrom;
        ViewOnClickListenerC2988c viewOnClickListenerC2988c = new ViewOnClickListenerC2988c(this);
        this.f9526K = viewOnClickListenerC2988c;
        this.f9531P = new C0141f(getResources());
        this.f9527L = new ArrayList();
        this.f9528M = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f9524I = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(pe.hf.black20.R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(viewOnClickListenerC2988c);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(pe.hf.black20.R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f9525J = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(pe.hf.black20.R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(viewOnClickListenerC2988c);
        addView(checkedTextView2);
    }

    public static HashMap a(Map map, boolean z7, List list) {
        HashMap map2 = new HashMap();
        for (int i8 = 0; i8 < list.size(); i8++) {
            h0 h0Var = (h0) map.get(((l0) list.get(i8)).f26949b);
            if (h0Var != null && (z7 || map2.isEmpty())) {
                map2.put(h0Var.f26868a, h0Var);
            }
        }
        return map2;
    }

    public final void b() {
        this.f9524I.setChecked(this.f9533R);
        boolean z7 = this.f9533R;
        HashMap map = this.f9528M;
        this.f9525J.setChecked(!z7 && map.isEmpty());
        for (int i8 = 0; i8 < this.f9532Q.length; i8++) {
            h0 h0Var = (h0) map.get(((l0) this.f9527L.get(i8)).f26949b);
            int i9 = 0;
            while (true) {
                CheckedTextView[] checkedTextViewArr = this.f9532Q[i8];
                if (i9 < checkedTextViewArr.length) {
                    if (h0Var != null) {
                        Object tag = checkedTextViewArr[i9].getTag();
                        tag.getClass();
                        this.f9532Q[i8][i9].setChecked(h0Var.f26869b.contains(Integer.valueOf(((Q) tag).f2115b)));
                    } else {
                        checkedTextViewArr[i9].setChecked(false);
                    }
                    i9++;
                }
            }
        }
    }

    public final void c() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        ArrayList arrayList = this.f9527L;
        boolean zIsEmpty = arrayList.isEmpty();
        CheckedTextView checkedTextView = this.f9525J;
        CheckedTextView checkedTextView2 = this.f9524I;
        if (zIsEmpty) {
            checkedTextView2.setEnabled(false);
            checkedTextView.setEnabled(false);
            return;
        }
        checkedTextView2.setEnabled(true);
        checkedTextView.setEnabled(true);
        this.f9532Q = new CheckedTextView[arrayList.size()][];
        boolean z7 = this.f9530O && arrayList.size() > 1;
        for (int i8 = 0; i8 < arrayList.size(); i8++) {
            l0 l0Var = (l0) arrayList.get(i8);
            boolean z8 = this.f9529N && l0Var.f26950c;
            CheckedTextView[][] checkedTextViewArr = this.f9532Q;
            int i9 = l0Var.f26948a;
            checkedTextViewArr[i8] = new CheckedTextView[i9];
            Q[] qArr = new Q[i9];
            for (int i10 = 0; i10 < l0Var.f26948a; i10++) {
                qArr[i10] = new Q(l0Var, i10);
            }
            t tVar = this.f9534S;
            if (tVar != null) {
                Arrays.sort(qArr, tVar);
            }
            for (int i11 = 0; i11 < i9; i11++) {
                LayoutInflater layoutInflater = this.f9523H;
                if (i11 == 0) {
                    addView(layoutInflater.inflate(pe.hf.black20.R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView3 = (CheckedTextView) layoutInflater.inflate((z8 || z7) ? R.layout.simple_list_item_multiple_choice : R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView3.setBackgroundResource(this.f9522G);
                P p7 = this.f9531P;
                Q q7 = qArr[i11];
                checkedTextView3.setText(((C0141f) p7).c(q7.f2114a.f26949b.f26860d[q7.f2115b]));
                checkedTextView3.setTag(qArr[i11]);
                if (l0Var.d(i11)) {
                    checkedTextView3.setFocusable(true);
                    checkedTextView3.setOnClickListener(this.f9526K);
                } else {
                    checkedTextView3.setFocusable(false);
                    checkedTextView3.setEnabled(false);
                }
                this.f9532Q[i8][i11] = checkedTextView3;
                addView(checkedTextView3);
            }
        }
        b();
    }

    public boolean getIsDisabled() {
        return this.f9533R;
    }

    public Map<g0, h0> getOverrides() {
        return this.f9528M;
    }

    public void setAllowAdaptiveSelections(boolean z7) {
        if (this.f9529N != z7) {
            this.f9529N = z7;
            c();
        }
    }

    public void setAllowMultipleOverrides(boolean z7) {
        if (this.f9530O != z7) {
            this.f9530O = z7;
            if (!z7) {
                HashMap map = this.f9528M;
                if (map.size() > 1) {
                    HashMap mapA = a(map, false, this.f9527L);
                    map.clear();
                    map.putAll(mapA);
                }
            }
            c();
        }
    }

    public void setShowDisableOption(boolean z7) {
        this.f9524I.setVisibility(z7 ? 0 : 8);
    }

    public void setTrackNameProvider(P p7) {
        p7.getClass();
        this.f9531P = p7;
        c();
    }
}
