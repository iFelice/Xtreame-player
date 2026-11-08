package b7;

import Y.AbstractComponentCallbacksC0406s;
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
import okhttp3.HttpUrl;
import p039f.ViewOnClickListenerC2988c;
import pe.hf.black20.R;
import pe.hf.black20.encryption.Encrypt;

/* JADX INFO: renamed from: b7.k0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0530k0 extends O1.C {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final ArrayList f10331J;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final /* synthetic */ AbstractComponentCallbacksC0406s f10335N;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f10330I = 1;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public HashMap f10332K = new HashMap();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f10333L = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final N2.a f10334M = new N2.a(300, true);

    public C0530k0(C0550t0 c0550t0, ArrayList arrayList) {
        this.f10335N = c0550t0;
        this.f10331J = arrayList;
    }

    @Override // O1.C
    public final int a() {
        switch (this.f10330I) {
            case 0:
                break;
        }
        return this.f10331J.size();
    }

    @Override // O1.C
    public final void c(O1.c0 c0Var, int i8) {
        Integer numValueOf = Integer.valueOf(R.drawable.logo);
        int i9 = this.f10330I;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f10335N;
        switch (i9) {
            case 0:
                C0518g0 c0518g0 = (C0518g0) c0Var;
                HashMap map = (HashMap) this.f10331J.get(i8);
                this.f10332K = map;
                if (((String) map.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(((C0550t0) abstractComponentCallbacksC0406s).l()).m(numValueOf).g()).H(G2.c.b(this.f10334M)).F(c0518g0.f10301b0);
                } else {
                    String str = (String) this.f10332K.get("stream_icon");
                    this.f10333L = str;
                    String strReplaceAll = str.replaceAll(" ", "%20");
                    this.f10333L = strReplaceAll;
                    String strReplaceAll2 = strReplaceAll.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                    this.f10333L = strReplaceAll2;
                    this.f10333L = strReplaceAll2.replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((C0550t0) abstractComponentCallbacksC0406s).l()).n(this.f10333L).l(6, 6)).b()).F(c0518g0.f10301b0);
                    } else {
                        try {
                            ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((C0550t0) abstractComponentCallbacksC0406s).l()).n(this.f10333L).g()).H(G2.c.b(this.f10334M)).f(R.drawable.logo)).F(c0518g0.f10301b0);
                            break;
                        } catch (Exception unused) {
                        }
                    }
                }
                c0518g0.f10302c0.setTag(this.f10332K.get("stream_id"));
                c0518g0.f10302c0.setVisibility(8);
                CardView cardView = c0518g0.f10303d0;
                cardView.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView.setFocusable(true);
                cardView.setTag(Integer.valueOf(i8));
                TextView textView = c0518g0.f10300a0;
                textView.setVisibility(8);
                textView.setText((CharSequence) this.f10332K.get("name"));
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) cardView.getLayoutParams();
                int i10 = ((C0550t0) abstractComponentCallbacksC0406s).f10436J0;
                layoutParams.height = i10;
                layoutParams.width = i10;
                cardView.setLayoutParams(layoutParams);
                cardView.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(0, this, c0518g0));
                cardView.setOnClickListener(new ViewOnClickListenerC2988c(this, 11));
                break;
            default:
                u1 u1Var = (u1) c0Var;
                HashMap map2 = (HashMap) this.f10331J.get(i8);
                this.f10332K = map2;
                if (((String) map2.get("stream_icon")).equals(HttpUrl.FRAGMENT_ENCODE_SET)) {
                    ((com.bumptech.glide.l) com.bumptech.glide.b.d(((A1) abstractComponentCallbacksC0406s).l()).m(numValueOf).g()).H(G2.c.b(this.f10334M)).F(u1Var.f10500b0);
                } else {
                    String str2 = (String) this.f10332K.get("stream_icon");
                    this.f10333L = str2;
                    String strReplaceAll3 = str2.replaceAll(" ", "%20");
                    this.f10333L = strReplaceAll3;
                    String strReplaceAll4 = strReplaceAll3.replaceAll("\\\\", HttpUrl.FRAGMENT_ENCODE_SET);
                    this.f10333L = strReplaceAll4;
                    this.f10333L = strReplaceAll4.replaceAll("http://:", Encrypt.a(z4.q0.q().c("ORT_PROFILE_SERVER", HttpUrl.FRAGMENT_ENCODE_SET)));
                    if (z4.q0.q().a("ORT_isDemo", false)) {
                        ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((A1) abstractComponentCallbacksC0406s).l()).n(this.f10333L).l(6, 6)).b()).F(u1Var.f10500b0);
                    } else {
                        try {
                            ((com.bumptech.glide.l) ((com.bumptech.glide.l) com.bumptech.glide.b.d(((A1) abstractComponentCallbacksC0406s).l()).n(this.f10333L).g()).H(G2.c.b(this.f10334M)).f(R.drawable.logo)).F(u1Var.f10500b0);
                            break;
                        } catch (Exception unused2) {
                        }
                    }
                }
                u1Var.f10501c0.setTag(this.f10332K.get("stream_id"));
                u1Var.f10501c0.setVisibility(8);
                CardView cardView2 = u1Var.f10502d0;
                cardView2.setBackgroundResource(R.drawable.orplayer_card_not_selected);
                cardView2.setFocusable(true);
                cardView2.setTag(Integer.valueOf(i8));
                TextView textView2 = u1Var.f10499a0;
                textView2.setVisibility(8);
                textView2.setText((CharSequence) this.f10332K.get("name"));
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) cardView2.getLayoutParams();
                int i11 = ((A1) abstractComponentCallbacksC0406s).f9961U0;
                layoutParams2.height = i11;
                layoutParams2.width = i11;
                cardView2.setLayoutParams(layoutParams2);
                cardView2.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0527j0(8, this, u1Var));
                cardView2.setOnClickListener(new ViewOnClickListenerC2988c(this, 20));
                break;
        }
    }

    @Override // O1.C
    public final O1.c0 d(RecyclerView recyclerView, int i8) {
        switch (this.f10330I) {
            case 0:
                View viewInflate = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                C0518g0 c0518g0 = new C0518g0(viewInflate);
                c0518g0.f10300a0 = (TextView) viewInflate.findViewById(R.id.txt_movie_name);
                c0518g0.f10301b0 = (ImageView) viewInflate.findViewById(R.id.img_poster);
                c0518g0.f10302c0 = (ImageView) viewInflate.findViewById(R.id.img_fav);
                c0518g0.f10303d0 = (CardView) viewInflate.findViewById(R.id.cardview_vod);
                return c0518g0;
            default:
                View viewInflate2 = LayoutInflater.from(recyclerView.getContext()).inflate(R.layout.orplayer_vod_item, (ViewGroup) recyclerView, false);
                u1 u1Var = new u1(viewInflate2);
                u1Var.f10499a0 = (TextView) viewInflate2.findViewById(R.id.txt_movie_name);
                u1Var.f10500b0 = (ImageView) viewInflate2.findViewById(R.id.img_poster);
                u1Var.f10501c0 = (ImageView) viewInflate2.findViewById(R.id.img_fav);
                u1Var.f10502d0 = (CardView) viewInflate2.findViewById(R.id.cardview_vod);
                return u1Var;
        }
    }

    public C0530k0(A1 a8, ArrayList arrayList) {
        this.f10335N = a8;
        this.f10331J = arrayList;
    }
}
