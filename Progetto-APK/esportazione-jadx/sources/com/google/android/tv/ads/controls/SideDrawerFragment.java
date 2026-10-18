package com.google.android.tv.ads.controls;

import P2.o;
import Y.AbstractComponentCallbacksC0406s;
import Y.D;
import Y.K;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.annotation.Keep;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.b;
import com.bumptech.glide.l;
import com.bumptech.glide.n;
import com.google.android.gms.internal.ads.AbstractC1349gB;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.atv_ads_framework.AbstractC2386g;
import com.google.android.gms.internal.atv_ads_framework.AbstractC2394k;
import com.google.android.gms.internal.atv_ads_framework.B;
import com.google.android.gms.internal.atv_ads_framework.C;
import com.google.android.gms.internal.atv_ads_framework.C2421z;
import com.google.android.tv.ads.controls.SideDrawerFragment;
import java.util.Iterator;
import okhttp3.HttpUrl;
import p086l.C3022d;
import p102n0.c;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class SideDrawerFragment extends AbstractComponentCallbacksC0406s {

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public static final /* synthetic */ int f24197J0 = 0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public ConstraintLayout f24198C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public ConstraintLayout f24199D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public ConstraintLayout f24200E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public ImageView f24201F0;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public Button f24202G0;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public ConstraintLayout f24203H0;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public Button f24204I0;

    public SideDrawerFragment() {
        this.f7975y0 = R.layout.fragment_side_drawer;
    }

    @Keep
    public float getBackgroundAlpha() {
        return this.f24198C0.getAlpha();
    }

    @Keep
    public float getDrawerTranslationX() {
        return this.f24199D0.getTranslationX() / this.f24199D0.getWidth();
    }

    @Keep
    public void setBackgroundAlpha(float f8) {
        this.f24198C0.setAlpha(f8);
        this.f24198C0.invalidate();
    }

    @Keep
    public void setDrawerTranslationX(float f8) {
        ConstraintLayout constraintLayout = this.f24199D0;
        constraintLayout.setTranslationX(constraintLayout.getWidth() * f8);
        this.f24199D0.invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0296 A[EDGE_INSN: B:113:0x0296->B:101:0x0296 BREAK  A[LOOP:2: B:63:0x0212->B:79:0x0237], EDGE_INSN: B:119:0x0296->B:101:0x0296 BREAK  A[LOOP:2: B:63:0x0212->B:79:0x0237], EDGE_INSN: B:101:0x0296->B:102:0x0298 BREAK  A[LOOP:3: B:80:0x023a->B:84:0x0246]] */
    @Override // Y.AbstractComponentCallbacksC0406s
    public final View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        n nVarA;
        View view;
        AbstractC2394k abstractC2394k;
        char cCharAt;
        int i8;
        char cCharAt2;
        char cCharAt3;
        viewGroup.getClass();
        final int i9 = 0;
        View viewInflate = layoutInflater.inflate(R.layout.fragment_side_drawer, viewGroup, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate.findViewById(R.id.side_drawer_base_layout);
        constraintLayout.getClass();
        this.f24198C0 = constraintLayout;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) viewInflate.findViewById(R.id.side_drawer_frame_layout);
        constraintLayout2.getClass();
        this.f24199D0 = constraintLayout2;
        ConstraintLayout constraintLayout3 = (ConstraintLayout) viewInflate.findViewById(R.id.why_this_ad_layout);
        constraintLayout3.getClass();
        this.f24200E0 = constraintLayout3;
        ConstraintLayout constraintLayout4 = (ConstraintLayout) viewInflate.findViewById(R.id.error_message_layout);
        constraintLayout4.getClass();
        this.f24203H0 = constraintLayout4;
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.wta_image_view);
        imageView.getClass();
        this.f24201F0 = imageView;
        Button button = (Button) viewInflate.findViewById(R.id.why_this_ad_back_button);
        button.getClass();
        this.f24202G0 = button;
        Button button2 = (Button) viewInflate.findViewById(R.id.error_message_back_button);
        button2.getClass();
        this.f24204I0 = button2;
        boolean z7 = L().getBoolean("render_error_message");
        String string = L().getString("wta_uri");
        AnimatorSet animatorSet = (AnimatorSet) AnimatorInflater.loadAnimator(M(), R.animator.animator_drawer_in);
        animatorSet.setTarget(this);
        animatorSet.start();
        final AnimatorSet animatorSet2 = (AnimatorSet) AnimatorInflater.loadAnimator(M(), R.animator.animator_drawer_out);
        animatorSet2.setTarget(this);
        animatorSet2.addListener(new C3022d(this, 6));
        this.f24202G0.setOnClickListener(new View.OnClickListener() { // from class: u4.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i10 = i9;
                AnimatorSet animatorSet3 = animatorSet2;
                switch (i10) {
                    case 0:
                        int i11 = SideDrawerFragment.f24197J0;
                        animatorSet3.start();
                        break;
                    default:
                        int i12 = SideDrawerFragment.f24197J0;
                        animatorSet3.start();
                        break;
                }
            }
        });
        final int i10 = 1;
        this.f24204I0.setOnClickListener(new View.OnClickListener() { // from class: u4.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i11 = i10;
                AnimatorSet animatorSet3 = animatorSet2;
                switch (i11) {
                    case 0:
                        int i12 = SideDrawerFragment.f24197J0;
                        animatorSet3.start();
                        break;
                    default:
                        int i13 = SideDrawerFragment.f24197J0;
                        animatorSet3.start();
                        break;
                }
            }
        });
        K().f8582M.a(this, new D(animatorSet2));
        if (z7 || string == null) {
            this.f24200E0.setVisibility(8);
            this.f24203H0.setVisibility(0);
            this.f24204I0.requestFocus();
        } else {
            this.f24200E0.setVisibility(0);
            this.f24202G0.requestFocus();
            String string2 = L().getString("wta_uri");
            int i11 = AbstractC2386g.f22324a;
            if (string2 == null) {
                string2 = HttpUrl.FRAGMENT_ENCODE_SET;
            }
            String string3 = L().getString("wta_alt_text");
            if (!TextUtils.isEmpty(string3)) {
                this.f24201F0.setContentDescription(string3);
            }
            Drawable drawable = o().getDrawable(R.drawable.placeholder_image, M().getTheme());
            Context contextL = l();
            c.c(contextL, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
            J2.n nVar = b.a(contextL).f11501K;
            nVar.getClass();
            c.c(l(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
            char[] cArr = o.f5906a;
            if (!(Looper.myLooper() == Looper.getMainLooper())) {
                nVarA = nVar.b(l().getApplicationContext());
            } else {
                if (j() != null) {
                    nVar.f4111I.c(j());
                }
                K k8 = k();
                Context contextL2 = l();
                nVarA = nVar.f4112J.a(contextL2, b.a(contextL2.getApplicationContext()), this.f7971u0, k8, (!r() || s() || (view = this.f7963m0) == null || view.getWindowToken() == null || this.f7963m0.getVisibility() != 0) ? false : true);
            }
            C2421z c2421z = C.f22251c;
            String strP = Cw.P(string2);
            AbstractC1349gB abstractC1349gBP = C.f22249a.p();
            while (abstractC1349gBP.hasNext()) {
                if (strP.startsWith(String.valueOf((String) abstractC1349gBP.next()).concat(":"))) {
                    l lVar = (l) ((l) nVarA.n(string2).n(drawable)).g();
                    lVar.E(new p160u4.b(this, this.f24201F0), lVar);
                }
            }
            if (!strP.startsWith("data:")) {
                Iterator it = c2421z.iterator();
                do {
                    abstractC2394k = (AbstractC2394k) it;
                    if (!abstractC2394k.hasNext()) {
                        while (i9 < string2.length() && (cCharAt = string2.charAt(i9)) != '#' && cCharAt != '/') {
                            if (cCharAt == ':') {
                                string2 = "about:invalid#zTvAdsFrameworkz";
                            } else {
                                if (cCharAt == '?') {
                                    break;
                                }
                                i9++;
                            }
                        }
                        break;
                    }
                } while (!strP.startsWith(String.valueOf(Cw.P(((B) abstractC2394k.next()).name()).replace('_', '-')).concat(":")));
            } else {
                String strP2 = Cw.P(string2);
                if (strP2.startsWith("data:") && strP2.length() > 5) {
                    int i12 = 5;
                    while (i12 < strP2.length() && (cCharAt3 = strP2.charAt(i12)) != ';' && cCharAt3 != ',') {
                        i12++;
                    }
                    if (C.f22250b.contains(strP2.substring(5, i12)) && strP2.startsWith(";base64,", i12) && (i8 = i12 + 8) < strP2.length()) {
                        while (true) {
                            if (i8 >= strP2.length() || (cCharAt2 = strP2.charAt(i8)) == '=') {
                                while (i8 < strP2.length()) {
                                    if (strP2.charAt(i8) != '=') {
                                        break;
                                    }
                                    i8++;
                                }
                            } else {
                                if ((cCharAt2 < 'a' || cCharAt2 > 'z') && !((cCharAt2 >= '0' && cCharAt2 <= '9') || cCharAt2 == '+' || cCharAt2 == '/')) {
                                    break;
                                }
                                i8++;
                            }
                        }
                        string2 = "about:invalid#zTvAdsFrameworkz";
                    } else {
                        string2 = "about:invalid#zTvAdsFrameworkz";
                    }
                } else {
                    string2 = "about:invalid#zTvAdsFrameworkz";
                }
            }
            l lVar2 = (l) ((l) nVarA.n(string2).n(drawable)).g();
            lVar2.E(new p160u4.b(this, this.f24201F0), lVar2);
        }
        return viewInflate;
    }
}
