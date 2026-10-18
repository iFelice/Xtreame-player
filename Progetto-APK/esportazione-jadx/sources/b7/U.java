package b7;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import pe.hf.black20.MultiScreenActivityEXO;

/* JADX INFO: loaded from: classes2.dex */
public final class U implements View.OnFocusChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MultiScreenActivityEXO f10235b;

    public /* synthetic */ U(MultiScreenActivityEXO multiScreenActivityEXO, int i8) {
        this.f10234a = i8;
        this.f10235b = multiScreenActivityEXO;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        int i8 = this.f10234a;
        MultiScreenActivityEXO multiScreenActivityEXO = this.f10235b;
        switch (i8) {
            case 0:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28762v0.getLayoutParams();
                    int i9 = multiScreenActivityEXO.f28657A1;
                    layoutParams.height = i9;
                    layoutParams.width = i9;
                    multiScreenActivityEXO.f28762v0.setLayoutParams(layoutParams);
                } else {
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28762v0.getLayoutParams();
                    int i10 = multiScreenActivityEXO.f28771z1;
                    layoutParams2.height = i10;
                    layoutParams2.width = i10;
                    multiScreenActivityEXO.f28762v0.setLayoutParams(layoutParams2);
                }
                break;
            case 1:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28764w0.getLayoutParams();
                    int i11 = multiScreenActivityEXO.f28657A1;
                    layoutParams3.height = i11;
                    layoutParams3.width = i11;
                    multiScreenActivityEXO.f28764w0.setLayoutParams(layoutParams3);
                } else {
                    LinearLayout.LayoutParams layoutParams4 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28764w0.getLayoutParams();
                    int i12 = multiScreenActivityEXO.f28771z1;
                    layoutParams4.height = i12;
                    layoutParams4.width = i12;
                    multiScreenActivityEXO.f28764w0.setLayoutParams(layoutParams4);
                }
                break;
            case 2:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams5 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28742l0.getLayoutParams();
                    int i13 = multiScreenActivityEXO.f28657A1;
                    layoutParams5.height = i13;
                    layoutParams5.width = i13;
                    multiScreenActivityEXO.f28742l0.setLayoutParams(layoutParams5);
                } else {
                    LinearLayout.LayoutParams layoutParams6 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28742l0.getLayoutParams();
                    int i14 = multiScreenActivityEXO.f28771z1;
                    layoutParams6.height = i14;
                    layoutParams6.width = i14;
                    multiScreenActivityEXO.f28742l0.setLayoutParams(layoutParams6);
                }
                break;
            case 3:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams7 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28744m0.getLayoutParams();
                    int i15 = multiScreenActivityEXO.f28657A1;
                    layoutParams7.height = i15;
                    layoutParams7.width = i15;
                    multiScreenActivityEXO.f28744m0.setLayoutParams(layoutParams7);
                } else {
                    LinearLayout.LayoutParams layoutParams8 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28744m0.getLayoutParams();
                    int i16 = multiScreenActivityEXO.f28771z1;
                    layoutParams8.height = i16;
                    layoutParams8.width = i16;
                    multiScreenActivityEXO.f28744m0.setLayoutParams(layoutParams8);
                }
                break;
            case 4:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams9 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28746n0.getLayoutParams();
                    int i17 = multiScreenActivityEXO.f28657A1;
                    layoutParams9.height = i17;
                    layoutParams9.width = i17;
                    multiScreenActivityEXO.f28746n0.setLayoutParams(layoutParams9);
                } else {
                    LinearLayout.LayoutParams layoutParams10 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28746n0.getLayoutParams();
                    int i18 = multiScreenActivityEXO.f28771z1;
                    layoutParams10.height = i18;
                    layoutParams10.width = i18;
                    multiScreenActivityEXO.f28746n0.setLayoutParams(layoutParams10);
                }
                break;
            case 5:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams11 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28748o0.getLayoutParams();
                    int i19 = multiScreenActivityEXO.f28657A1;
                    layoutParams11.height = i19;
                    layoutParams11.width = i19;
                    multiScreenActivityEXO.f28748o0.setLayoutParams(layoutParams11);
                } else {
                    LinearLayout.LayoutParams layoutParams12 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28748o0.getLayoutParams();
                    int i20 = multiScreenActivityEXO.f28771z1;
                    layoutParams12.height = i20;
                    layoutParams12.width = i20;
                    multiScreenActivityEXO.f28748o0.setLayoutParams(layoutParams12);
                }
                break;
            case 6:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams13 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28736i0.getLayoutParams();
                    int i21 = multiScreenActivityEXO.f28657A1;
                    layoutParams13.height = i21;
                    layoutParams13.width = i21;
                    multiScreenActivityEXO.f28736i0.setLayoutParams(layoutParams13);
                } else {
                    LinearLayout.LayoutParams layoutParams14 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28736i0.getLayoutParams();
                    int i22 = multiScreenActivityEXO.f28771z1;
                    layoutParams14.height = i22;
                    layoutParams14.width = i22;
                    multiScreenActivityEXO.f28736i0.setLayoutParams(layoutParams14);
                }
                break;
            case 7:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams15 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28750p0.getLayoutParams();
                    int i23 = multiScreenActivityEXO.f28657A1;
                    layoutParams15.height = i23;
                    layoutParams15.width = i23;
                    multiScreenActivityEXO.f28750p0.setLayoutParams(layoutParams15);
                } else {
                    LinearLayout.LayoutParams layoutParams16 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28750p0.getLayoutParams();
                    int i24 = multiScreenActivityEXO.f28771z1;
                    layoutParams16.height = i24;
                    layoutParams16.width = i24;
                    multiScreenActivityEXO.f28750p0.setLayoutParams(layoutParams16);
                }
                break;
            case 8:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams17 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28752q0.getLayoutParams();
                    int i25 = multiScreenActivityEXO.f28657A1;
                    layoutParams17.height = i25;
                    layoutParams17.width = i25;
                    multiScreenActivityEXO.f28752q0.setLayoutParams(layoutParams17);
                } else {
                    LinearLayout.LayoutParams layoutParams18 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28752q0.getLayoutParams();
                    int i26 = multiScreenActivityEXO.f28771z1;
                    layoutParams18.height = i26;
                    layoutParams18.width = i26;
                    multiScreenActivityEXO.f28752q0.setLayoutParams(layoutParams18);
                }
                break;
            case 9:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams19 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28754r0.getLayoutParams();
                    int i27 = multiScreenActivityEXO.f28657A1;
                    layoutParams19.height = i27;
                    layoutParams19.width = i27;
                    multiScreenActivityEXO.f28754r0.setLayoutParams(layoutParams19);
                } else {
                    LinearLayout.LayoutParams layoutParams20 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28754r0.getLayoutParams();
                    int i28 = multiScreenActivityEXO.f28771z1;
                    layoutParams20.height = i28;
                    layoutParams20.width = i28;
                    multiScreenActivityEXO.f28754r0.setLayoutParams(layoutParams20);
                }
                break;
            case 10:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams21 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28756s0.getLayoutParams();
                    int i29 = multiScreenActivityEXO.f28657A1;
                    layoutParams21.height = i29;
                    layoutParams21.width = i29;
                    multiScreenActivityEXO.f28756s0.setLayoutParams(layoutParams21);
                } else {
                    LinearLayout.LayoutParams layoutParams22 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28756s0.getLayoutParams();
                    int i30 = multiScreenActivityEXO.f28771z1;
                    layoutParams22.height = i30;
                    layoutParams22.width = i30;
                    multiScreenActivityEXO.f28756s0.setLayoutParams(layoutParams22);
                }
                break;
            case 11:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams23 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28766x0.getLayoutParams();
                    int i31 = (int) (((double) multiScreenActivityEXO.f28767x1) / 3.5d);
                    layoutParams23.height = i31;
                    layoutParams23.width = i31;
                    multiScreenActivityEXO.f28766x0.setLayoutParams(layoutParams23);
                } else {
                    LinearLayout.LayoutParams layoutParams24 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28766x0.getLayoutParams();
                    int i32 = multiScreenActivityEXO.f28767x1 / 3;
                    layoutParams24.height = i32;
                    layoutParams24.width = i32;
                    multiScreenActivityEXO.f28766x0.setLayoutParams(layoutParams24);
                }
                break;
            case 12:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams25 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28768y0.getLayoutParams();
                    int i33 = (int) (((double) multiScreenActivityEXO.f28767x1) / 3.5d);
                    layoutParams25.height = i33;
                    layoutParams25.width = i33;
                    multiScreenActivityEXO.f28768y0.setLayoutParams(layoutParams25);
                } else {
                    LinearLayout.LayoutParams layoutParams26 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28768y0.getLayoutParams();
                    int i34 = multiScreenActivityEXO.f28767x1 / 3;
                    layoutParams26.height = i34;
                    layoutParams26.width = i34;
                    multiScreenActivityEXO.f28768y0.setLayoutParams(layoutParams26);
                }
                break;
            case 13:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams27 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28738j0.getLayoutParams();
                    int i35 = multiScreenActivityEXO.f28657A1;
                    layoutParams27.height = i35;
                    layoutParams27.width = i35;
                    multiScreenActivityEXO.f28738j0.setLayoutParams(layoutParams27);
                } else {
                    LinearLayout.LayoutParams layoutParams28 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28738j0.getLayoutParams();
                    int i36 = multiScreenActivityEXO.f28771z1;
                    layoutParams28.height = i36;
                    layoutParams28.width = i36;
                    multiScreenActivityEXO.f28738j0.setLayoutParams(layoutParams28);
                }
                break;
            case 14:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams29 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28770z0.getLayoutParams();
                    int i37 = (int) (((double) multiScreenActivityEXO.f28767x1) / 3.5d);
                    layoutParams29.height = i37;
                    layoutParams29.width = i37;
                    multiScreenActivityEXO.f28770z0.setLayoutParams(layoutParams29);
                } else {
                    LinearLayout.LayoutParams layoutParams30 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28770z0.getLayoutParams();
                    int i38 = multiScreenActivityEXO.f28767x1 / 3;
                    layoutParams30.height = i38;
                    layoutParams30.width = i38;
                    multiScreenActivityEXO.f28770z0.setLayoutParams(layoutParams30);
                }
                break;
            case 15:
                if (z7) {
                    multiScreenActivityEXO.f28734h0.requestFocus();
                    multiScreenActivityEXO.f28722b0.setVisibility(0);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                }
                break;
            case 16:
                if (z7) {
                    multiScreenActivityEXO.f28736i0.requestFocus();
                    multiScreenActivityEXO.f28722b0.setVisibility(8);
                    multiScreenActivityEXO.f28724c0.setVisibility(0);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                }
                break;
            case 17:
                if (z7) {
                    multiScreenActivityEXO.f28738j0.requestFocus();
                    multiScreenActivityEXO.f28722b0.setVisibility(8);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(0);
                    multiScreenActivityEXO.f28728e0.setVisibility(8);
                }
                break;
            case 18:
                if (z7) {
                    multiScreenActivityEXO.f28740k0.requestFocus();
                    multiScreenActivityEXO.f28722b0.setVisibility(8);
                    multiScreenActivityEXO.f28724c0.setVisibility(8);
                    multiScreenActivityEXO.f28726d0.setVisibility(8);
                    multiScreenActivityEXO.f28728e0.setVisibility(0);
                }
                break;
            case 19:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams31 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28740k0.getLayoutParams();
                    int i39 = multiScreenActivityEXO.f28657A1;
                    layoutParams31.height = i39;
                    layoutParams31.width = i39;
                    multiScreenActivityEXO.f28740k0.setLayoutParams(layoutParams31);
                } else {
                    LinearLayout.LayoutParams layoutParams32 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28740k0.getLayoutParams();
                    int i40 = multiScreenActivityEXO.f28771z1;
                    layoutParams32.height = i40;
                    layoutParams32.width = i40;
                    multiScreenActivityEXO.f28740k0.setLayoutParams(layoutParams32);
                }
                break;
            case 20:
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams33 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28664E0.getLayoutParams();
                    int i41 = multiScreenActivityEXO.f28684L0 * 80;
                    layoutParams33.height = i41;
                    layoutParams33.width = i41;
                    multiScreenActivityEXO.f28664E0.setLayoutParams(layoutParams33);
                } else {
                    FrameLayout.LayoutParams layoutParams34 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28664E0.getLayoutParams();
                    int i42 = multiScreenActivityEXO.f28684L0 * 100;
                    layoutParams34.height = i42;
                    layoutParams34.width = i42;
                    multiScreenActivityEXO.f28664E0.setLayoutParams(layoutParams34);
                }
                break;
            case 21:
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams35 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28656A0.getLayoutParams();
                    int i43 = multiScreenActivityEXO.f28657A1;
                    layoutParams35.height = i43;
                    layoutParams35.width = i43;
                    multiScreenActivityEXO.f28656A0.setLayoutParams(layoutParams35);
                } else {
                    FrameLayout.LayoutParams layoutParams36 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28656A0.getLayoutParams();
                    int i44 = multiScreenActivityEXO.f28771z1;
                    layoutParams36.height = i44;
                    layoutParams36.width = i44;
                    multiScreenActivityEXO.f28656A0.setLayoutParams(layoutParams36);
                }
                break;
            case 22:
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams37 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28658B0.getLayoutParams();
                    int i45 = multiScreenActivityEXO.f28657A1;
                    layoutParams37.height = i45;
                    layoutParams37.width = i45;
                    multiScreenActivityEXO.f28658B0.setLayoutParams(layoutParams37);
                } else {
                    FrameLayout.LayoutParams layoutParams38 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28658B0.getLayoutParams();
                    int i46 = multiScreenActivityEXO.f28771z1;
                    layoutParams38.height = i46;
                    layoutParams38.width = i46;
                    multiScreenActivityEXO.f28658B0.setLayoutParams(layoutParams38);
                }
                break;
            case 23:
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams39 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28660C0.getLayoutParams();
                    int i47 = multiScreenActivityEXO.f28657A1;
                    layoutParams39.height = i47;
                    layoutParams39.width = i47;
                    multiScreenActivityEXO.f28660C0.setLayoutParams(layoutParams39);
                } else {
                    FrameLayout.LayoutParams layoutParams40 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28660C0.getLayoutParams();
                    int i48 = multiScreenActivityEXO.f28771z1;
                    layoutParams40.height = i48;
                    layoutParams40.width = i48;
                    multiScreenActivityEXO.f28660C0.setLayoutParams(layoutParams40);
                }
                break;
            case 24:
                if (!z7) {
                    FrameLayout.LayoutParams layoutParams41 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28662D0.getLayoutParams();
                    int i49 = multiScreenActivityEXO.f28657A1;
                    layoutParams41.height = i49;
                    layoutParams41.width = i49;
                    multiScreenActivityEXO.f28662D0.setLayoutParams(layoutParams41);
                } else {
                    FrameLayout.LayoutParams layoutParams42 = (FrameLayout.LayoutParams) multiScreenActivityEXO.f28662D0.getLayoutParams();
                    int i50 = multiScreenActivityEXO.f28771z1;
                    layoutParams42.height = i50;
                    layoutParams42.width = i50;
                    multiScreenActivityEXO.f28662D0.setLayoutParams(layoutParams42);
                }
                break;
            case 25:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams43 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28758t0.getLayoutParams();
                    int i51 = multiScreenActivityEXO.f28657A1;
                    layoutParams43.height = i51;
                    layoutParams43.width = i51;
                    multiScreenActivityEXO.f28758t0.setLayoutParams(layoutParams43);
                } else {
                    LinearLayout.LayoutParams layoutParams44 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28758t0.getLayoutParams();
                    int i52 = multiScreenActivityEXO.f28771z1;
                    layoutParams44.height = i52;
                    layoutParams44.width = i52;
                    multiScreenActivityEXO.f28758t0.setLayoutParams(layoutParams44);
                }
                break;
            default:
                if (!z7) {
                    LinearLayout.LayoutParams layoutParams45 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28760u0.getLayoutParams();
                    int i53 = multiScreenActivityEXO.f28657A1;
                    layoutParams45.height = i53;
                    layoutParams45.width = i53;
                    multiScreenActivityEXO.f28760u0.setLayoutParams(layoutParams45);
                } else {
                    LinearLayout.LayoutParams layoutParams46 = (LinearLayout.LayoutParams) multiScreenActivityEXO.f28760u0.getLayoutParams();
                    int i54 = multiScreenActivityEXO.f28771z1;
                    layoutParams46.height = i54;
                    layoutParams46.width = i54;
                    multiScreenActivityEXO.f28760u0.setLayoutParams(layoutParams46);
                }
                break;
        }
    }
}
