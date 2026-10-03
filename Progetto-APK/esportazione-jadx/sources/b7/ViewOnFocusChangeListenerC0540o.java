package b7;

import android.view.View;
import android.widget.LinearLayout;
import pe.hf.black20.CategoriesActivity;

/* JADX INFO: renamed from: b7.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class ViewOnFocusChangeListenerC0540o implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10362a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CategoriesActivity f10363b;

    public /* synthetic */ ViewOnFocusChangeListenerC0540o(CategoriesActivity categoriesActivity, int i8) {
        this.f10362a = i8;
        this.f10363b = categoriesActivity;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10362a;
        CategoriesActivity categoriesActivity = this.f10363b;
        switch (i8) {
            case 0:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) categoriesActivity.f28412c0.getLayoutParams();
                    int i9 = categoriesActivity.f28403T;
                    layoutParams.height = i9;
                    layoutParams.width = i9;
                    categoriesActivity.f28412c0.setLayoutParams(layoutParams);
                } else {
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) categoriesActivity.f28412c0.getLayoutParams();
                    int i10 = categoriesActivity.f28404U;
                    layoutParams2.height = i10;
                    layoutParams2.width = i10;
                    categoriesActivity.f28412c0.setLayoutParams(layoutParams2);
                }
                break;
            case 1:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) categoriesActivity.f28423n0.getLayoutParams();
                    layoutParams3.height = categoriesActivity.f28399P;
                    layoutParams3.width = (int) (((double) CategoriesActivity.f28378J0) / 1.5d);
                    categoriesActivity.f28423n0.setLayoutParams(layoutParams3);
                } else {
                    LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) categoriesActivity.f28423n0.getLayoutParams();
                    layoutParams4.height = categoriesActivity.f28402S;
                    layoutParams4.width = (int) ((((double) CategoriesActivity.f28378J0) / 1.5d) * 1.15d);
                    categoriesActivity.f28423n0.setLayoutParams(layoutParams4);
                }
                break;
            case 2:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) categoriesActivity.f28413d0.getLayoutParams();
                    int i11 = categoriesActivity.f28403T;
                    layoutParams5.height = i11;
                    layoutParams5.width = i11;
                    categoriesActivity.f28413d0.setLayoutParams(layoutParams5);
                } else {
                    LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) categoriesActivity.f28413d0.getLayoutParams();
                    int i12 = categoriesActivity.f28404U;
                    layoutParams6.height = i12;
                    layoutParams6.width = i12;
                    categoriesActivity.f28413d0.setLayoutParams(layoutParams6);
                }
                break;
            case 3:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) categoriesActivity.f28414e0.getLayoutParams();
                    int i13 = categoriesActivity.f28403T;
                    layoutParams7.height = i13;
                    layoutParams7.width = i13;
                    categoriesActivity.f28414e0.setLayoutParams(layoutParams7);
                } else {
                    LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) categoriesActivity.f28414e0.getLayoutParams();
                    int i14 = categoriesActivity.f28404U;
                    layoutParams8.height = i14;
                    layoutParams8.width = i14;
                    categoriesActivity.f28414e0.setLayoutParams(layoutParams8);
                }
                break;
            case 4:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams9 = (LinearLayout.LayoutParams) categoriesActivity.f28417h0.getLayoutParams();
                    int i15 = categoriesActivity.f28403T;
                    layoutParams9.height = i15;
                    layoutParams9.width = i15;
                    categoriesActivity.f28417h0.setLayoutParams(layoutParams9);
                } else {
                    LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) categoriesActivity.f28417h0.getLayoutParams();
                    int i16 = categoriesActivity.f28404U;
                    layoutParams10.height = i16;
                    layoutParams10.width = i16;
                    categoriesActivity.f28417h0.setLayoutParams(layoutParams10);
                }
                break;
            case 5:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams11 = (LinearLayout.LayoutParams) categoriesActivity.f28418i0.getLayoutParams();
                    int i17 = categoriesActivity.f28403T;
                    layoutParams11.height = i17;
                    layoutParams11.width = i17;
                    categoriesActivity.f28418i0.setLayoutParams(layoutParams11);
                } else {
                    LinearLayout.LayoutParams layoutParams12 = (LinearLayout.LayoutParams) categoriesActivity.f28418i0.getLayoutParams();
                    int i18 = categoriesActivity.f28404U;
                    layoutParams12.height = i18;
                    layoutParams12.width = i18;
                    categoriesActivity.f28418i0.setLayoutParams(layoutParams12);
                }
                break;
            case 6:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams13 = (LinearLayout.LayoutParams) categoriesActivity.f28419j0.getLayoutParams();
                    int i19 = categoriesActivity.f28403T;
                    layoutParams13.height = i19;
                    layoutParams13.width = i19;
                    categoriesActivity.f28419j0.setLayoutParams(layoutParams13);
                } else {
                    LinearLayout.LayoutParams layoutParams14 = (LinearLayout.LayoutParams) categoriesActivity.f28419j0.getLayoutParams();
                    int i20 = categoriesActivity.f28404U;
                    layoutParams14.height = i20;
                    layoutParams14.width = i20;
                    categoriesActivity.f28419j0.setLayoutParams(layoutParams14);
                }
                break;
            case 7:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams15 = (LinearLayout.LayoutParams) categoriesActivity.f28420k0.getLayoutParams();
                    int i21 = categoriesActivity.f28397N;
                    layoutParams15.height = i21;
                    layoutParams15.width = i21;
                    categoriesActivity.f28420k0.setLayoutParams(layoutParams15);
                } else {
                    LinearLayout.LayoutParams layoutParams16 = (LinearLayout.LayoutParams) categoriesActivity.f28420k0.getLayoutParams();
                    int i22 = categoriesActivity.f28398O;
                    layoutParams16.height = i22;
                    layoutParams16.width = i22;
                    categoriesActivity.f28420k0.setLayoutParams(layoutParams16);
                }
                break;
            case 8:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams17 = (LinearLayout.LayoutParams) categoriesActivity.f28421l0.getLayoutParams();
                    int i23 = categoriesActivity.f28397N;
                    layoutParams17.height = i23;
                    layoutParams17.width = i23;
                    categoriesActivity.f28421l0.setLayoutParams(layoutParams17);
                } else {
                    LinearLayout.LayoutParams layoutParams18 = (LinearLayout.LayoutParams) categoriesActivity.f28421l0.getLayoutParams();
                    int i24 = categoriesActivity.f28398O;
                    layoutParams18.height = i24;
                    layoutParams18.width = i24;
                    categoriesActivity.f28421l0.setLayoutParams(layoutParams18);
                }
                break;
            case 9:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams19 = (LinearLayout.LayoutParams) categoriesActivity.f28422m0.getLayoutParams();
                    int i25 = categoriesActivity.f28397N;
                    layoutParams19.height = i25;
                    layoutParams19.width = i25;
                    categoriesActivity.f28422m0.setLayoutParams(layoutParams19);
                } else {
                    LinearLayout.LayoutParams layoutParams20 = (LinearLayout.LayoutParams) categoriesActivity.f28422m0.getLayoutParams();
                    int i26 = categoriesActivity.f28398O;
                    layoutParams20.height = i26;
                    layoutParams20.width = i26;
                    categoriesActivity.f28422m0.setLayoutParams(layoutParams20);
                }
                break;
            case 10:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams21 = (LinearLayout.LayoutParams) categoriesActivity.f28410a0.getLayoutParams();
                    int i27 = categoriesActivity.f28400Q;
                    layoutParams21.height = i27;
                    layoutParams21.width = i27;
                    categoriesActivity.f28410a0.setLayoutParams(layoutParams21);
                } else {
                    LinearLayout.LayoutParams layoutParams22 = (LinearLayout.LayoutParams) categoriesActivity.f28410a0.getLayoutParams();
                    int i28 = categoriesActivity.f28401R;
                    layoutParams22.height = i28;
                    layoutParams22.width = i28;
                    categoriesActivity.f28410a0.setLayoutParams(layoutParams22);
                }
                break;
            case 11:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams23 = (LinearLayout.LayoutParams) categoriesActivity.f28424o0.getLayoutParams();
                    int i29 = categoriesActivity.f28397N;
                    layoutParams23.height = i29;
                    layoutParams23.width = i29;
                    categoriesActivity.f28424o0.setLayoutParams(layoutParams23);
                } else {
                    LinearLayout.LayoutParams layoutParams24 = (LinearLayout.LayoutParams) categoriesActivity.f28424o0.getLayoutParams();
                    int i30 = categoriesActivity.f28398O;
                    layoutParams24.height = i30;
                    layoutParams24.width = i30;
                    categoriesActivity.f28424o0.setLayoutParams(layoutParams24);
                }
                break;
            case 12:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams25 = (LinearLayout.LayoutParams) categoriesActivity.f28425p0.getLayoutParams();
                    int i31 = categoriesActivity.f28397N;
                    layoutParams25.height = i31;
                    layoutParams25.width = i31;
                    categoriesActivity.f28425p0.setLayoutParams(layoutParams25);
                } else {
                    LinearLayout.LayoutParams layoutParams26 = (LinearLayout.LayoutParams) categoriesActivity.f28425p0.getLayoutParams();
                    int i32 = categoriesActivity.f28398O;
                    layoutParams26.height = i32;
                    layoutParams26.width = i32;
                    categoriesActivity.f28425p0.setLayoutParams(layoutParams26);
                }
                break;
            case 13:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams27 = (LinearLayout.LayoutParams) categoriesActivity.f28415f0.getLayoutParams();
                    int i33 = categoriesActivity.f28405V;
                    layoutParams27.height = i33;
                    layoutParams27.width = i33;
                    categoriesActivity.f28415f0.setLayoutParams(layoutParams27);
                } else {
                    LinearLayout.LayoutParams layoutParams28 = (LinearLayout.LayoutParams) categoriesActivity.f28415f0.getLayoutParams();
                    int i34 = categoriesActivity.f28406W;
                    layoutParams28.height = i34;
                    layoutParams28.width = i34;
                    categoriesActivity.f28415f0.setLayoutParams(layoutParams28);
                }
                break;
            case 14:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams29 = (LinearLayout.LayoutParams) categoriesActivity.f28411b0.getLayoutParams();
                    int i35 = categoriesActivity.f28399P;
                    layoutParams29.height = i35;
                    layoutParams29.width = i35;
                    categoriesActivity.f28411b0.setLayoutParams(layoutParams29);
                } else {
                    LinearLayout.LayoutParams layoutParams30 = (LinearLayout.LayoutParams) categoriesActivity.f28411b0.getLayoutParams();
                    int i36 = categoriesActivity.f28402S;
                    layoutParams30.height = i36;
                    layoutParams30.width = i36;
                    categoriesActivity.f28411b0.setLayoutParams(layoutParams30);
                }
                break;
            default:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams31 = (LinearLayout.LayoutParams) categoriesActivity.f28416g0.getLayoutParams();
                    int i37 = categoriesActivity.f28399P;
                    layoutParams31.height = i37;
                    layoutParams31.width = i37;
                    categoriesActivity.f28416g0.setLayoutParams(layoutParams31);
                } else {
                    LinearLayout.LayoutParams layoutParams32 = (LinearLayout.LayoutParams) categoriesActivity.f28416g0.getLayoutParams();
                    int i38 = categoriesActivity.f28402S;
                    layoutParams32.height = i38;
                    layoutParams32.width = i38;
                    categoriesActivity.f28416g0.setLayoutParams(layoutParams32);
                }
                break;
        }
    }
}
