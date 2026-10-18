package b7;

import D1.C0152q;
import android.util.Log;
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

/* JADX INFO: loaded from: classes2.dex */
public final class v1 extends O1.C {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f10509I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f10510J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public HashMap f10511K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ A1 f10512L;

    public v1(A1 a8, ArrayList arrayList, int i8) {
        this.f10509I = i8;
        if (i8 != 1) {
            this.f10512L = a8;
            this.f10511K = new HashMap();
            this.f10510J = arrayList;
        } else {
            this.f10512L = a8;
            this.f10511K = new HashMap();
            this.f10510J = arrayList;
        }
    }

    @Override // O1.C
    public final int a() {
        switch (this.f10509I) {
            case 0:
                break;
        }
        return this.f10510J.size();
    }

    @Override // O1.C
    public final void c(O1.c0 c0Var, int i8) {
        int i9 = this.f10509I;
        A1 a8 = this.f10512L;
        switch (i9) {
            case 0:
                w1 w1Var = (w1) c0Var;
                this.f10511K = (HashMap) this.f10510J.get(i8);
                if (z4.q0.q().a("ORT_isDemo", false)) {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(a8.l()).n((String) this.f10511K.get("stream_icon")).l(6, 9)).b()).F(w1Var.f10519b0);
                } else {
                    ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(a8.l()).n((String) this.f10511K.get("stream_icon")).f(R.drawable.xciptv_vod)).b()).F(w1Var.f10519b0);
                }
                w1Var.f10520c0.setTag(this.f10511K.get("stream_id"));
                w1Var.f10520c0.setVisibility(8);
                CardView cardView = w1Var.f10521d0;
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) cardView.getLayoutParams();
                layoutParams.height = a8.f9962V0;
                layoutParams.width = a8.f9961U0;
                cardView.setLayoutParams(layoutParams);
                cardView.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView.setFocusable(true);
                cardView.setTag(String.valueOf(i8));
                TextView textView = w1Var.f10518a0;
                textView.setVisibility(8);
                textView.setText((CharSequence) this.f10511K.get("name"));
                cardView.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(10, this, w1Var));
                cardView.setOnClickListener(new ViewOnClickListenerC2988c(this, 22));
                break;
            default:
                y1 y1Var = (y1) c0Var;
                HashMap map = (HashMap) this.f10510J.get(i8);
                this.f10511K = map;
                y1Var.f10530a0.setText(((String) map.get("category_name")).toUpperCase());
                Log.d("XCIPTV_TAG", ((String) this.f10511K.get("category_name")).toUpperCase());
                boolean zEquals = ((String) this.f10511K.get("category_id")).equals("0000001");
                RecyclerView recyclerView = y1Var.f10531b0;
                if (zEquals) {
                    a8.l();
                    recyclerView.setAdapter(new C0530k0(a8, a8.f9953M0));
                    recyclerView.j(new x1(0));
                } else if (((String) this.f10511K.get("category_id")).equals("0000004")) {
                    a8.l();
                    recyclerView.setAdapter(new v1(a8, a8.f9954N0, 0));
                    recyclerView.j(new x1(1));
                } else if (((String) this.f10511K.get("category_id")).equals("0000005")) {
                    a8.l();
                    recyclerView.setAdapter(new C0152q(a8, a8.f9955O0));
                    recyclerView.j(new x1(2));
                }
                break;
        }
    }

    @Override // O1.C
    public final O1.c0 d(RecyclerView recyclerView, int i8) {
        switch (this.f10509I) {
            case 0:
                View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                w1 w1Var = new w1(viewInflate);
                w1Var.f10518a0 = (TextView) viewInflate.findViewById(R.id.txt_movie_name);
                w1Var.f10519b0 = (ImageView) viewInflate.findViewById(R.id.img_poster);
                w1Var.f10520c0 = (ImageView) viewInflate.findViewById(R.id.img_fav);
                w1Var.f10521d0 = (CardView) viewInflate.findViewById(R.id.cardview_vod);
                return w1Var;
            default:
                View viewInflate2 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_cat_item, (ViewGroup) recyclerView, false);
                y1 y1Var = new y1(viewInflate2);
                y1Var.f10530a0 = (TextView) viewInflate2.findViewById(R.id.txt_cat_name_ch);
                RecyclerView recyclerView2 = (RecyclerView) viewInflate2.findViewById(R.id.recyler_vod);
                y1Var.f10531b0 = recyclerView2;
                this.f10512L.l();
                recyclerView2.setLayoutManager(new ORPlayerLinearLayoutManager(0));
                return y1Var;
        }
    }
}
