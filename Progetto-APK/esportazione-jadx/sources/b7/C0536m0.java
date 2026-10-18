package b7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.R;

/* JADX INFO: renamed from: b7.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0536m0 extends O1.C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f10349I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f10350J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public HashMap f10351K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10352L;

    public C0536m0(C0550t0 c0550t0, ArrayList arrayList, int i8) {
        this.f10349I = i8;
        if (i8 == 1) {
            this.f10352L = c0550t0;
            this.f10351K = new HashMap();
            this.f10350J = arrayList;
        } else if (i8 != 2) {
            this.f10352L = c0550t0;
            this.f10351K = new HashMap();
            this.f10350J = arrayList;
        } else {
            this.f10352L = c0550t0;
            this.f10351K = new HashMap();
            this.f10350J = arrayList;
        }
    }

    @Override // O1.C
    public final int a() {
        switch (this.f10349I) {
            case 0:
                break;
            case 1:
                break;
        }
        return this.f10350J.size();
    }

    @Override // O1.C
    public final void c(O1.c0 c0Var, int i8) {
        int i9 = this.f10349I;
        C0550t0 c0550t0 = this.f10352L;
        switch (i9) {
            case 0:
                C0545q0 c0545q0 = (C0545q0) c0Var;
                this.f10351K = (HashMap) this.f10350J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10351K.get("cover")).l(6, 9)).b()).F(c0545q0.f10387b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10351K.get("cover")).f(R.drawable.logo)).b()).F(c0545q0.f10387b0);
                }
                c0545q0.f10388c0.setTag(this.f10351K.get("series_id"));
                c0545q0.f10388c0.setVisibility(8);
                CardView cardView = c0545q0.f10389d0;
                cardView.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView.setFocusable(true);
                cardView.setTag(String.valueOf(i8));
                TextView textView = c0545q0.f10386a0;
                textView.setVisibility(8);
                textView.setText((CharSequence) this.f10351K.get("name"));
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) cardView.getLayoutParams();
                layoutParams.height = c0550t0.f10438K0;
                layoutParams.width = c0550t0.f10436J0;
                cardView.setLayoutParams(layoutParams);
                cardView.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(1, this, c0545q0));
                cardView.setOnClickListener(new ViewOnClickListenerC2988c(this, 12));
                cardView.setOnLongClickListener(new ViewOnLongClickListenerC0533l0(this, 0));
                break;
            case 1:
                C0546r0 c0546r0 = (C0546r0) c0Var;
                this.f10351K = (HashMap) this.f10350J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10351K.get("cover")).l(6, 9)).b()).F(c0546r0.f10400b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10351K.get("cover")).f(R.drawable.logo)).b()).F(c0546r0.f10400b0);
                }
                c0546r0.f10401c0.setTag(this.f10351K.get("series_id"));
                c0546r0.f10401c0.setVisibility(8);
                CardView cardView2 = c0546r0.f10402d0;
                cardView2.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView2.setFocusable(true);
                cardView2.setTag(String.valueOf(i8));
                TextView textView2 = c0546r0.f10399a0;
                textView2.setVisibility(8);
                textView2.setText((CharSequence) this.f10351K.get("name"));
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) cardView2.getLayoutParams();
                layoutParams2.height = c0550t0.f10438K0;
                layoutParams2.width = c0550t0.f10436J0;
                cardView2.setLayoutParams(layoutParams2);
                cardView2.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(2, this, c0546r0));
                cardView2.setOnClickListener(new ViewOnClickListenerC2988c(this, 13));
                break;
            default:
                C0548s0 c0548s0 = (C0548s0) c0Var;
                this.f10351K = (HashMap) this.f10350J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10351K.get("cover")).l(6, 9)).b()).F(c0548s0.f10408b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10351K.get("cover")).f(R.drawable.logo)).b()).F(c0548s0.f10408b0);
                }
                c0548s0.f10409c0.setTag(this.f10351K.get("series_id"));
                c0548s0.f10409c0.setVisibility(8);
                CardView cardView3 = c0548s0.f10410d0;
                cardView3.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView3.setFocusable(true);
                cardView3.setTag(String.valueOf(i8));
                TextView textView3 = c0548s0.f10407a0;
                textView3.setVisibility(8);
                textView3.setText((CharSequence) this.f10351K.get("name"));
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) cardView3.getLayoutParams();
                layoutParams3.height = c0550t0.f10438K0;
                layoutParams3.width = c0550t0.f10436J0;
                cardView3.setLayoutParams(layoutParams3);
                cardView3.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(3, this, c0548s0));
                cardView3.setOnClickListener(new ViewOnClickListenerC2988c(this, 14));
                break;
        }
    }

    @Override // O1.C
    public final O1.c0 d(RecyclerView recyclerView, int i8) {
        switch (this.f10349I) {
            case 0:
                View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                C0545q0 c0545q0 = new C0545q0(viewInflate);
                c0545q0.f10386a0 = (TextView) viewInflate.findViewById(R.id.txt_movie_name);
                c0545q0.f10387b0 = (ImageView) viewInflate.findViewById(R.id.img_poster);
                c0545q0.f10388c0 = (ImageView) viewInflate.findViewById(R.id.img_fav);
                c0545q0.f10389d0 = (CardView) viewInflate.findViewById(R.id.cardview_vod);
                return c0545q0;
            case 1:
                View viewInflate2 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                C0546r0 c0546r0 = new C0546r0(viewInflate2);
                c0546r0.f10399a0 = (TextView) viewInflate2.findViewById(R.id.txt_movie_name);
                c0546r0.f10400b0 = (ImageView) viewInflate2.findViewById(R.id.img_poster);
                c0546r0.f10401c0 = (ImageView) viewInflate2.findViewById(R.id.img_fav);
                c0546r0.f10402d0 = (CardView) viewInflate2.findViewById(R.id.cardview_vod);
                return c0546r0;
            default:
                return new C0548s0(LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false));
        }
    }
}
