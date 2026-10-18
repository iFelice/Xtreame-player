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
import pe.hf.black20.util.ORPlayerLinearLayoutManager;

/* JADX INFO: renamed from: b7.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0524i0 extends O1.C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f10313I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f10314J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public HashMap f10315K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10316L;

    public C0524i0(C0550t0 c0550t0, ArrayList arrayList, int i8) {
        this.f10313I = i8;
        if (i8 == 1) {
            this.f10316L = c0550t0;
            this.f10315K = new HashMap();
            this.f10314J = arrayList;
        } else if (i8 == 2) {
            this.f10316L = c0550t0;
            this.f10315K = new HashMap();
            this.f10314J = arrayList;
        } else if (i8 != 3) {
            this.f10316L = c0550t0;
            this.f10315K = new HashMap();
            this.f10314J = arrayList;
        } else {
            this.f10316L = c0550t0;
            this.f10315K = new HashMap();
            this.f10314J = arrayList;
        }
    }

    @Override // O1.C
    public final int a() {
        switch (this.f10313I) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
        }
        return this.f10314J.size();
    }

    @Override // O1.C
    public final void c(O1.c0 c0Var, int i8) {
        int i9 = this.f10313I;
        C0550t0 c0550t0 = this.f10316L;
        int i10 = 6;
        int i11 = 0;
        int i12 = 1;
        switch (i9) {
            case 0:
                C0512e0 c0512e0 = (C0512e0) c0Var;
                HashMap map = (HashMap) this.f10314J.get(i8);
                this.f10315K = map;
                c0512e0.f10288a0.setText(((String) map.get("category_name")).toUpperCase());
                boolean zEquals = ((String) this.f10315K.get("category_id")).equals("0000001");
                RecyclerView recyclerView = c0512e0.f10289b0;
                if (zEquals) {
                    c0550t0.l();
                    recyclerView.setAdapter(new C0530k0(c0550t0, c0550t0.f10470f1));
                    recyclerView.j(new C0521h0(0));
                } else if (((String) this.f10315K.get("category_id")).equals("0000002")) {
                    while (true) {
                        int size = c0550t0.f10471g1.size();
                        ArrayList arrayList = c0550t0.f10473i1;
                        if (i11 >= size) {
                            c0550t0.l();
                            recyclerView.setAdapter(new C0524i0(c0550t0, arrayList, 2));
                            recyclerView.j(new C0521h0(1));
                        } else {
                            HashMap map2 = new HashMap();
                            map2.put("num", ((h7.j) c0550t0.f10471g1.get(i11)).f25483a);
                            map2.put("name", ((h7.j) c0550t0.f10471g1.get(i11)).f25484b);
                            map2.put("stream_type", ((h7.j) c0550t0.f10471g1.get(i11)).f25485c);
                            map2.put("stream_id", ((h7.j) c0550t0.f10471g1.get(i11)).f25486d);
                            map2.put("stream_icon", ((h7.j) c0550t0.f10471g1.get(i11)).f25487e);
                            map2.put("rating", ((h7.j) c0550t0.f10471g1.get(i11)).f25488f);
                            map2.put("rating_5based", ((h7.j) c0550t0.f10471g1.get(i11)).f25489g);
                            map2.put("added", ((h7.j) c0550t0.f10471g1.get(i11)).f25490h);
                            map2.put("category_id", ((h7.j) c0550t0.f10471g1.get(i11)).f25491i);
                            map2.put("container_extension", ((h7.j) c0550t0.f10471g1.get(i11)).f25492j);
                            map2.put("custom_sid", ((h7.j) c0550t0.f10471g1.get(i11)).f25493k);
                            map2.put("direct_source", ((h7.j) c0550t0.f10471g1.get(i11)).f25494l);
                            arrayList.add(map2);
                            i11++;
                        }
                    }
                } else if (((String) this.f10315K.get("category_id")).equals("0000003")) {
                    while (true) {
                        int size2 = c0550t0.f10472h1.size();
                        ArrayList arrayList2 = c0550t0.f10475k1;
                        if (i11 >= size2) {
                            c0550t0.l();
                            recyclerView.setAdapter(new C0536m0(c0550t0, arrayList2, 1));
                            recyclerView.j(new C0521h0(2));
                        } else {
                            HashMap map3 = new HashMap();
                            map3.put("num", ((h7.h) c0550t0.f10472h1.get(i11)).f25462a);
                            map3.put("name", ((h7.h) c0550t0.f10472h1.get(i11)).f25463b);
                            map3.put("series_id", ((h7.h) c0550t0.f10472h1.get(i11)).f25464c);
                            map3.put("cover", ((h7.h) c0550t0.f10472h1.get(i11)).f25465d);
                            map3.put("plot", ((h7.h) c0550t0.f10472h1.get(i11)).f25466e);
                            map3.put("cast", ((h7.h) c0550t0.f10472h1.get(i11)).f25467f);
                            map3.put("director", ((h7.h) c0550t0.f10472h1.get(i11)).f25468g);
                            map3.put("genre", ((h7.h) c0550t0.f10472h1.get(i11)).f25469h);
                            map3.put("releaseDate", ((h7.h) c0550t0.f10472h1.get(i11)).f25470i);
                            map3.put("last_modified", ((h7.h) c0550t0.f10472h1.get(i11)).f25471j);
                            map3.put("rating", ((h7.h) c0550t0.f10472h1.get(i11)).f25472k);
                            map3.put("rating_5based", ((h7.h) c0550t0.f10472h1.get(i11)).f25473l);
                            map3.put("backdrop_path", ((h7.h) c0550t0.f10472h1.get(i11)).f25474m);
                            map3.put("youtube_trailer", ((h7.h) c0550t0.f10472h1.get(i11)).f25475n);
                            map3.put("episode_run_time", ((h7.h) c0550t0.f10472h1.get(i11)).f25476o);
                            map3.put("category_id", ((h7.h) c0550t0.f10472h1.get(i11)).f25477p);
                            arrayList2.add(map3);
                            i11++;
                        }
                    }
                } else if (((String) this.f10315K.get("category_id")).equals("0000004")) {
                    c0550t0.l();
                    recyclerView.setAdapter(new C0524i0(c0550t0, c0550t0.f10474j1, 3));
                    recyclerView.j(new C0521h0(3));
                } else if (((String) this.f10315K.get("category_id")).equals("0000005")) {
                    c0550t0.l();
                    recyclerView.setAdapter(new C0536m0(c0550t0, c0550t0.f10476l1, 2));
                    recyclerView.j(new C0521h0(4));
                } else if (((String) this.f10315K.get("category_id")).equals("0000006")) {
                    c0550t0.l();
                    recyclerView.setAdapter(new C0524i0(c0550t0, c0550t0.f10477m1, 1));
                    recyclerView.j(new C0521h0(5));
                } else if (((String) this.f10315K.get("category_id")).equals("0000007")) {
                    c0550t0.l();
                    C0536m0 c0536m0 = new C0536m0(c0550t0, c0550t0.f10478n1, 0);
                    int i13 = C0550t0.f10419V1;
                    recyclerView.setAdapter(c0536m0);
                    recyclerView.j(new C0521h0(6));
                }
                break;
            case 1:
                C0539n0 c0539n0 = (C0539n0) c0Var;
                this.f10315K = (HashMap) this.f10314J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10315K.get("stream_icon")).l(6, 9)).b()).F(c0539n0.f10357b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10315K.get("stream_icon")).f(R.drawable.xciptv_vod)).b()).F(c0539n0.f10357b0);
                }
                c0539n0.f10358c0.setTag(this.f10315K.get("stream_id"));
                c0539n0.f10358c0.setVisibility(8);
                CardView cardView = c0539n0.f10359d0;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) cardView.getLayoutParams();
                layoutParams.height = c0550t0.f10438K0;
                layoutParams.width = c0550t0.f10436J0;
                cardView.setLayoutParams(layoutParams);
                TextView textView = c0539n0.f10356a0;
                textView.setVisibility(8);
                textView.setText((CharSequence) this.f10315K.get("name"));
                cardView.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView.setFocusable(true);
                cardView.setTag(String.valueOf(i8));
                cardView.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(4, this, c0539n0));
                cardView.setOnClickListener(new ViewOnClickListenerC2988c(this, 15));
                cardView.setOnLongClickListener(new ViewOnLongClickListenerC0533l0(this, i12));
                break;
            case 2:
                C0541o0 c0541o0 = (C0541o0) c0Var;
                this.f10315K = (HashMap) this.f10314J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10315K.get("stream_icon")).l(6, 9)).b()).F(c0541o0.f10365b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10315K.get("stream_icon")).f(R.drawable.xciptv_vod)).b()).F(c0541o0.f10365b0);
                }
                c0541o0.f10366c0.setTag(this.f10315K.get("stream_id"));
                c0541o0.f10366c0.setVisibility(8);
                CardView cardView2 = c0541o0.f10367d0;
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) cardView2.getLayoutParams();
                layoutParams2.height = c0550t0.f10438K0;
                layoutParams2.width = c0550t0.f10436J0;
                cardView2.setLayoutParams(layoutParams2);
                cardView2.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView2.setFocusable(true);
                cardView2.setTag(String.valueOf(i8));
                TextView textView2 = c0541o0.f10364a0;
                textView2.setVisibility(8);
                textView2.setText((CharSequence) this.f10315K.get("name"));
                cardView2.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(5, this, c0541o0));
                cardView2.setOnClickListener(new ViewOnClickListenerC2988c(this, 16));
                break;
            default:
                C0543p0 c0543p0 = (C0543p0) c0Var;
                this.f10315K = (HashMap) this.f10314J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10315K.get("stream_icon")).l(6, 9)).b()).F(c0543p0.f10376b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(c0550t0.l()).n((String) this.f10315K.get("stream_icon")).f(R.drawable.xciptv_vod)).b()).F(c0543p0.f10376b0);
                }
                c0543p0.f10377c0.setTag(this.f10315K.get("stream_id"));
                c0543p0.f10377c0.setVisibility(8);
                CardView cardView3 = c0543p0.f10378d0;
                FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) cardView3.getLayoutParams();
                layoutParams3.height = c0550t0.f10438K0;
                layoutParams3.width = c0550t0.f10436J0;
                cardView3.setLayoutParams(layoutParams3);
                cardView3.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView3.setFocusable(true);
                cardView3.setTag(String.valueOf(i8));
                TextView textView3 = c0543p0.f10375a0;
                textView3.setVisibility(8);
                textView3.setText((CharSequence) this.f10315K.get("name"));
                cardView3.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(i10, this, c0543p0));
                cardView3.setOnClickListener(new ViewOnClickListenerC2988c(this, 17));
                break;
        }
    }

    @Override // O1.C
    public final O1.c0 d(RecyclerView recyclerView, int i8) {
        switch (this.f10313I) {
            case 0:
                View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_cat_item, (ViewGroup) recyclerView, false);
                C0512e0 c0512e0 = new C0512e0(viewInflate);
                c0512e0.f10288a0 = (TextView) viewInflate.findViewById(R.id.txt_cat_name_ch);
                RecyclerView recyclerView2 = (RecyclerView) viewInflate.findViewById(R.id.recyler_vod);
                c0512e0.f10289b0 = recyclerView2;
                this.f10316L.l();
                recyclerView2.setLayoutManager(new ORPlayerLinearLayoutManager(0));
                return c0512e0;
            case 1:
                View viewInflate2 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                C0539n0 c0539n0 = new C0539n0(viewInflate2);
                c0539n0.f10356a0 = (TextView) viewInflate2.findViewById(R.id.txt_movie_name);
                c0539n0.f10357b0 = (ImageView) viewInflate2.findViewById(R.id.img_poster);
                c0539n0.f10358c0 = (ImageView) viewInflate2.findViewById(R.id.img_fav);
                c0539n0.f10359d0 = (CardView) viewInflate2.findViewById(R.id.cardview_vod);
                c0539n0.f10356a0 = (TextView) viewInflate2.findViewById(R.id.txt_movie_name);
                return c0539n0;
            case 2:
                View viewInflate3 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                C0541o0 c0541o0 = new C0541o0(viewInflate3);
                c0541o0.f10364a0 = (TextView) viewInflate3.findViewById(R.id.txt_movie_name);
                c0541o0.f10365b0 = (ImageView) viewInflate3.findViewById(R.id.img_poster);
                c0541o0.f10366c0 = (ImageView) viewInflate3.findViewById(R.id.img_fav);
                c0541o0.f10367d0 = (CardView) viewInflate3.findViewById(R.id.cardview_vod);
                return c0541o0;
            default:
                View viewInflate4 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                C0543p0 c0543p0 = new C0543p0(viewInflate4);
                c0543p0.f10375a0 = (TextView) viewInflate4.findViewById(R.id.txt_movie_name);
                c0543p0.f10376b0 = (ImageView) viewInflate4.findViewById(R.id.img_poster);
                c0543p0.f10377c0 = (ImageView) viewInflate4.findViewById(R.id.img_fav);
                c0543p0.f10378d0 = (CardView) viewInflate4.findViewById(R.id.cardview_vod);
                return c0543p0;
        }
    }
}
